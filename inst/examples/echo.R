# translation of the C curses example found in section 3.1 of
# http://heather.cs.ucdavis.edu/~matloff/UnixAndC/CLanguage/Curses.pdf

# simple curses example; keeps drawing the inputted characters, in columns
# downward, shifting rightward when the last row is reached, and
# wrapping around when the rightmost column is reached

library(rcurses)

# prints to terminal what you type by top-to-bottom then left-to-right
echo <- function() {
    # setup rcurses stuff
    win <- rcurses.initscr()  # initialize curses window
    rcurses.cbreak()  # typed characters submitted immediately, no wait for Enter
    rcurses.noecho()  # typed characters are not shown on the screen

    # start screen off blank
    rcurses.clear(win)  # set the screen to all blanks
    rcurses.refresh(win)  # render the changes

    # initialize cursor position
    y <- 0
    x <- 0
    rcurses.move(win,y,x)

    # loop forever waiting for input
    while ((ch <- rcurses.getch(win)) != 'q') {
        paintCharacter(win,ch)  # draw the character
        y <- y + 1  # down one column
        if (y == rcurses.LINES) {  # if past bottom, go to top
            y <- 0
            x <- x + 1
            if (x == rcurses.COLS) {  # if past right edge, go to left
                x <- 0
            }
        }
        rcurses.move(win,y,x)  # move the cursor to the specified row, col in screen
    }

    # now restore normal screen status
    rcurses.echo()
    rcurses.nocbreak()
    rcurses.endwin()
}

# draw the specified character ch
paintCharacter <- function(window,ch) {
    rcurses.delch(window)  # delete the character currently there
    rcurses.insch(window,ch)  # insert the new character
    rcurses.refresh(window)  # update the changes on the screen
}

# test usage of echo
testEcho <- function() {
    echo()
}
