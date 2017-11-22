
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
      data.frame(f=character(0),status=character(0), stringsAsFactors=FALSE)
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
         tmp <- data.frame(f=fname,status='a', stringsAsFactors=FALSE)
         cmd <- paste('debug(',fname,')',sep='')
         docmd(cmd)
         nblist <- rbind(nblist,tmp)
      }
      nbenv$nblist <<- nblist
   }
   initscr()
   cbreak()
   while (TRUE) {
      clear()
      refresh()
      # print the debugged list
      currRowIndex = 0
      if (nrow(nbenv$nblist) == 0) {
         mvaddstr(currRowIndex, 0, 'nblist empty')
         break
      }
      debuggedList = capture.output(nbenv$nblist)
      for (row in debuggedList) {
         mvaddstr(currRowIndex, 0, row)
         currRowIndex = currRowIndex + 1
      }

      # get user input
      mvaddstr(currRowIndex, 0, 
         "ops are 'a', 'i' or 'rm', e.g. 'g rm' to remove ftn g")
      mvaddstr(currRowIndex + 1, 0, 'enter either ftn number and op, or q: ')
      cmd <- getstr()
      if (cmd == 'q') break
      tmp <- strsplit(cmd,' ')[[1]]
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
         cmd <- paste('debug(',ftnname,')', sep='')
         docmd(cmd)
      }
   }

   nocbreak()
   endwin()

   return()
}

docmd <- function(toexec) eval(parse(text=toexec))

######################### for testing ##################################

test <- function(x) {
   f(x)
}

f <- function(x) {
   x <- x + 1
   g(x^2)
}

g <- function(y) {
   y <- y - 2
   y^3
}
