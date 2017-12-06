# Avoid harding file path or file extension.
dyn.load(system.file(paste0("libs/rcurses",.Platform$dynlib.ext),package="rcurses"))

# error checking, used to test if variable is of type externalptr
is.externalptr <- function(x) { return(typeof(x) == 'externalptr') }

p <- function(x) { print(paste0(deparse(substitute(x)),': ',x)) }

# debugging function, prints called function name to debug file
w <- function(x) { write(capture.output(x),append=TRUE) }

baudrate <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_baudrate'))
}

beep <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_beep'))
}

can_change_color <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_can_change_color'))
}

cbreak <- function() {
    w(match.call()[[1]])
    return(.Call('rc_cbreak'))
}

color_content <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_color_content'))
}

color_pair <- function(color_number) {
    w(match.call()[[1]])
    if (is.double(color_number)) { color_number <- as.integer(color_number) }
    if (!is.integer(color_number)) { return(ERR) }
    return(.Call('rc_COLOR_PAIR',color_number))
}

curs_set <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_curs_set'))
}

def_prog_mode <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_def_prog_mode'))
}

def_shell_mode <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_def_shell_mode'))
}

delay_output <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_delay_output'))
}

doupdate <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_doupdate'))
}

echo <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_echo'))
}

endwin <- function() {
    w(match.call()[[1]])
    return(.Call('rc_endwin'))
}

erasechar <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_erasechar'))
}

filter <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_filter'))
}

flash <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_flash'))
}

flushinp <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_flushinp'))
}

getmouse <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_getmouse'))
}

getsyx <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_getsyx'))
}

getwin <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_getwin'))
}

halfdelay <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_halfdelay'))
}

has_colors <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_has_colors'))
}

has_ic <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_has_ic'))
}

has_il <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_has_il'))
}

has_key <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_has_key'))
}

init_color <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_init_color'))
}

init_pair <- function(pair_number,fg,bg) {
    w(match.call()[[1]])
    if (is.double(pair_number)) { pair_number <- as.integer(pair_number) }
    if (is.double(fg)) { fg <- as.integer(fg) }
    if (is.double(bg)) { bg <- as.integer(bg) }
    if (!is.integer(pair_number) || !is.integer(fg) || !is.integer(bg)) { return(ERR) }
    return(.Call('rc_init_pair',pair_number,fg,bg))
}

initscr <- function() {
    w(match.call()[[1]])
    result <- .Call('rc_initscr')
    LINES <<- .Call('rc_LINES')
    COLS <<- .Call('rc_COLS')
    return(result)
}

is_term_resized <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_is_term_resized'))
}

isendwin <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_isendwin'))
}

keyname <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_keyname'))
}

killchar <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_killchar'))
}

longname <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_longname'))
}

meta <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_meta'))
}

mouseinterval <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_mouseinterval'))
}

mousemask <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_mousemask'))
}

napms <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_napms'))
}

newpad <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_newpad'))
}

# this function has multiple call patterns
newwin <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_newwin'))
}

nl <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_nl'))
}

nocbreak <- function() {
    w(match.call()[[1]])
    return(.Call('rc_nocbreak'))
}

noecho <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_noecho'))
}

nonl <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_nonl'))
}

noqiflush <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_noqiflush'))
}

noraw <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_noraw'))
}

pair_content <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_pair_content'))
}

pair_number <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_pair_number'))
}

putp <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_putp'))
}

qiflush <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_qiflush'))
}

raw <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_raw'))
}

reset_prog_mode <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_reset_prog_mode'))
}

reset_shell_mode <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_reset_shell_mode'))
}

resetty <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_resetty'))
}

resize_term <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_resize_term'))
}

resizeterm <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_resizeterm'))
}

savetty <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_savetty'))
}

setsyx <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_setsyx'))
}

setupterm <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_setupterm'))
}

start_color <- function() {
    w(match.call()[[1]])
    return(.Call('rc_start_color'))
}

termattrs <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_termattrs'))
}

termname <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_termname'))
}

tigetflag <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_tigetflag'))
}

tigetnum <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_tigetnum'))
}

tigetstr <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_tigetstr'))
}

tparm <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_tparm'))
}

typeahead <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_typeahead'))
}

unctrl <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_unctrl'))
}

unget_wch <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_unget_wch'))
}

ungetch <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_ungetch'))
}

ungetmouse <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_ungetmouse'))
}

update_lines_cols <- function() {
    w(match.call()[[1]])
    LINES <<- .Call('rc_LINES')
    COLS <<- .Call('rc_COLS')
    return(NULL)
}

use_default_colors <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_use_default_colors'))
}

use_env <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_use_env'))
}

wrapper <- function() {
    w(match.call()[[1]])
    # TODO: implement this
    return(.Call('rc_wrapper'))
}

# this function has multiple call patterns
addch <- function(window,ch,y=NULL,x=NULL,attr=NULL) {
    w(match.call()[[1]])
    if (!is.externalptr(window) || !is.character(ch) || nchar(ch) != 1) { return(ERR) }
    if (is.double(y)) { y <- as.integer(y) }
    if (is.double(x)) { x <- as.integer(x) }
    if (is.double(attr)) { attr <- as.integer(attr) }
    ch <- utf8ToInt(ch)
    if (is.integer(attr)) { ch <- bitwOr(ch,attr) }
    if (is.integer(y) && is.integer(x)) { return(.Call('mvwaddch',window,y,x,ch)) }
    else { return(.Call('waddch',window,ch)) }
}

# this function has multiple call patterns
addnstr <- function(window,str,n,y=NULL,x=NULL,attr=NULL) {
    w(match.call()[[1]])
    if (is.double(n)) { n <- as.integer(n) }
    if (!is.externalptr(window) || !is.character(str) || !is.integer(n)) { return(ERR) }
    if (is.double(y)) { y <- as.integer(y) }
    if (is.double(x)) { x <- as.integer(x) }
    if (is.double(attr)) { attr <- as.integer(attr) }
    if (is.integer(attr)) {
        str <- utf8ToInt(str)
        for (i in 1:length(str)) { str[i] <- bitwOr(str[i],attr) }
        # workaround since waddchnstr is not working
        if (is.integer(y) && is.integer(x)) { if (.Call('rc_wmove',window,y,x) != OK) { return(ERR) } }
        for (i in 1:min(length(str),n)) { if (.Call('rc_waddch',window,str[i]) != OK) { return(ERR) } }
        return(OK)
        # this method does not work since waddchnstr is not working
        # if (is.integer(y) && is.integer(x)) { return(.Call('rc_mvwaddchstr',window,y,x,str)) }
        # else { return(.Call('rc_waddchstr',window,str)) }
    }
    else {
        if (is.integer(y) && is.integer(x)) { return(.Call('rc_mvwaddnstr',window,y,x,str,n)) }
        else { return(.Call('rc_waddnstr',window,str,n)) }
    }
}

# this function has multiple call patterns
addstr <- function(window,str,y=NULL,x=NULL,attr=NULL) {
    w(match.call()[[1]])
    if (!is.externalptr(window) || !is.character(str)) { return(ERR) }
    if (is.double(y)) { y <- as.integer(y) }
    if (is.double(x)) { x <- as.integer(x) }
    if (is.double(attr)) { attr <- as.integer(attr) }
    if (is.integer(attr)) {
        str <- utf8ToInt(str)
        for (i in 1:length(str)) { str[i] <- bitwOr(str[i],attr) }
        # workaround since waddchnstr is not working
        if (is.integer(y) && is.integer(x)) { if (.Call('rc_wmove',window,y,x) != OK) { return(ERR) } }
        for (ch in str) { if (.Call('rc_waddch',window,ch) != OK) { return(ERR) } }
        return(OK)
        # this method does not work since waddchnstr is not working
        # if (is.integer(y) && is.integer(x)) { return(.Call('rc_mvwaddchstr',window,y,x,str)) }
        # else { return(.Call('rc_waddchstr',window,str)) }
    }
    else {
        if (is.integer(y) && is.integer(x)) { return(.Call('rc_mvwaddstr',window,y,x,str)) }
        else { return(.Call('rc_waddstr',window,str)) }
    }
}

attroff <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_attroff'))
}

attron <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_attron'))
}

attrset <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_attrset'))
}

bkgd <- function(window,ch,attr=NULL) {
    w(match.call()[[1]])
    if (!is.externalptr(window) || !is.character(ch) || nchar(ch) != 1) { return(ERR) }
    if (is.double(attr)) { attr <- as.integer(attr) }
    ch <- utf8ToInt(ch)
    if (is.integer(attr)) { ch <- bitwOr(ch,attr) }
    return(.Call('rc_wbkgd',window,ch))
}

bkgdset <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_bkgdset'))
}

border <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_border'))
}

box <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_box'))
}

# this function has multiple call patterns
chgat <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_chgat'))
}

clear <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    return(.Call('rc_wclear',window))
}

clearok <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_clearok'))
}

clrtobot <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_clrtobot'))
}

clrtoeol <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_clrtoeol'))
}

cursyncup <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_cursyncup'))
}

delch <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_delch'))
}

deleteln <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_deleteln'))
}

# this function has multiple call patterns
derwin <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_derwin'))
}

echochar <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_echochar'))
}

enclose <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_enclose'))
}

erase <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_erase'))
}

get_wch <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_get_wch'))
}

getbegyx <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_getbegyx'))
}

getbkgd <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_getbkgd'))
}

getch <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_getch'))
}

getkey <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_getkey'))
}

getmaxyx <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_getmaxyx'))
}

getparyx <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_getparyx'))
}

# this function has multiple call patterns
getstr <- function(window,n=NULL,y=NULL,x=NULL) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    if (is.double(n)) { n <- as.integer(n) }
    if (is.double(y)) { y <- as.integer(y) }
    if (is.double(x)) { x <- as.integer(x) }
    str <- as.raw(rep(0,1024))
    if (is.integer(y) && is.integer(x)) {
        if (is.integer(n)) { .Call('rc_mvwgetnstr',window,y,x,str,n) }
        else { .Call('rc_mvwgetstr',window,y,x,str) }
    }
    else {
        if (is.integer(n)) { .Call('rc_wgetnstr',window,str,n) }
        else { .Call('rc_wgetstr',window,str) }
    }
    return(intToUtf8(as.integer(str)))
}

getyx <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_getyx'))
}

# this function has multiple call patterns
hline <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_hline'))
}

idcok <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_idcok'))
}

idlok <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_idlok'))
}

immedok <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_immedok'))
}

inch <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_inch'))
}

# this function has multiple call patterns
insch <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_insch'))
}

insdelln <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_insdelln'))
}

insertln <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_insertln'))
}

# this function has multiple call patterns
insnstr <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_insnstr'))
}

# this function has multiple call patterns
insstr <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_insstr'))
}

# this function has multiple call patterns
instr <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_instr'))
}

is_linetouched <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_is_linetouched'))
}

is_wintouched <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_is_wintouched'))
}

keypad <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_keypad'))
}

leaveok <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_leaveok'))
}

move <- function(window,new_y,new_x) {
    w(match.call()[[1]])
    if (is.double(new_y)) { new_y <- as.integer(new_y) }
    if (is.double(new_x)) { new_x <- as.integer(new_x) }
    if (!is.externalptr(window) || !is.integer(new_y) || !is.integer(new_x)) { return(ERR) }
    return(.Call('rc_wmove',window,new_y,new_x))
}

mvderwin <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_mvderwin'))
}

mvwin <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_mvwin'))
}

nodelay <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_nodelay'))
}

notimeout <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_notimeout'))
}

noutrefresh <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_noutrefresh'))
}

overlay <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_overlay'))
}

overwrite <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_overwrite'))
}

putwin <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_putwin'))
}

redrawln <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_redrawln'))
}

redrawwin <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_redrawwin'))
}

refresh <- function(window,pminrow=NULL,pmincol=NULL,sminrow=NULL,smincol=NULL,smaxrow=NULL,smaxcol=NULL) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    if (is.integer(pminrow) && is.integer(pmincol) &&
        is.integer(sminrow) && is.integer(smincol) &&
        is.integer(smaxrow) && is.integer(smaxcol)) {
        return(.Call('rc_prefresh',window,pminrow,pmincol,sminrow,smincol,smaxrow,smaxcol)) }
    else { return(.Call('rc_wrefresh',window)) }
}

resize <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_resize'))
}

scroll <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_scroll'))
}

scrollok <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_scrollok'))
}

setscrreg <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_setscrreg'))
}

standend <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_standend'))
}

standout <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_standout'))
}

# this function has multiple call patterns
subpad <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_subpad'))
}

# this function has multiple call patterns
subwin <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_subwin'))
}

syncdown <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_syncdown'))
}

syncok <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_syncok'))
}

syncup <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_syncup'))
}

timeout <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_timeout'))
}

touchline <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_touchline'))
}

touchwin <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_touchwin'))
}

untouchwin <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_untouchwin'))
}

# this function has multiple call patterns
vline <- function(window) {
    w(match.call()[[1]])
    if (!is.externalptr(window)) { return(ERR) }
    # TODO: implement this
    return(.Call('rc_vline'))
}

ERR <- .Call('rc_ERR')
OK <- .Call('rc_OK')
version <- .Call('rc_version')
A_ALTCHARSET <- .Call('rc_A_ALTCHARSET')
A_BLINK <- .Call('rc_A_BLINK')
A_BOLD <- .Call('rc_A_BOLD')
A_DIM <- .Call('rc_A_DIM')
A_INVIS <- .Call('rc_A_INVIS')
A_NORMAL <- .Call('rc_A_NORMAL')
A_PROTECT <- .Call('rc_A_PROTECT')
A_REVERSE <- .Call('rc_A_REVERSE')
A_STANDOUT <- .Call('rc_A_STANDOUT')
A_UNDERLINE <- .Call('rc_A_UNDERLINE')
A_HORIZONTAL <- .Call('rc_A_HORIZONTAL')
A_LEFT <- .Call('rc_A_LEFT')
A_LOW <- .Call('rc_A_LOW')
A_RIGHT <- .Call('rc_A_RIGHT')
A_TOP <- .Call('rc_A_TOP')
A_VERTICAL <- .Call('rc_A_VERTICAL')
A_CHARTEXT <- .Call('rc_A_CHARTEXT')
A_ATTRIBUTES <- .Call('rc_A_ATTRIBUTES')
A_CHARTEXT <- .Call('rc_A_CHARTEXT')
A_COLOR <- .Call('rc_A_COLOR')
KEY_MIN <- .Call('rc_KEY_MIN')
KEY_BREAK <- .Call('rc_KEY_BREAK')
KEY_DOWN <- .Call('rc_KEY_DOWN')
KEY_UP <- .Call('rc_KEY_UP')
KEY_LEFT <- .Call('rc_KEY_LEFT')
KEY_RIGHT <- .Call('rc_KEY_RIGHT')
KEY_HOME <- .Call('rc_KEY_HOME')
KEY_BACKSPACE <- .Call('rc_KEY_BACKSPACE')
KEY_F0 <- .Call('rc_KEY_F0')
KEY_F1 <- .Call('rc_KEY_F1')
KEY_F2 <- .Call('rc_KEY_F2')
KEY_F3 <- .Call('rc_KEY_F3')
KEY_F4 <- .Call('rc_KEY_F4')
KEY_F5 <- .Call('rc_KEY_F5')
KEY_F6 <- .Call('rc_KEY_F6')
KEY_F7 <- .Call('rc_KEY_F7')
KEY_F8 <- .Call('rc_KEY_F8')
KEY_F9 <- .Call('rc_KEY_F9')
KEY_F10 <- .Call('rc_KEY_F10')
KEY_F11 <- .Call('rc_KEY_F11')
KEY_F12 <- .Call('rc_KEY_F12')
KEY_F13 <- .Call('rc_KEY_F13')
KEY_F14 <- .Call('rc_KEY_F14')
KEY_F15 <- .Call('rc_KEY_F15')
KEY_F16 <- .Call('rc_KEY_F16')
KEY_F17 <- .Call('rc_KEY_F17')
KEY_F18 <- .Call('rc_KEY_F18')
KEY_F19 <- .Call('rc_KEY_F19')
KEY_F20 <- .Call('rc_KEY_F20')
KEY_F21 <- .Call('rc_KEY_F21')
KEY_F22 <- .Call('rc_KEY_F22')
KEY_F23 <- .Call('rc_KEY_F23')
KEY_F24 <- .Call('rc_KEY_F24')
KEY_F25 <- .Call('rc_KEY_F25')
KEY_F26 <- .Call('rc_KEY_F26')
KEY_F27 <- .Call('rc_KEY_F27')
KEY_F28 <- .Call('rc_KEY_F28')
KEY_F29 <- .Call('rc_KEY_F29')
KEY_F30 <- .Call('rc_KEY_F30')
KEY_F31 <- .Call('rc_KEY_F31')
KEY_F32 <- .Call('rc_KEY_F32')
KEY_F33 <- .Call('rc_KEY_F33')
KEY_F34 <- .Call('rc_KEY_F34')
KEY_F35 <- .Call('rc_KEY_F35')
KEY_F36 <- .Call('rc_KEY_F36')
KEY_F37 <- .Call('rc_KEY_F37')
KEY_F38 <- .Call('rc_KEY_F38')
KEY_F39 <- .Call('rc_KEY_F39')
KEY_F40 <- .Call('rc_KEY_F40')
KEY_F41 <- .Call('rc_KEY_F41')
KEY_F42 <- .Call('rc_KEY_F42')
KEY_F43 <- .Call('rc_KEY_F43')
KEY_F44 <- .Call('rc_KEY_F44')
KEY_F45 <- .Call('rc_KEY_F45')
KEY_F46 <- .Call('rc_KEY_F46')
KEY_F47 <- .Call('rc_KEY_F47')
KEY_F48 <- .Call('rc_KEY_F48')
KEY_F49 <- .Call('rc_KEY_F49')
KEY_F50 <- .Call('rc_KEY_F50')
KEY_F51 <- .Call('rc_KEY_F51')
KEY_F52 <- .Call('rc_KEY_F52')
KEY_F53 <- .Call('rc_KEY_F53')
KEY_F54 <- .Call('rc_KEY_F54')
KEY_F55 <- .Call('rc_KEY_F55')
KEY_F56 <- .Call('rc_KEY_F56')
KEY_F57 <- .Call('rc_KEY_F57')
KEY_F58 <- .Call('rc_KEY_F58')
KEY_F59 <- .Call('rc_KEY_F59')
KEY_F60 <- .Call('rc_KEY_F60')
KEY_F61 <- .Call('rc_KEY_F61')
KEY_F62 <- .Call('rc_KEY_F62')
KEY_F63 <- .Call('rc_KEY_F63')
KEY_DL <- .Call('rc_KEY_DL')
KEY_IL <- .Call('rc_KEY_IL')
KEY_DC <- .Call('rc_KEY_DC')
KEY_IC <- .Call('rc_KEY_IC')
KEY_EIC <- .Call('rc_KEY_EIC')
KEY_CLEAR <- .Call('rc_KEY_CLEAR')
KEY_EOS <- .Call('rc_KEY_EOS')
KEY_EOL <- .Call('rc_KEY_EOL')
KEY_SF <- .Call('rc_KEY_SF')
KEY_SR <- .Call('rc_KEY_SR')
KEY_NPAGE <- .Call('rc_KEY_NPAGE')
KEY_PPAGE <- .Call('rc_KEY_PPAGE')
KEY_STAB <- .Call('rc_KEY_STAB')
KEY_CTAB <- .Call('rc_KEY_CTAB')
KEY_CATAB <- .Call('rc_KEY_CATAB')
KEY_ENTER <- .Call('rc_KEY_ENTER')
KEY_SRESET <- .Call('rc_KEY_SRESET')
KEY_RESET <- .Call('rc_KEY_RESET')
KEY_PRINT <- .Call('rc_KEY_PRINT')
KEY_LL <- .Call('rc_KEY_LL')
KEY_A1 <- .Call('rc_KEY_A1')
KEY_A3 <- .Call('rc_KEY_A3')
KEY_B2 <- .Call('rc_KEY_B2')
KEY_C1 <- .Call('rc_KEY_C1')
KEY_C3 <- .Call('rc_KEY_C3')
KEY_BTAB <- .Call('rc_KEY_BTAB')
KEY_BEG <- .Call('rc_KEY_BEG')
KEY_CANCEL <- .Call('rc_KEY_CANCEL')
KEY_CLOSE <- .Call('rc_KEY_CLOSE')
KEY_COMMAND <- .Call('rc_KEY_COMMAND')
KEY_COPY <- .Call('rc_KEY_COPY')
KEY_CREATE <- .Call('rc_KEY_CREATE')
KEY_END <- .Call('rc_KEY_END')
KEY_EXIT <- .Call('rc_KEY_EXIT')
KEY_FIND <- .Call('rc_KEY_FIND')
KEY_HELP <- .Call('rc_KEY_HELP')
KEY_MARK <- .Call('rc_KEY_MARK')
KEY_MESSAGE <- .Call('rc_KEY_MESSAGE')
KEY_MOVE <- .Call('rc_KEY_MOVE')
KEY_NEXT <- .Call('rc_KEY_NEXT')
KEY_OPEN <- .Call('rc_KEY_OPEN')
KEY_OPTIONS <- .Call('rc_KEY_OPTIONS')
KEY_PREVIOUS <- .Call('rc_KEY_PREVIOUS')
KEY_REDO <- .Call('rc_KEY_REDO')
KEY_REFERENCE <- .Call('rc_KEY_REFERENCE')
KEY_REFRESH <- .Call('rc_KEY_REFRESH')
KEY_REPLACE <- .Call('rc_KEY_REPLACE')
KEY_RESTART <- .Call('rc_KEY_RESTART')
KEY_RESUME <- .Call('rc_KEY_RESUME')
KEY_SAVE <- .Call('rc_KEY_SAVE')
KEY_SBEG <- .Call('rc_KEY_SBEG')
KEY_SCANCEL <- .Call('rc_KEY_SCANCEL')
KEY_SCOMMAND <- .Call('rc_KEY_SCOMMAND')
KEY_SCOPY <- .Call('rc_KEY_SCOPY')
KEY_SCREATE <- .Call('rc_KEY_SCREATE')
KEY_SDC <- .Call('rc_KEY_SDC')
KEY_SDL <- .Call('rc_KEY_SDL')
KEY_SELECT <- .Call('rc_KEY_SELECT')
KEY_SEND <- .Call('rc_KEY_SEND')
KEY_SEOL <- .Call('rc_KEY_SEOL')
KEY_SEXIT <- .Call('rc_KEY_SEXIT')
KEY_SFIND <- .Call('rc_KEY_SFIND')
KEY_SHELP <- .Call('rc_KEY_SHELP')
KEY_SHOME <- .Call('rc_KEY_SHOME')
KEY_SIC <- .Call('rc_KEY_SIC')
KEY_SLEFT <- .Call('rc_KEY_SLEFT')
KEY_SMESSAGE <- .Call('rc_KEY_SMESSAGE')
KEY_SMOVE <- .Call('rc_KEY_SMOVE')
KEY_SNEXT <- .Call('rc_KEY_SNEXT')
KEY_SOPTIONS <- .Call('rc_KEY_SOPTIONS')
KEY_SPREVIOUS <- .Call('rc_KEY_SPREVIOUS')
KEY_SPRINT <- .Call('rc_KEY_SPRINT')
KEY_SREDO <- .Call('rc_KEY_SREDO')
KEY_SREPLACE <- .Call('rc_KEY_SREPLACE')
KEY_SRIGHT <- .Call('rc_KEY_SRIGHT')
KEY_SRSUME <- .Call('rc_KEY_SRSUME')
KEY_SSAVE <- .Call('rc_KEY_SSAVE')
KEY_SSUSPEND <- .Call('rc_KEY_SSUSPEND')
KEY_SUNDO <- .Call('rc_KEY_SUNDO')
KEY_SUSPEND <- .Call('rc_KEY_SUSPEND')
KEY_UNDO <- .Call('rc_KEY_UNDO')
KEY_MOUSE <- .Call('rc_KEY_MOUSE')
KEY_RESIZE <- .Call('rc_KEY_RESIZE')
KEY_MAX <- .Call('rc_KEY_MAX')
ACS_BBSS <- .Call('rc_ACS_BBSS')
ACS_BLOCK <- .Call('rc_ACS_BLOCK')
ACS_BOARD <- .Call('rc_ACS_BOARD')
ACS_BSBS <- .Call('rc_ACS_BSBS')
ACS_BSSB <- .Call('rc_ACS_BSSB')
ACS_BSSS <- .Call('rc_ACS_BSSS')
ACS_BTEE <- .Call('rc_ACS_BTEE')
ACS_BULLET <- .Call('rc_ACS_BULLET')
ACS_CKBOARD <- .Call('rc_ACS_CKBOARD')
ACS_DARROW <- .Call('rc_ACS_DARROW')
ACS_DEGREE <- .Call('rc_ACS_DEGREE')
ACS_DIAMOND <- .Call('rc_ACS_DIAMOND')
ACS_GEQUAL <- .Call('rc_ACS_GEQUAL')
ACS_HLINE <- .Call('rc_ACS_HLINE')
ACS_LANTERN <- .Call('rc_ACS_LANTERN')
ACS_LARROW <- .Call('rc_ACS_LARROW')
ACS_LEQUAL <- .Call('rc_ACS_LEQUAL')
ACS_LLCORNER <- .Call('rc_ACS_LLCORNER')
ACS_LRCORNER <- .Call('rc_ACS_LRCORNER')
ACS_LTEE <- .Call('rc_ACS_LTEE')
ACS_NEQUAL <- .Call('rc_ACS_NEQUAL')
ACS_PI <- .Call('rc_ACS_PI')
ACS_PLMINUS <- .Call('rc_ACS_PLMINUS')
ACS_PLUS <- .Call('rc_ACS_PLUS')
ACS_RARROW <- .Call('rc_ACS_RARROW')
ACS_RTEE <- .Call('rc_ACS_RTEE')
ACS_S1 <- .Call('rc_ACS_S1')
ACS_S3 <- .Call('rc_ACS_S3')
ACS_S7 <- .Call('rc_ACS_S7')
ACS_S9 <- .Call('rc_ACS_S9')
ACS_SBBS <- .Call('rc_ACS_SBBS')
ACS_SBSB <- .Call('rc_ACS_SBSB')
ACS_SBSS <- .Call('rc_ACS_SBSS')
ACS_SSBB <- .Call('rc_ACS_SSBB')
ACS_SSBS <- .Call('rc_ACS_SSBS')
ACS_SSSB <- .Call('rc_ACS_SSSB')
ACS_SSSS <- .Call('rc_ACS_SSSS')
ACS_STERLING <- .Call('rc_ACS_STERLING')
ACS_TTEE <- .Call('rc_ACS_TTEE')
ACS_UARROW <- .Call('rc_ACS_UARROW')
ACS_ULCORNER <- .Call('rc_ACS_ULCORNER')
ACS_URCORNER <- .Call('rc_ACS_URCORNER')
ACS_VLINE <- .Call('rc_ACS_VLINE')
COLOR_BLACK <- .Call('rc_COLOR_BLACK')
COLOR_BLUE <- .Call('rc_COLOR_BLUE')
COLOR_CYAN <- .Call('rc_COLOR_CYAN')
COLOR_GREEN <- .Call('rc_COLOR_GREEN')
COLOR_MAGENTA <- .Call('rc_COLOR_MAGENTA')
COLOR_RED <- .Call('rc_COLOR_RED')
COLOR_WHITE <- .Call('rc_COLOR_WHITE')
COLOR_YELLOW <- .Call('rc_COLOR_YELLOW')
LINES <- .Call('rc_LINES')
COLS <- .Call('rc_COLS')
