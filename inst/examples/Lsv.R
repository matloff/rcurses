# 'lsv' package

# call testLsv() for a sample run with example variables.
# due to the use of strrep(), at least R 3.3.0 is required to run this example.

library(rcurses)

######################### lsv() and a test function #########################

# Displays all objects listed by ls() in a tabular format with two
# columns: name, class.
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

    # Has name of each object in user's environment
    objNames = ls(".GlobalEnv")

    # For now, print each object along with its class.
    # Keep track of the max lengths of the object names/classes, so
    # the table can be as small as possible without losing info.
    maxObjNameLength <- nchar("name")
    for (objName in objNames) {
        obj = get(objName)
        objClass = class(obj)

        # Make the row to print for this object.
        namesToPrint = c(namesToPrint, objName)
        classesToPrint = c(classesToPrint, objClass)

        # Update info on max label sizes.
        maxObjNameLength = max(maxObjNameLength, nchar(objName))
    }

    # Compute widths of first two columns. Third column's width doesn't matter.
    SPACES_BETWEEN_COLS = 1
    nameColWidth = maxObjNameLength + SPACES_BETWEEN_COLS

    # Make table labels.
    nameLabel = padStringWithTrailingSpaces("name", nameColWidth)
    labelsRow = paste(nameLabel, "class", sep="")

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
        # For this object, display name and class,
        # padding with correct amount of trailing spaces so the table looks nice.
        mvaddstr(currRowIndex, 0,
            padStringWithTrailingSpaces(namesToPrint[index], nameColWidth))
        addstr(classesToPrint[index])

        currRowIndex = currRowIndex + 1
    }
    move(currRowIndex + 1, 0)

    # Make user hit Enter to leave.
    cmd <- getstr()
}
