
# translation of the C curses example found in section 3.1 of 
# http://heather.cs.ucdavis.edu/~matloff/UnixAndC/CLanguage/Curses.pdf

# simple curses example; keeps drawing the inputted characters, in columns
# downward, shifting rightward when the last row is reached, and
# wrapping around when the rightmost column is reached

library(rcurses)

# draw the specified character dc
draw = function(dc) {
    pos <- getyx()
    rw <- pos[1]
    cl <- pos[2]
    delch()  # delete the character currently there
    insch(dc)  # insert the new character
    rw <- rw + 1  # down one column
    if (rw == nrows) {  # if past bottom, go to top
        rw <- 0
        cl <- cl + 1
        if (cl == ncols)  # if past right edge, go to left
            cl <- 0
    }
    move(rw, cl)  # move the cursor to the specified row, col in screen
    refresh()  # update the changes on the screen
}

game <- function() {
    initscr()  # initialize curses window
    cbreak()  # typed characters submitted immediately, no wait for Enter
    noecho()  # typed characters are not shown on the screen
    nrows <<- LINES()  # number of rows in the screen
    ncols <<- COLS()  # number of column in the screen
    clear()  # set the screen to all blanks
    refresh()  # render the changes

    while (TRUE) {
        d <- getch()  # read typed character (numeric code)
        if (d == 'q')  # game over
            break
        draw(d)  # draw the character
    }

    # now restore normal screen status
    echo()
    nocbreak()
    endwin()  # exit curses app
}

