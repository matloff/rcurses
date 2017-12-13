# 'nobug' package

# code to keep track of which functions are currently being debugged,
# meaning that debug() has been called on them; a function can be
# temporarily removed from debug status, then later added; calling the
# main function, nobug(), will also refresh the debug status of
# functions on the list after they are reloaded via source()

# call forms:

# nbinit():
#
#    initializes the debugged list as a data frame nblist in a
#    global environment nbenv
#
# nobug(fnames=NULL):
#
#    if fnames, specified as a character vector, is not NULL, then
#    debug() is invoked on the function, and the functions are added
#    to the debugged list

#    display all functions and their debug status
#
#    user is then asked to give a command:
#
#       j rm:  remove function on line j from the debugged list
#       j i:  undebug function j, but keep it in the debugged list
#       j a:  reactivate function j's debug mode
#       q:  exit this display of the debugged list
#
#       the user is repeatedly asked for input until he/she hits q

# The debugged list is a 2-column data frame, with the function name in
# the first column and the status -- 'a' for active, 'i' for inactive --
# in the second column.

# Whenever nobug() is called, debug() is called on all active functions in
# the debugged list, in case they have changed.

library(rcurses)

nbinit <- function() {
   nbenv <<- new.env()
   nbenv$nblist <<-
      data.frame(f=character(0),status=character(0),stringsAsFactors=FALSE)
   return(NULL)
}

nobug <- function(fnames=NULL) {
   nblist <- nbenv$nblist
   if (nrow(nblist) == 0 && is.null(fnames)) {
      print('nblist empty')
      return()
   }
   # refresh debug status for active functions
   if (nrow(nblist) > 0) {
      for (i in 1:nrow(nblist)) {
         if (nblist[i,2] == 'a') {
            cmd <- paste('debug(',nblist[i,1],')',sep='')
            docmd(cmd)
         }
      }
   }
   # add the given function names to the list, mark them for debugging
   if (!is.null(fnames)) {
      for (fname in fnames) {
         if (fname %in% nblist$f) stop('function already in debugged list')
         tmp <- data.frame(f=fname,status='a',stringsAsFactors=FALSE)
         cmd <- paste('debug(',fname,')',sep='')
         docmd(cmd)
         nblist <- rbind(nblist,tmp)
      }
      nbenv$nblist <<- nblist
   }
   win <- rcurses.initscr()
   rcurses.cbreak()
   while (TRUE) {
      rcurses.clear(win)
      rcurses.refresh(win)
      # print the debugged list
      currRowIndex <- 0
      if (nrow(nbenv$nblist) == 0) {
         rcurses.addstr(win,'nblist empty',currRowIndex,0,)
         break
      }
      debuggedList <- capture.output(nbenv$nblist)
      for (row in debuggedList) {
         rcurses.addstr(win,row,currRowIndex,0)
         currRowIndex <- currRowIndex + 1
      }

      # get user input
      promptA <- 'ops are \'a\', \'i\' or \'rm\', e.g. \'g rm\' to remove ftn g'
      promptB <- 'enter either ftn number and op, or q: '
      rcurses.addstr(win,promptA,currRowIndex,0)
      rcurses.addstr(win,promptB,currRowIndex + 1,0)
      cmd <- rcurses.getstr(win)
      if (cmd == 'q') break
      tmp <- strsplit(cmd,' ')[[1]]
      if (length(tmp) < 2) { next }
      op <- tmp[2]
      # which function?
      ftnnum <- as.numeric(tmp[1])
      ## j <- which(nblist[,1] == ftnname)
      j <- which(rownames(nblist) == ftnnum)
      ftnname <- nblist[j,1]
      if (op == 'rm') {
         nbenv$nblist <<- nblist[-j,]
         break
      }
      nbenv$nblist[j,2] <- op
      if (op == 'i') {
         cmd <- paste('undebug(',ftnname,')',sep='')
         docmd(cmd)
      }
      if (op == 'a') {
         cmd <- paste('debug(',ftnname,')',sep='')
         docmd(cmd)
      }
   }

   rcurses.nocbreak()
   rcurses.endwin()
   return(NULL)
}

docmd <- function(toexec) {
   eval(parse(text=toexec))
   return(NULL)
}

######################### for testing ##################################

funcA <- function(x) {
   newX <- x * 2
   return(newX)
}

funcB <- function(x) {
   newX <- x + 1
   return(newX)
}

funcC <- function(x) {
   newX <- (x - 1) ^ 3
   return(newX)
}

testFtns <- function() {
   nbinit()
   nobug(c('funcA','funcB','funcC'))
   return(NULL)
}

testFtns()
