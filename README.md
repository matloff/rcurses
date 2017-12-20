# rcurses
Access the
[curses](https://en.wikipedia.org/wiki/Curses_(programming_library))
library from R.

Little known to even many programmers, the **curses** library in
Unix-family systems (Linux, Mac, etc.) forms the basis for a number
of text-based applications, such as the **vim** and **emacs** text
editors.

For instance, in **vim**, hitting the 'j' key causes the screen cursor to
move down one line. The proper call to the **curses** library makes this
happen.

The [ncurses](https://en.wikipedia.org/wiki/Ncurses) implementation of
the curses API is written in C, but interfaces from other languages have
been developed, Python being a prominent example. Aiming toward building
an advanced R debugging tool, we have developed our package, **rcurses**,
to do the same for R. (Not all of the **curses** library is implemented
yet; let us know if you have requests.)

## Prerequisites

At least R v3.2.0 (`R --version`).

At least ncurses v6.0.

## Installation

Within R shell:

```
install.packages('rcurses')
```

## Examples

### top

The UNIX '[top](https://en.wikipedia.org/wiki/Top_(software))' command
displays a list of running processes in real-time. The UNIX
'[ps](https://en.wikipedia.org/wiki/Ps_(Unix))' command is very similar,
just that the list of processes and their statuses don't update in
real-time.

The top.R example builds a limited but functional mock of the UNIX 'top'
command by repeatedly querying the UNIX 'ps' command and using that as the
input to a constantly-refreshing text user interface implemented using
rcurses.

```R
# imitates subset of unix 'top' command 
top <- function() {
    # setup rcurses stuff
    win <- rcurses.initscr()
    rcurses.cbreak()
    rcurses.noecho()

    # start loop in background for updating top content via ps
    mcparallel(getAndDrawProcessesLoop(win))

    # check for q to stop program
    while (rcurses.getch(win) != 'q') {  }

    # close out rcurses stuff
    rcurses.echo()
    rcurses.nocbreak()
    rcurses.endwin()
    return(NULL)
}

# fetch and draw top every second
getAndDrawProcessesLoop <- function(window) {
    while (1) {
        lastRefresh <- Sys.time()
        processes <- getProcesses()
        drawProcesses(window,processes)
        while (Sys.time() - lastRefresh < 1) {}
    }
    return(NULL)
}

# run ps and put process data into store
getProcesses <- function() {
    processes <- list()
    psLines <- system('ps -axrwwo pid,%cpu,time,%mem,state,user,comm',intern=TRUE)[-(1)]
    for (line in psLines) {

        # use regular expression to get groups from ps output
        pattern <- '^[ ]*([^ ]+)[ ]+([^ ]+)[ ]+([^ ]+)[ ]+([^ ]+)+[ ]+([^ ]+)[ ]+([^ ]+)[ ]+(.*)$'

        # store each group as a substring
        process <- list()
        process$pid <- gsub(pattern,'\\1',line)
        process$command <- gsub(pattern,'\\7',line)
        if (substr(process$command,1,1) == '/') {
            process$command <- gsub('^.*/([^/]+)$','\\1',process$command)
        }
        process$pcpu <- gsub(pattern,'\\2',line)
        process$time <- gsub(pattern,'\\3',line)
        process$pmem <- gsub(pattern,'\\4',line)
        process$state <- gsub(pattern,'\\5',line)
        process$user <- gsub(pattern,'\\6',line)

        processes <- append(processes,list(process))
    }
    return(processes)
}

# use rcurses to paint process data from store
drawProcesses <- function(window,processes) {
    if (typeof(window) != 'externalptr' || !is.list(processes)) { return(NULL) }
    
    # wipe screen and paint number of processes and column headers
    rcurses.clear(window)
    rcurses.addstr(window,paste0('Processes: ',toString(length(processes)),' total'),0,0)
    rcurses.addstr(window,'PID    COMMAND          %CPU  TIME     %MEM STATE USER',2,0)
    
    # only display 'top' few processes sorted by cpu usage
    rcurses.update_lines_cols()
    maxProcesses <- min(rcurses.LINES - 3,length(processes))
    
    # paint each process as a string on its own line
    for (i in 1:maxProcesses) {
        p <- processes[[i]]
        pid <- paste0(substr(p$pid,1,6),strrep(' ',max(0,6 - nchar(p$pid))))
        command <- paste0(substr(p$command,1,16),strrep(' ',max(0,16 - nchar(p$command))))
        pcpu <- paste0(substr(p$pcpu,1,5),strrep(' ',max(0,5 - nchar(p$pcpu))))
        time <- paste0(substr(p$time,1,8),strrep(' ',max(0,8 - nchar(p$time))))
        pmem <- paste0(substr(p$pmem,1,4),strrep(' ',max(0,4 - nchar(p$pmem))))
        state <- paste0(substr(p$state,1,5),strrep(' ',max(0,5 - nchar(p$state))))
        user <- paste0(substr(p$user,1,16),strrep(' ',max(0,16 - nchar(p$user))))
        processString <- paste(pid,command,pcpu,time,pmem,state,user,sep=' ')
        rcurses.addstr(window,processString,i + 2,0)
    }
    rcurses.refresh(window)
    return(NULL)
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
