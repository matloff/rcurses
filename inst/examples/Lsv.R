library(rcurses)

determineObjNote <- function(obj, objClass) {
    defaultObjNote = ""
    return(defaultObjNote)

    if (objClass == "numeric") {
        if (length(obj) > 1) {  # if object is vector

        }
    }
}

# Displays all objects listed by ls().
lsv <- function() {
    print("name  class  notes")

    # Has name of each object in user's environment
    objNames = ls(".GlobalEnv")

    # For now, print each object along with its class.
    for (objName in objNames) {
        obj = get(objName)
        objClass = class(obj)
        if (objClass != "function") {  # don't print function names
            objNote = determineObjNote(obj, objClass)
            print(paste(objName, objClass, objNote))
        }
    }
}

a <- 3
b <- c(4,2)
c <- "love"
# ls()
lsv()
