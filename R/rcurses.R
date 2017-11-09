# Avoid harding file path or file extension.
dyn.load(system.file(paste0("libs/rcurses", .Platform$dynlib.ext), package="rcurses"))

# get stuff from both dropbox folders, once have convention

initscr <- function() {
    .C('rc_initscr')
}

endwin <- function() {
    .C('rc_endwin')
}

cbreak <- function() {
    .C('rc_cbreak')
}

nocbreak <- function() {
    .C('rc_nocbreak')
}

noecho  <- function() {
    .C('rc_noecho')
}

echo <- function() {
    .C('rc_echo')
}

clear <- function() {
    .C('rc_clear')
}

move <- function(row, column) {
    .C('rc_move', as.integer(row), as.integer(column))
}

addch <- function(ch) {
    .C('rc_addch', as.character(ch))
}

insch <- function(ch) {
    .C('rc_insch', as.character(ch))
}

mvaddstr <- function(row, column, string) {
    .C('rc_mvaddstr', as.integer(row), as.integer(column), as.character(string))
}

MAX_STRING_LENGTH = 1024
getstr <- function() {
    return(.C('rc_getstr', result=character(MAX_STRING_LENGTH))$result)
}

refresh <- function() {
    .C('rc_refresh')
}

delch <- function() {
    .C('rc_delch')
}

getch <- function() {
    return(.C('rc_getch', result=integer(1))$result)
}

inch <- function() {
    return(.C('rc_inch', result=character(1))$result)
}

start_color <- function() {
    .C('rc_start_color')
    return(NA)
}

init_pair <- function(pair,f,b) {
    .C('rc_init_pair',as.integer(pair),as.integer(f),as.integer(b))
}

bkgd <- function(ch) {
    .C('rc_bkgd',as.integer(ch))
}

COLOR_BLACK <- function() {
    return(.C('rc_COLOR_BLACK',ret=as.integer(0))$ret)
}

COLOR_RED <- function() {
    return(.C('rc_COLOR_RED',ret=as.integer(0))$ret)
}

COLOR_GREEN <- function() {
    return(.C('rc_COLOR_GREEN',ret=as.integer(0))$ret)
}

COLOR_YELLOW <- function() {
    return(.C('rc_COLOR_YELLOW',ret=as.integer(0))$ret)
}

COLOR_BLUE <- function() {
    return(.C('rc_COLOR_BLUE',ret=as.integer(0))$ret)
}

COLOR_MAGENTA <- function() {
    return(.C('rc_COLOR_MAGENTA',ret=as.integer(0))$ret)
}

COLOR_CYAN <- function() {
    return(.C('rc_COLOR_CYAN',ret=as.integer(0))$ret)
}

COLOR_WHITE <- function() {
    return(.C('rc_COLOR_WHITE',ret=as.integer(0))$ret)
}

COLS <- function() {
    return(.C('rc_COLS', result=integer(1))$result)
}

LINES <- function() {
    return(.C('rc_LINES', result=integer(1))$result)
}

A_REVERSE <- function() {
    return(.C('rc_A_REVERSE', result=integer(1))$result)
}