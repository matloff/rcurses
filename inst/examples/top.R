library(rcurses)
library(parallel)
library(tools)

# imitates subset of unix 'top' command 
top <- function() {
    # setup rcurses stuff
    win <- rcurses.initscr()
    rcurses.cbreak()
    rcurses.noecho()

    # start loop in background for updating top content via ps
    loopProcess <- mcparallel(getAndDrawProcessesLoop(win))

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
    macOSPsCall <- 'ps -axrwwo pid,%cpu,time,%mem,state,user,comm'
    linuxPsCall <- 'ps -axwwo pid,%cpu,time,%mem,state,user,comm --sort -%cpu'
    psCall <- ''
    if (Sys.info()[['sysname']] == 'Darwin') { psCall <- macOSPsCall }
    else if (Sys.info()[['sysname']] == 'Linux') { psCall <- linuxPsCall }
    psLines <- system(psCall,intern=TRUE)[-(1)]
    for (line in psLines) {

        # use regular expression to get groups from ps output
        pattern <- 
           '^[ ]*([^ ]+)[ ]+([^ ]+)[ ]+([^ ]+)[ ]+([^ ]+)+[ ]+([^ ]+)[ ]+([^ ]+)[ ]+(.*)$'

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
    rcurses.addstr(window,
       paste0('Processes: ',toString(length(processes)),' total'),0,0)
    rcurses.addstr(window,
       'PID    COMMAND          %CPU  TIME     %MEM STATE USER',2,0)
    
    # only display 'top' few processes sorted by cpu usage
    rcurses.update_lines_cols()
    maxProcesses <- min(rcurses.LINES - 3,length(processes))
    
    # paint each process as a string on its own line
    for (i in 1:maxProcesses) {
        p <- processes[[i]]
        pid <- paste0(substr(p$pid,1,6),strrep(' ',max(0,6 - nchar(p$pid))))
        command <- paste0(substr(p$command,1,16),
           strrep(' ',max(0,16 - nchar(p$command))))
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

# test usage of top
testTop <- function() {
    top()
    return(NULL)
}
