# Avoid harding file path or file extension.
dyn.load(system.file(paste0("libs/rcurses", .Platform$dynlib.ext), package="rcurses"))

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

getyx <- function() {
    rowNum <- -1; columnNum <- -1
    tmp <- .C('rc_getyx', as.integer(rowNum), as.integer(columnNum),
       result = integer(2))
    tmp$result
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

addstr <- function(str, y=NA, x=NA, attr=NA) {
    # If only str was given, then this is just basic addstr.
    if (is.na(y) && is.na(x) && is.na(attr)) {
        .C('rc_addstr', as.character(str))
        return()
    }

    # If position was given, move cursor to it.
    if (is.na(y) == FALSE && is.na(x) == FALSE) {
        if (is.na(attr)) {  # If no attribute, then this is just mvaddstr().
            mvaddstr(y, x, str)
            return()
        }
        move(y,x)
    }

    for (ch in substr(str,1:nchar(str),1:nchar(str))) {
        if (is.na(attr) == FALSE) {
            ch <- as.character(intToUtf8(bitwOr(utf8ToInt(ch),attr)))
        }
        .C('rc_addch',ch)
    }
    return()
}

mvaddstr <- function(row, column, string) {
    .C('rc_mvaddstr', as.integer(row), as.integer(column), as.character(string))
}

getstr <- function() {
    return(.C('rc_getstr', result=character(1))$result)
}

refresh <- function() {
    .C('rc_refresh')
}

delch <- function() {
    .C('rc_delch')
}

getch <- function() {
    return(intToUtf8(.C('rc_getch', result=integer(1))$result))
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
