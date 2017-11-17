
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
# nobug(fname):
# 
#    debug() is called on the function, specified as a quoted string, and
#    is added to the debugged list 
# 
# nobug(fname=NULL):

#    if fname, specified as a quoted string, is not NULL, then debug()
#    is invoked on the function, and the function is added to the
#    debugged list

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

nbinit <- function() {
   nbenv <<- new.env()
   nbenv$nblist <- data.frame(f=character(0),status=character(0), stringsAsFactors=FALSE)
}

nbprint <- function() {
   if (nrow(nbenv$nblist) == 0) {
      print('nblist empty')
      return()
   }
   print(nbenv$nblist)
}

nobug <- function(fname=NULL) {
   nblist <- nbenv$nblist
   if (nrow(nblist) == 0 && is.null(fname)) {
      print('nblist empty')
      return()
   }
   if (nrow(nblist) > 0) {
      # refresh debug status for active functions
      for (i in 1:nrow(nblist)) {
         if (nblist[i,2] == 'a') {
            cmd <- paste('debug(',nblist[i,1],')',sep='')
            docmd(cmd)
         }
      }
   }
   if (!is.null(fname)) {
      tmp <- data.frame(f=fname,status='a', stringsAsFactors=FALSE)
      if (fname %in% nblist$f) stop('function already in debugged list')
      cmd <- paste('debug(',fname,')',sep='')
      docmd(cmd)
      nblist <- rbind(nblist,tmp)
      nbenv$nblist <<- nblist
   }
   while(TRUE) {
      nbprint()
      print("ops are 'a', 'i' or 'rm', e.g. 'g rm' to remove ftn g") 
      cmd <- readline('enter either ftn number and op, or q: ')
      if (cmd == 'q') return()
      tmp <- strsplit(cmd,' ')[[1]]
      ftnname <- tmp[1]
      op <- tmp[2]
      j <- which(nblist[,1] == ftnname)
      if (op == 'rm') {
         nbenv$nblist <<- nblist[-j,]
         return()
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
