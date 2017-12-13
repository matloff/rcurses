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

The code follows, in which the comments should explain all:

```R
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

We have temporarily left the R console, and the current window shows a
list of the functions being debugged.  We hit 'q' to return to the R
console, with the screen now being

Later, say we want to temporarily put the function **getnumdigs()** on
inactive status.  We could call **nobug()** with no arguments, and give
a command to set the function to inactive.  The screen would now look
like this:
