test <- function() {
    library(rcurses)
    win <- rcurses.initscr()
    if (typeof(win) != 'externalptr') { return(FALSE) }
    result <- rcurses.addch(win,'a',5,4)
    if (result != rcurses.OK) { return(FALSE) }
    result <- rcurses.refresh(win)
    if (result != rcurses.OK) { return(FALSE) }
    result <- rcurses.endwin()
    if (result != rcurses.OK) { return(FALSE) }
    return(TRUE)
}

test()
