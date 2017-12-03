library(rcurses)

pids <<- list()

start <- function() {
    initscr()  # initialize curses window
    cbreak()  # typed characters submitted immediately, no wait for Enter
    noecho()  # typed characters are not shown on the screen
}

draw = function(dc) {
    move(r, d)  # move the cursor to the specified row, col in screen
    delch()  # delete the character currently there
    insch(dc)  # insert the new character
    refresh()  # update the changes on the screen
    # move to the right
    d <<- d + 1  # right one column
    if (d == ncols) {  # if past bottom, go to top
        d <<- 0
        r <<- r + 1
        if (r == nrows)  # if past bottom edge, go to top
            r <<- 0
    }
}

delline <- function() {
    move(r, d)
    for (i in 1:ncols) {
        delch()
        d <<- d + 1
    }
    d <<- 0
    move(r, 0)
    refresh()
}

runcmd <- function() {
    res = system('ps ax', intern=TRUE)
    # Res is an array where each line is a result of ps ax
    return(res)
}

rerun <- function() {
    nrows <<- LINES()  # number of rows in the screen
    ncols <<- COLS()  # number of column in the screen
    clear()  # set the screen to all blanks
    psax()
    d <<- 0
    refresh()
}

restore <- function() {
    echo()
    nocbreak()
    endwin() # exit curses app
}

psax <- function() {
    res = runcmd()

    r <<- -1  # top row of screen
    d <<- 0  # leftmost column of screen

    # Draw the result of ps ax onto the screen
    for (count in (length(res)-nrows+1):length(res)) {
        d <<- 0
        r <<- r + 1
        line = res[count]
        line_split = strsplit(line, "")[[1]]

        col = 0

        # Save the pid of each row
        pids[r] <<- strsplit(trimws(line), " ")[[1]][1]

        for (c in line_split) {
            draw(c)
            col = col + 1
            if (col == ncols) {
                r <<- r - 1 # negate wrap
                break
            }
        }
    }
}

game <- function() {
    start()
    nrows <<- LINES()  # number of rows in the screen
    ncols <<- COLS()  # number of column in the screen
    clear()  # set the screen to all blanks
    # r, c will be current screen row, column of cursor
    psax()

    d <<- 0
    refresh()

    while (TRUE) {
        ch <- getch()  # read typed character (numeric code)

        # move up
        if (ch == 'u') {
            r <<- r - 1
            if (r < 0) 
                r <<- 0
            move(r, d)
        }

        # move down
        else if (ch == 'd') {
            r <<- r + 1
            if (r > nrows) {
                r <<- nrows
            }
            move(r, d)
        }

        # kill a process
        else if (ch == 'k') {
            pid = pids[r]
            res = system(paste("kill ", pid), intern=FALSE)
            delline()
        }
        else if (ch == 'r') {
            rerun()
        }
            
        # end psax
        else if (ch == 'q') 
            break
    }

    # now restore normal screen status
    restore()
}
