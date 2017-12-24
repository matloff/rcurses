# rcurses
Access the
[curses](https://en.wikipedia.org/wiki/Curses_(programming_library))
library from R.

Little known to even many programmers, the **curses** library in
Unix-family systems (Linux, Mac, etc.) forms the basis for a number of
popular text-based applications, such as the **vim** and **emacs** text
editors.

For instance, in **vim**, hitting the 'j' key causes the screen cursor to
move down one line. The proper call to the **curses** library makes this
happen.

The [ncurses](https://en.wikipedia.org/wiki/Ncurses) implementation of
the curses API is written in C, but interfaces from other languages have
been developed, Python being a prominent example.  We have now developed
our package, **rcurses**, to do the same for R. (Not all of the
**curses** library is implemented yet; let us know if you have
requests.)

## Prerequisites

At least R v3.2.0 (`R --version`).

At least ncurses v6.0.

## Installation

Within R shell:

```
install.packages('rcurses')
```

## Examples

These examples are available in the **examples** directory of the
package.

### echo

An extremely simple game.  The player keeps hitting keys, which are
echoed, while the cursor moves downward.  Upon hitting the bottom row,
cursor moves to top of next column.  Upon hitting bottom of last column,
cursor moves to top of first column.  Hit 'q' to quit.

```R
library(rcurses)

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



```

### ftns

Next, something still extremely simple but actually useful. If one does
one's debugging using the basic built-in R functions, e.g. **debug()**
and **browser()**, it may be difficult to remember which functions one
currently has in debug status. So it would be nice to have a tool to
keep track of them. In addition, it would be useful to temporarily
remove a function from debug status and then easily reinstate it. The
functions below are aimed in that direction. We call the package
**nobug**.

Consider for instance the **partools** package, which consists of over
60 user-accessible functions. Say we are debugging a **partools** app
(or **partools** itself).
We would first initialize,

```R
> nbinit()
```

Now do the equivalent of calling **debug()** on several functions:

```R
> nobug(c('funcA','funcB','funcC'))
```

The screen then looks like this:

```
      f status
1 funcA      a
2 funcB      a
3 funcC      a
ops are 'a', 'i' or 'rm', e.g. 'g rm' to remove ftn g
enter either ftn number and op, or q: 
```

We have temporarily left the R console, and the current window shows a
list of the functions being debugged. The status of all three functions
is 'a' (actively debugging) because when calling **nobug**, each function
passed in has debug called on it. We hit 'q' to return to the R console.

Later, say we want to temporarily put the function **funcA()** on
inactive status. We could call **nobug()** with no arguments, and give
a command to set the function to inactive. The screen would now look
like this:

```
      f status
1 funcA      i
2 funcB      a
3 funcC      a
ops are 'a', 'i' or 'rm', e.g. 'g rm' to remove ftn g
enter either ftn number and op, or q: 
```

## Contributing

1. fork & clone it!
2. `git checkout my_feature`
3. make your changes
4. `git commit -am 'my feature'`
5. `git push`
6. submit pull request!
