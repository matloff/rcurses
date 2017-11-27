library(rcurses)

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

runcmd <- function() {
    res = system('ps ax', intern=TRUE)
    # Res is an array where each line is a result of ps ax
    return(res)
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
    for (count in (length(res)-nrows):length(res)+1) {
        d <<- 0
        r <<- r + 1
        line = res[count]
        line_split = strsplit(line, "")[[1]]

        col = 0
        for (c in line_split) {
            draw(c)
            col = col + 1
            if (col == ncols) {
                r <<- r - 1 # negate wrap
                break
            }
        }
    }
    # why is d getting cleared?
}

game <- function() {
    start()
    nrows <<- LINES()  # number of rows in the screen
    ncols <<- COLS()  # number of column in the screen
    clear()  # set the screen to all blanks
    refresh()  # render the changes
    # r, c will be current screen row, column of cursor
    psax()

    print(r)
    print(d)
    r <<- r - 1
    d <<- d - 1
    while (TRUE) {
        ch <- getch()  # read typed character (numeric code)
        #print(d)
        if (ch == 'k') {
            r <<- r - 1
            if (r < 0) 
                r <<- 0
            move(r, d)
        }
        else if (ch == 'j') {
            r <<- r + 1
            if (r > nrows) {
                r <<- nrows
            }
            move(r, d)
        }
            
        if (ch == 'q')  # game over
            break
        #draw(ch)  # draw the character
    }

    # now restore normal screen status
    restore()
}
