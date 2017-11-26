# 'lsv' package

# call testLsv() for a sample run with example variables.

library(rcurses)

######################### lsv() and a test function #########################

# Displays all non-functions listed by ls() in a tabular format with three
# columns: name, class, and notes.
lsv <- function() {
    initscr()
    cbreak()
    noecho()

    displayObjects()

    echo()
    nocbreak()
    endwin()
    return()
}

# Use if you want to try lsv() with sample variables.
testLsv <- function() {
    a <<- 3
    b <<- c(4,2)
    varWithLongName <<- "love"
    junk <<- list(someName=c(3,5), someOtherName=2, yetAnotherName=8)
    carsCopy <<- cars
    lsv()
}

######################### helper functions ##################################

determineObjNote <- function(obj, objClass) {
    defaultObjNote = ""

    if (objClass == "numeric") {
        if (length(obj) > 1) {  # if object is vector
            return(paste("length: ", as.character(length(obj)), sep=""))
        }
    } else if (objClass == "list") {
        listNames = paste(names(obj), collapse=' ')
        return(paste("list names: ", listNames, sep=""))
    } else if (objClass == "data.frame") {
        colNames = paste(names(obj), collapse=' ')
        return(paste("col names: ", colNames, sep=""))
    }

    return(defaultObjNote)
}

# Assumes nchar(string) <= desiredStringLength.
# e.g. padStringWithTrailingSpaces("hello", 8) returns "hello   "
padStringWithTrailingSpaces <- function(string, desiredStringLength) {
    numSpaces = desiredStringLength - nchar(string)
    theSpaces = strrep(" ", numSpaces)
    return(paste(string, theSpaces, sep=""))
}

displayObjects <- function() {
    namesToPrint = character(0)
    classesToPrint = character(0)
    notesToPrint = character(0)

    # Has name of each object in user's environment
    objNames = ls(".GlobalEnv")

    # For now, print each object along with its class.
    # Keep track of the max lengths of the object names/classes, so
    # the table can be as small as possible without losing info.
    maxObjNameLength <- nchar("name")
    maxClassNameLength <- nchar("class")
    for (objName in objNames) {
        obj = get(objName)
        objClass = class(obj)
        if (objClass != "function") {  # don't print function names
            objNote = determineObjNote(obj, objClass)

            # Make the row to print for this object.
            namesToPrint = c(namesToPrint, objName)
            classesToPrint = c(classesToPrint, objClass)
            notesToPrint = c(notesToPrint, objNote)

            # Update info on max label sizes.
            maxObjNameLength = max(maxObjNameLength, nchar(objName))
            maxClassNameLength = max(maxClassNameLength, nchar(objClass))
        }
    }

    # If we didn't find any non-functions, stop now. Or the for loop will cause crash.
    if (length(namesToPrint) == 0) {
        return()
    }

    # Compute widths of first two columns. Third column's width doesn't matter.
    SPACES_BETWEEN_COLS = 1
    nameColWidth = maxObjNameLength + SPACES_BETWEEN_COLS
    classColWidth = maxClassNameLength + SPACES_BETWEEN_COLS

    # Make table labels.
    nameLabel = padStringWithTrailingSpaces("name", nameColWidth)
    classLabel = padStringWithTrailingSpaces("class", classColWidth)
    labelsRow = paste(nameLabel, classLabel, "notes", sep="")

    # Display the table rows using rcurses.
    clear()
    refresh()
    # Display table header.
    currRowIndex = 0
    mvaddstr(currRowIndex, 0, "[Hit Enter to exit.]")
    currRowIndex = currRowIndex + 1
    mvaddstr(currRowIndex, 0, labelsRow)
    currRowIndex = currRowIndex + 1
    # Display the variable rows.
    for (index in 1:length(namesToPrint)) {
        # For this object, display name, class, and note (if any),
        # padding with correct amount of trailing spaces so the table looks nice.
        mvaddstr(currRowIndex, 0,
            padStringWithTrailingSpaces(namesToPrint[index], nameColWidth))
        addstr(padStringWithTrailingSpaces(classesToPrint[index], classColWidth))
        addstr(notesToPrint[index])

        currRowIndex = currRowIndex + 1
    }
    move(currRowIndex + 1, 0)

    # Make user hit Enter to leave.
    cmd <- getstr()
}
