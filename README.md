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

Some illustrations of the use of the package are presented below.  The
first is a simple toy example, a very rudimentary game.  One keeps
typing keys, which appear on the screen, downward within a column.  When
the bottom of a column is reach, the cursor goes to the top of the next
column, wrapping around when the rightmost column is reached.  Here is a
screenshot:

<img src="vignettes/GamePic.png" alt="n1" width="500"/>

The code follows, in which the comments should explain all:

```R
library(rcurses)

# draw the specified character dc
draw = function(dc) {
    pos <- getyx()  # get current row, column of the cursor
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
        d <- getch()  # read typed character 
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

Next, something still extremely simple but actually useful.  If one does
one's debugging using the basic built-in R functions, e.g. **debug()**
and **browser()**, it may be difficult to remember which functions one
currently has in debug status.  So it would be nice to have a tool to
keep track of them.  In addition, it would be useful to temporarily
remove a function from debug status and then easily reinstate it.  The
functions below are aimed in that direction.  We call the package
**nobug**.

Consider for instance the **partools** package, which consists of over
60 user-accessible functions.  Say we are debugging a **partools** app
(or **partools** itself).
We would first initialize,

```R
> nbinit()
```

Now do the equivalent of calling **debug()** on several functions:a

```R
> nobug(c('filegetrows','getnumdigs','fileagg'))
```
The screen then looks like this:

<img src="vignettes/Nobug.png" alt="n1" width="500"/>

We have temporarily left the R console, and the current window shows a
list of the functions being debugged.  We hit 'q' to return to the R
console, with the screen now being

Later, say we want to temporarily put the function **getnumdigs()** on
inactive status.  We could call **nobug()** with no arguments, and give
a command to set the function to inactive.  The screen would now look
like this:

<img src="vignettes/Nobug1.png" alt="n1" width="500"/>


