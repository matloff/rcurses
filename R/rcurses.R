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

COLS <- function() {
    return(.C('rc_COLS', result=integer(1))$result)
}

LINES <- function() {
    return(.C('rc_LINES', result=integer(1))$result)
}

A_REVERSE <- function() {
    return(.C('rc_A_REVERSE', result=integer(1))$result)
}