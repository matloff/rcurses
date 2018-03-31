library(rcurses)
library(parallel)
library(tools)

# lists and updates all R processes

rprocs <- function(rexec='/usr/lib/R/bin/exec/R') {
    # setup rcurses stuff
    win <- rcurses.initscr()
    rcurses.cbreak()
    rcurses.noecho()

    loopProcess <- mcparallel(getAndDrawProcessesLoop(win,rexec))

    # check for q to stop program
    while (rcurses.getch(win) != 'q') {  }
    pskill(loopProcess$pid)

    # close out rcurses stuff
    rcurses.echo()
    rcurses.nocbreak()
    rcurses.endwin()
    return(NULL)
}

# fetch and draw top every second
getAndDrawProcessesLoop <- function(window,rexec) {
    while (1) {
        lastRefresh <- Sys.time()
        processes <- getProcesses(rexec)
        drawProcesses(window,processes)
        while (Sys.time() - lastRefresh < 1) {}
    }
    return(NULL)
}

# run ps and put process data into store
getProcesses <- function(rexec) {
    processes <- list()
    psLines <- system('ps -ax',intern=TRUE)
    rLineNums <- grep(rexec,psLines)
    psLines[c(1,rLineNums)]
}

# use rcurses to paint process data from store
drawProcesses <- function(window,processes) {
    # wipe screen and paint number of processes and column headers
    rcurses.clear(window)
    # paint each process as a string on its own line
    for (i in 1:length(processes)) {
        rcurses.addstr(window,processes[i],i-1,0)
    }
    rcurses.refresh(window)
    return(NULL)
}

# test usage of rprocs
testRprocs <- function() {
    rprocs()
    return(NULL)
}
