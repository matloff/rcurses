library(rcurses)

pids <<- list()

psax <- function() {
    win <- start()
    nrows <<- rcurses.LINES()  # number of rows in the screen
    ncols <<- rcurses.COLS()  # number of column in the screen
    rcurses.clear(win)  # set the screen to all blanks
    # r, c will be current screen row, column of cursor
    psaxcore(win)

    d <<- 0
    rcurses.refresh(win)

    while (TRUE) {
        ch <- rcurses.getch(win)  # read typed character (numeric code)

        # move up
        if (ch == 'u') {
            r <<- r - 1
            if (r < 0)
                r <<- 0
            rcurses.move(win,r,d)
        }

        # move down
        else if (ch == 'd') {
            r <<- r + 1
            if (r > nrows - 1) {
                r <<- nrows - 1
            }
            rcurses.move(win,r,d)
        }

        # kill a process
        else if (ch == 'k') {
            pid <- pids[r]
            write(capture.output(pid))
            res <- system(paste("kill ",pid),intern=FALSE)
            delline(win)
        }
        else if (ch == 'r') {
            rerun(win)
        }

        # user quits
        else if (ch == 'q')
            break
    }

    # now restore normal screen status
    restore()
}

start <- function() {
    win <- rcurses.initscr()  # initialize curses window
    rcurses.cbreak()  # typed characters submitted immediately, no wait for Enter
    rcurses.noecho()  # typed characters are not shown on the screen
    return(win)
}

psaxcore <- function(window) {
    res <- runcmd()

    r <<- -1  # top row of screen
    d <<- 0  # leftmost column of screen

    # Draw the result of ps ax onto the screen
    for (count in (length(res) - nrows + 1):length(res)) {
        d <<- 0
        r <<- r + 1
        line <- res[count]
        line_split <- strsplit(line,"")[[1]]

        col <- 0

        # Save the pid of each row
        pids[r] <<- strsplit(trimws(line)," ")[[1]][1]

        for (c in line_split) {
            draw(window,c)
            col <- col + 1
            if (col == ncols) {
                r <<- r - 1 # negate wrap
                break
            }
        }
    }
}

runcmd <- function() {
    res <- system('ps ax',intern=TRUE)
    # Res is an array where each line is a result of ps ax
    return(res)
}

draw <- function(window,dc) {
    rcurses.move(window,r,d)  # move the cursor to the specified row, col in screen
    rcurses.delch(window)  # delete the character currently there
    rcurses.insch(window,dc)  # insert the new character
    rcurses.refresh(window)  # update the changes on the screen
    # move to the right
    d <<- d + 1  # right one column
    if (d == ncols) {  # if past bottom, go to top
        d <<- 0
        r <<- r + 1
        if (r == nrows)  # if past bottom edge, go to top
            r <<- 0
    }
}

delline <- function(window) {
    rcurses.move(window,r,d)
    for (i in 1:ncols) {
        rcurses.delch(window)
        d <<- d + 1
    }
    d <<- 0
    rcurses.move(window,r,0)
    rcurses.refresh(window)
}

rerun <- function(window) {
    nrows <<- rcurses.LINES()  # number of rows in the screen
    ncols <<- rcurses.COLS()  # number of column in the screen
    rcurses.clear(window)  # set the screen to all blanks
    psaxcore(window)
    d <<- 0
    rcurses.refresh(window)
}

restore <- function() {
    rcurses.echo()
    rcurses.nocbreak()
    rcurses.endwin() # exit curses app
}

testPsax <- function() {
    psax()
}
