# rcurses
Access to the Unix 'curses' Library from R.

Little known to even many programmers, the **curses** library in
Unix-family systems (Linux, Mac, etc.) forms the basis for a number of
text-based applications, such as the **vim** and **emacs** text editors.

For instance, in **vim**, hitting the 'j' key causes the screen cursor
to move down one line.  The proper call to the **curses** library makes
this happen.

The library is written in C, but interfaces from other languages have
been developed, Python being a prominent example.  Aiming toward
building an advanced R debugging tool, we have developed our package,
**rcurses**, to do the same for R.  (Not all of the **curses** library is
implemented; let us know if you have requests.)

Below is a simple toy example.  The comments should explain all.

```R
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

```

