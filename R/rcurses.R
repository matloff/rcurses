# load dll
dllPath <- system.file(paste0("libs/rcurses",.Platform$dynlib.ext),package="rcurses")
if (file.exists(dllPath)) {
    if (is.loaded(dllPath)) { dyn.unload(dllPath) }
    dyn.load(dllPath)
}

# error checking, used to test if variable is of type externalptr
is.externalptr <- function(x) { return(typeof(x) == 'externalptr') }

#' Interface to rcurses.baudrate
#'
#' @return value from corresponding ncurses C function
#' @export
rcurses.baudrate <- function() {
    # TODO: implement this
    return(.Call('rc_baudrate'))
}

#' Interface to rcurses.beep
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.beep <- function() {
    # TODO: implement this
    return(.Call('rc_beep'))
}

#' Interface to rcurses.can_change_color
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.can_change_color <- function() {
    # TODO: implement this
    return(.Call('rc_can_change_color'))
}

#' Interface to rcurses.cbreak
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.cbreak <- function() {
    return(.Call('rc_cbreak'))
}

#' Interface to rcurses.color_content
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.color_content <- function() {
    # TODO: implement this
    return(.Call('rc_color_content'))
}

#' Interface to rcurses.color_pair
#'
#' @param color_number color pair ID returned by init_pair
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.color_pair <- function(color_number) {
    if (is.double(color_number)) { color_number <- as.integer(color_number) }
    if (!is.integer(color_number)) { return(rcurses.ERR) }
    return(.Call('rc_COLOR_PAIR',color_number))
}

#' Interface to rcurses.curs_set
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.curs_set <- function() {
    # TODO: implement this
    return(.Call('rc_curs_set'))
}

#' Interface to rcurses.def_prog_mode
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.def_prog_mode <- function() {
    # TODO: implement this
    return(.Call('rc_def_prog_mode'))
}

#' Interface to rcurses.def_shell_mode
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.def_shell_mode <- function() {
    # TODO: implement this
    return(.Call('rc_def_shell_mode'))
}

#' Interface to rcurses.delay_output
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.delay_output <- function() {
    # TODO: implement this
    return(.Call('rc_delay_output'))
}

#' Interface to rcurses.doupdate
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.doupdate <- function() {
    # TODO: implement this
    return(.Call('rc_doupdate'))
}

#' Interface to rcurses.echo
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.echo <- function() {
    return(.Call('rc_echo'))
}

#' Interface to rcurses.endwin
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.endwin <- function() {
    return(.Call('rc_endwin'))
}

#' Interface to rcurses.erasechar
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.erasechar <- function() {
    # TODO: implement this
    return(.Call('rc_erasechar'))
}

#' Interface to rcurses.filter
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.filter <- function() {
    # TODO: implement this
    return(.Call('rc_filter'))
}

#' Interface to rcurses.flash
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.flash <- function() {
    # TODO: implement this
    return(.Call('rc_flash'))
}

#' Interface to rcurses.flushinp
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.flushinp <- function() {
    # TODO: implement this
    return(.Call('rc_flushinp'))
}

#' Interface to rcurses.getmouse
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getmouse <- function() {
    # TODO: implement this
    return(.Call('rc_getmouse'))
}

#' Interface to rcurses.getsyx
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getsyx <- function() {
    # TODO: implement this
    return(.Call('rc_getsyx'))
}

#' Interface to rcurses.getwin
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getwin <- function() {
    # TODO: implement this
    return(.Call('rc_getwin'))
}

#' Interface to rcurses.halfdelay
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.halfdelay <- function() {
    # TODO: implement this
    return(.Call('rc_halfdelay'))
}

#' Interface to rcurses.has_colors
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.has_colors <- function() {
    # TODO: implement this
    return(.Call('rc_has_colors'))
}

#' Interface to rcurses.has_ic
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.has_ic <- function() {
    # TODO: implement this
    return(.Call('rc_has_ic'))
}

#' Interface to rcurses.has_il
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.has_il <- function() {
    # TODO: implement this
    return(.Call('rc_has_il'))
}

#' Interface to rcurses.has_key
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.has_key <- function() {
    # TODO: implement this
    return(.Call('rc_has_key'))
}

#' Interface to rcurses.init_color
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.init_color <- function() {
    # TODO: implement this
    return(.Call('rc_init_color'))
}

#' Interface to rcurses.init_pair
#'
#' @param pair_number ID representing this new color pair
#' @param fg foreground color (either color macro or created with init_color)
#' @param bg background color (either color macro or created with init_color)
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.init_pair <- function(pair_number,fg,bg) {
    if (is.double(pair_number)) { pair_number <- as.integer(pair_number) }
    if (is.double(fg)) { fg <- as.integer(fg) }
    if (is.double(bg)) { bg <- as.integer(bg) }
    if (!is.integer(pair_number) || !is.integer(fg) || !is.integer(bg)) { return(rcurses.ERR) }
    return(.Call('rc_init_pair',pair_number,fg,bg))
}

#' Interface to rcurses.initscr
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.initscr <- function() {
    return(.Call('rc_initscr'))
}

#' Interface to rcurses.is_term_resized
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.is_term_resized <- function() {
    # TODO: implement this
    return(.Call('rc_is_term_resized'))
}

#' Interface to rcurses.isendwin
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.isendwin <- function() {
    # TODO: implement this
    return(.Call('rc_isendwin'))
}

#' Interface to rcurses.keyname
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.keyname <- function() {
    # TODO: implement this
    return(.Call('rc_keyname'))
}

#' Interface to rcurses.killchar
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.killchar <- function() {
    # TODO: implement this
    return(.Call('rc_killchar'))
}

#' Interface to rcurses.longname
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.longname <- function() {
    # TODO: implement this
    return(.Call('rc_longname'))
}

#' Interface to rcurses.meta
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.meta <- function() {
    # TODO: implement this
    return(.Call('rc_meta'))
}

#' Interface to rcurses.mouseinterval
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.mouseinterval <- function() {
    # TODO: implement this
    return(.Call('rc_mouseinterval'))
}

#' Interface to rcurses.mousemask
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.mousemask <- function() {
    # TODO: implement this
    return(.Call('rc_mousemask'))
}

#' Interface to rcurses.napms
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.napms <- function() {
    # TODO: implement this
    return(.Call('rc_napms'))
}

#' Interface to rcurses.newpad
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.newpad <- function() {
    # TODO: implement this
    return(.Call('rc_newpad'))
}

# this function has multiple call patterns
#' Interface to rcurses.newwin
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.newwin <- function() {
    # TODO: implement this
    return(.Call('rc_newwin'))
}

#' Interface to rcurses.nl
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.nl <- function() {
    # TODO: implement this
    return(.Call('rc_nl'))
}

#' Interface to rcurses.nocbreak
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.nocbreak <- function() {
    return(.Call('rc_nocbreak'))
}

#' Interface to rcurses.noecho
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.noecho <- function() {
    return(.Call('rc_noecho'))
}

#' Interface to rcurses.nonl
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.nonl <- function() {
    # TODO: implement this
    return(.Call('rc_nonl'))
}

#' Interface to rcurses.noqiflush
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.noqiflush <- function() {
    # TODO: implement this
    return(.Call('rc_noqiflush'))
}

#' Interface to rcurses.noraw
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.noraw <- function() {
    # TODO: implement this
    return(.Call('rc_noraw'))
}

#' Interface to rcurses.pair_content
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.pair_content <- function() {
    # TODO: implement this
    return(.Call('rc_pair_content'))
}

#' Interface to rcurses.pair_number
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.pair_number <- function() {
    # TODO: implement this
    return(.Call('rc_pair_number'))
}

#' Interface to rcurses.putp
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.putp <- function() {
    # TODO: implement this
    return(.Call('rc_putp'))
}

#' Interface to rcurses.qiflush
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.qiflush <- function() {
    # TODO: implement this
    return(.Call('rc_qiflush'))
}

#' Interface to rcurses.raw
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.raw <- function() {
    # TODO: implement this
    return(.Call('rc_raw'))
}

#' Interface to rcurses.reset_prog_mode
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.reset_prog_mode <- function() {
    # TODO: implement this
    return(.Call('rc_reset_prog_mode'))
}

#' Interface to rcurses.reset_shell_mode
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.reset_shell_mode <- function() {
    # TODO: implement this
    return(.Call('rc_reset_shell_mode'))
}

#' Interface to rcurses.resetty
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.resetty <- function() {
    # TODO: implement this
    return(.Call('rc_resetty'))
}

#' Interface to rcurses.resize_term
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.resize_term <- function() {
    # TODO: implement this
    return(.Call('rc_resize_term'))
}

#' Interface to rcurses.resizeterm
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.resizeterm <- function() {
    # TODO: implement this
    return(.Call('rc_resizeterm'))
}

#' Interface to rcurses.savetty
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.savetty <- function() {
    # TODO: implement this
    return(.Call('rc_savetty'))
}

#' Interface to rcurses.setsyx
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.setsyx <- function() {
    # TODO: implement this
    return(.Call('rc_setsyx'))
}

#' Interface to rcurses.setupterm
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.setupterm <- function() {
    # TODO: implement this
    return(.Call('rc_setupterm'))
}

#' Interface to rcurses.start_color
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.start_color <- function() {
    return(.Call('rc_start_color'))
}

#' Interface to rcurses.termattrs
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.termattrs <- function() {
    # TODO: implement this
    return(.Call('rc_termattrs'))
}

#' Interface to rcurses.termname
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.termname <- function() {
    # TODO: implement this
    return(.Call('rc_termname'))
}

#' Interface to rcurses.tigetflag
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.tigetflag <- function() {
    # TODO: implement this
    return(.Call('rc_tigetflag'))
}

#' Interface to rcurses.tigetnum
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.tigetnum <- function() {
    # TODO: implement this
    return(.Call('rc_tigetnum'))
}

#' Interface to rcurses.tigetstr
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.tigetstr <- function() {
    # TODO: implement this
    return(.Call('rc_tigetstr'))
}

#' Interface to rcurses.tparm
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.tparm <- function() {
    # TODO: implement this
    return(.Call('rc_tparm'))
}

#' Interface to rcurses.typeahead
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.typeahead <- function() {
    # TODO: implement this
    return(.Call('rc_typeahead'))
}

#' Interface to rcurses.unctrl
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.unctrl <- function() {
    # TODO: implement this
    return(.Call('rc_unctrl'))
}

#' Interface to rcurses.unget_wch
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.unget_wch <- function() {
    # TODO: implement this
    return(.Call('rc_unget_wch'))
}

#' Interface to rcurses.ungetch
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ungetch <- function() {
    # TODO: implement this
    return(.Call('rc_ungetch'))
}

#' Interface to rcurses.ungetmouse
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ungetmouse <- function() {
    # TODO: implement this
    return(.Call('rc_ungetmouse'))
}

#' Interface to rcurses.use_default_colors
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.use_default_colors <- function() {
    # TODO: implement this
    return(.Call('rc_use_default_colors'))
}

#' Interface to rcurses.use_env
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.use_env <- function() {
    # TODO: implement this
    return(.Call('rc_use_env'))
}

#' Interface to rcurses.wrapper
#'
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.wrapper <- function() {
    # TODO: implement this
    return(.Call('rc_wrapper'))
}

# this function has multiple call patterns
#' Interface to rcurses.addch
#'
#' @param window window returned by call to initscr
#' @param ch newly painted character
#' @param y y position of newly painted character
#' @param x x position of newly painted character
#' @param attr attribute of newly painted character
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.addch <- function(window,ch,y=NULL,x=NULL,attr=NULL) {
    if (!is.externalptr(window) || !is.character(ch) || nchar(ch) != 1) { return(rcurses.ERR) }
    if (is.double(y)) { y <- as.integer(y) }
    if (is.double(x)) { x <- as.integer(x) }
    if (is.double(attr)) { attr <- as.integer(attr) }
    ch <- utf8ToInt(ch)
    if (is.integer(attr)) { ch <- bitwOr(ch,attr) }
    if (is.integer(y) && is.integer(x)) { return(.Call('rc_mvwaddch',window,y,x,ch)) }
    else { return(.Call('rc_waddch',window,ch)) }
}

# this function has multiple call patterns
#' Interface to rcurses.addnstr
#'
#' @param window window returned by call to initscr
#' @param str newly painted string
#' @param n maximum number of characters to paint
#' @param y starting y position of newly painted string
#' @param x starting y position of newly painted string
#' @param attr attribute of newly painted character
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.addnstr <- function(window,str,n,y=NULL,x=NULL,attr=NULL) {
    if (is.double(n)) { n <- as.integer(n) }
    if (!is.externalptr(window) || !is.character(str) || !is.integer(n)) { return(rcurses.ERR) }
    if (is.double(y)) { y <- as.integer(y) }
    if (is.double(x)) { x <- as.integer(x) }
    if (is.double(attr)) { attr <- as.integer(attr) }
    if (is.integer(attr)) {
        str <- utf8ToInt(str)
        for (i in 1:length(str)) { str[i] <- bitwOr(str[i],attr) }
        # workaround since waddchnstr is not working
        if (is.integer(y) && is.integer(x)) { if (.Call('rc_wmove',window,y,x) != rcurses.OK) { return(rcurses.ERR) } }
        for (i in 1:min(length(str),n)) { if (.Call('rc_waddch',window,str[i]) != rcurses.OK) { return(rcurses.ERR) } }
        return(rcurses.OK)
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
#' Interface to rcurses.addnstr
#'
#' @param window window returned by call to initscr
#' @param str newly painted string
#' @param y starting y position of newly painted string
#' @param x starting y position of newly painted string
#' @param attr attribute of newly painted character
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.addstr <- function(window,str,y=NULL,x=NULL,attr=NULL) {
    if (!is.externalptr(window) || !is.character(str)) { return(rcurses.ERR) }
    if (is.double(y)) { y <- as.integer(y) }
    if (is.double(x)) { x <- as.integer(x) }
    if (is.double(attr)) { attr <- as.integer(attr) }
    if (is.integer(attr)) {
        str <- utf8ToInt(str)
        for (i in 1:length(str)) { str[i] <- bitwOr(str[i],attr) }
        # workaround since waddchnstr is not working
        if (is.integer(y) && is.integer(x)) { if (.Call('rc_wmove',window,y,x) != rcurses.OK) { return(rcurses.ERR) } }
        for (ch in str) { if (.Call('rc_waddch',window,ch) != rcurses.OK) { return(rcurses.ERR) } }
        return(rcurses.OK)
        # this method does not work since waddchnstr is not working
        # if (is.integer(y) && is.integer(x)) { return(.Call('rc_mvwaddchstr',window,y,x,str)) }
        # else { return(.Call('rc_waddchstr',window,str)) }
    }
    else {
        if (is.integer(y) && is.integer(x)) { return(.Call('rc_mvwaddstr',window,y,x,str)) }
        else { return(.Call('rc_waddstr',window,str)) }
    }
}

#' Interface to rcurses.attroff
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.attroff <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_attroff'))
}

#' Interface to rcurses.attron
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.attron <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_attron'))
}

#' Interface to rcurses.attrset
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.attrset <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_attrset'))
}

#' Interface to rcurses.bkgd
#'
#' @param window window returned by call to initscr
#' @param ch new background property of the window
#' @param attr attributes of background property
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.bkgd <- function(window,ch,attr=NULL) {
    if (!is.externalptr(window) || !is.character(ch) || nchar(ch) != 1) { return(rcurses.ERR) }
    if (is.double(attr)) { attr <- as.integer(attr) }
    ch <- utf8ToInt(ch)
    if (is.integer(attr)) { ch <- bitwOr(ch,attr) }
    return(.Call('rc_wbkgd',window,ch))
}

#' Interface to rcurses.bkgdset
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.bkgdset <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_bkgdset'))
}

#' Interface to rcurses.border
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.border <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_border'))
}

#' Interface to rcurses.box
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.box <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_box'))
}

# this function has multiple call patterns
#' Interface to rcurses.chgat
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.chgat <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_chgat'))
}

#' Interface to rcurses.clear
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.clear <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    return(.Call('rc_wclear',window))
}

#' Interface to rcurses.clearok
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.clearok <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_clearok'))
}

#' Interface to rcurses.clrtobot
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.clrtobot <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_clrtobot'))
}

#' Interface to rcurses.clrtoeol
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.clrtoeol <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_clrtoeol'))
}

#' Interface to rcurses.cursyncup
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.cursyncup <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_cursyncup'))
}

#' Interface to rcurses.delch
#'
#' @param window window returned by call to initscr
#' @param y y position of deleted character
#' @param x x position of deleted character
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.delch <- function(window,y=NULL,x=NULL) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    if (is.double(y)) { y <- as.integer(y) }
    if (is.double(x)) { x <- as.integer(x) }
    if (is.integer(y) && is.integer(x)) { return(.Call('rc_mvwdelch',window,y,x)) }
    else { return(.Call('rc_wdelch',window)) }
}

#' Interface to rcurses.deleteln
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.deleteln <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_deleteln'))
}

# this function has multiple call patterns
#' Interface to rcurses.derwin
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.derwin <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_derwin'))
}

#' Interface to rcurses.echochar
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.echochar <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_echochar'))
}

#' Interface to rcurses.enclose
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.enclose <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_enclose'))
}

#' Interface to rcurses.erase
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.erase <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_erase'))
}

#' Interface to rcurses.get_wch
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.get_wch <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_get_wch'))
}

#' Interface to rcurses.getbegyx
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getbegyx <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_getbegyx'))
}

#' Interface to rcurses.getbkgd
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getbkgd <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_getbkgd'))
}

#' Interface to rcurses.getch
#'
#' @param window window returned by call to initscr
#' @param y y position of newly painted character
#' @param x x position of newly painted character
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getch <- function(window,y=NULL,x=NULL) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    if (is.double(y)) { y <- as.integer(y) }
    if (is.double(x)) { x <- as.integer(x) }
    if (is.integer(y) && is.integer(x)) {
        return(intToUtf8(.Call('rc_mvwgetch',window,y,x)))
    }
    else {
        return(intToUtf8(.Call('rc_wgetch',window)))
    }
}

#' Interface to rcurses.getkey
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getkey <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_getkey'))
}

#' Interface to rcurses.getmaxyx
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getmaxyx <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    return(.Call('rc_getmaxyx',integer(0),integer(0)))
}

#' Interface to rcurses.getparyx
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getparyx <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_getparyx'))
}

# this function has multiple call patterns
#' Interface to rcurses.getstr
#'
#' @param window window returned by call to initscr
#' @param n maximum number of characters to paint
#' @param y starting y position of newly painted string
#' @param x starting y position of newly painted string
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getstr <- function(window,n=NULL,y=NULL,x=NULL) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
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

#' Interface to rcurses.getyx
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.getyx <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    return(.Call('rc_getyx',integer(0),integer(0)))
}

# this function has multiple call patterns
#' Interface to rcurses.hline
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.hline <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_hline'))
}

#' Interface to rcurses.idcok
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.idcok <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_idcok'))
}

#' Interface to rcurses.idlok
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.idlok <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_idlok'))
}

#' Interface to rcurses.immedok
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.immedok <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_immedok'))
}

#' Interface to rcurses.inch
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.inch <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_inch'))
}

#' Interface to rcurses.insch
#'
#' @param window window returned by call to initscr
#' @param ch newly inserted character
#' @param y y position of newly inserted character
#' @param x x position of newly inserted character
#' @param attr attribute of newly painted character
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.insch <- function(window,ch,y=NULL,x=NULL,attr=NULL) {
    if (!is.externalptr(window) || !is.character(ch) || nchar(ch) != 1) { return(rcurses.ERR) }
    if (is.double(y)) { y <- as.integer(y) }
    if (is.double(x)) { x <- as.integer(x) }
    if (is.double(attr)) { attr <- as.integer(attr) }
    ch <- utf8ToInt(ch)
    if (is.integer(attr)) { ch <- bitwOr(ch,attr) }
    if (is.integer(y) && is.integer(x)) { return(.Call('rc_mvwinsch',window,y,x,ch)) }
    else { return(.Call('rc_winsch',window,ch)) }
}

#' Interface to rcurses.insdelln
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.insdelln <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_insdelln'))
}

#' Interface to rcurses.insertln
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.insertln <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_insertln'))
}

# this function has multiple call patterns
#' Interface to rcurses.insnstr
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.insnstr <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_insnstr'))
}

# this function has multiple call patterns
#' Interface to rcurses.insstr
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.insstr <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_insstr'))
}

# this function has multiple call patterns
#' Interface to rcurses.instr
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.instr <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_instr'))
}

#' Interface to rcurses.is_linetouched
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.is_linetouched <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_is_linetouched'))
}

#' Interface to rcurses.is_wintouched
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.is_wintouched <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_is_wintouched'))
}

#' Interface to rcurses.keypad
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.keypad <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_keypad'))
}

#' Interface to rcurses.leaveok
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.leaveok <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_leaveok'))
}

#' Interface to rcurses.move
#'
#' @param window window returned by call to initscr
#' @param new_y new y position of cursor
#' @param new_x new x position of cursor
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.move <- function(window,new_y,new_x) {
    if (is.double(new_y)) { new_y <- as.integer(new_y) }
    if (is.double(new_x)) { new_x <- as.integer(new_x) }
    if (!is.externalptr(window) || !is.integer(new_y) || !is.integer(new_x)) { return(rcurses.ERR) }
    return(.Call('rc_wmove',window,new_y,new_x))
}

#' Interface to rcurses.mvderwin
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.mvderwin <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_mvderwin'))
}

#' Interface to rcurses.mvwin
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.mvwin <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_mvwin'))
}

#' Interface to rcurses.nodelay
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.nodelay <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_nodelay'))
}

#' Interface to rcurses.notimeout
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.notimeout <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_notimeout'))
}

#' Interface to rcurses.noutrefresh
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.noutrefresh <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_noutrefresh'))
}

#' Interface to rcurses.overlay
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.overlay <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_overlay'))
}

#' Interface to rcurses.overwrite
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.overwrite <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_overwrite'))
}

#' Interface to rcurses.putwin
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.putwin <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_putwin'))
}

#' Interface to rcurses.redrawln
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.redrawln <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_redrawln'))
}

#' Interface to rcurses.redrawwin
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.redrawwin <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_redrawwin'))
}

#' Interface to rcurses.refresh
#'
#' @param window window returned by call to initscr
#' @param pminrow specify the upper left-hand corner of the rectangle to be displayed in the pad
#' @param pmincol specify the upper left-hand corner of the rectangle to be displayed in the pad
#' @param sminrow specify the edges of the rectangle to be displayed on the screen
#' @param smincol specify the edges of the rectangle to be displayed on the screen
#' @param smaxrow specify the edges of the rectangle to be displayed on the screen
#' @param smaxcol specify the edges of the rectangle to be displayed on the screen
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.refresh <- function(window,pminrow=NULL,pmincol=NULL,sminrow=NULL,smincol=NULL,smaxrow=NULL,smaxcol=NULL) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    if (is.integer(pminrow) && is.integer(pmincol) &&
        is.integer(sminrow) && is.integer(smincol) &&
        is.integer(smaxrow) && is.integer(smaxcol)) {
        return(.Call('rc_prefresh',window,pminrow,pmincol,sminrow,smincol,smaxrow,smaxcol)) }
    else { return(.Call('rc_wrefresh',window)) }
}

#' Interface to rcurses.resize
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.resize <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_resize'))
}

#' Interface to rcurses.scroll
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.scroll <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_scroll'))
}

#' Interface to rcurses.scrollok
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.scrollok <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_scrollok'))
}

#' Interface to rcurses.setscrreg
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.setscrreg <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_setscrreg'))
}

#' Interface to rcurses.standend
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.standend <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_standend'))
}

#' Interface to rcurses.standout
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.standout <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_standout'))
}

# this function has multiple call patterns
#' Interface to rcurses.subpad
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.subpad <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_subpad'))
}

# this function has multiple call patterns
#' Interface to rcurses.subwin
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.subwin <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_subwin'))
}

#' Interface to rcurses.syncdown
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.syncdown <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_syncdown'))
}

#' Interface to rcurses.syncok
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.syncok <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_syncok'))
}

#' Interface to rcurses.syncup
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.syncup <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_syncup'))
}

#' Interface to rcurses.timeout
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.timeout <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_timeout'))
}

#' Interface to rcurses.touchline
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.touchline <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_touchline'))
}

#' Interface to rcurses.touchwin
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.touchwin <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_touchwin'))
}

#' Interface to rcurses.untouchwin
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.untouchwin <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_untouchwin'))
}

# this function has multiple call patterns
#' Interface to rcurses.vline
#'
#' @param window window returned by call to initscr
#' @return value from corresponding ncurses C function
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.vline <- function(window) {
    if (!is.externalptr(window)) { return(rcurses.ERR) }
    # TODO: implement this
    return(.Call('rc_vline'))
}

#' Interface to rcurses.ERR
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ERR <- .Call('rc_ERR')

#' Interface to rcurses.OK
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.OK <- .Call('rc_OK')

#' Interface to rcurses.version
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.version <- .Call('rc_version')

#' Interface to rcurses.A_ALTCHARSET
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_ALTCHARSET <- .Call('rc_A_ALTCHARSET')

#' Interface to rcurses.A_BLINK
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_BLINK <- .Call('rc_A_BLINK')

#' Interface to rcurses.A_BOLD
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_BOLD <- .Call('rc_A_BOLD')

#' Interface to rcurses.A_DIM
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_DIM <- .Call('rc_A_DIM')

#' Interface to rcurses.A_INVIS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_INVIS <- .Call('rc_A_INVIS')

#' Interface to rcurses.A_NORMAL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_NORMAL <- .Call('rc_A_NORMAL')

#' Interface to rcurses.A_PROTECT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_PROTECT <- .Call('rc_A_PROTECT')

#' Interface to rcurses.A_REVERSE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_REVERSE <- .Call('rc_A_REVERSE')

#' Interface to rcurses.A_STANDOUT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_STANDOUT <- .Call('rc_A_STANDOUT')

#' Interface to rcurses.A_UNDERLINE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_UNDERLINE <- .Call('rc_A_UNDERLINE')

#' Interface to rcurses.A_HORIZONTAL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_HORIZONTAL <- .Call('rc_A_HORIZONTAL')

#' Interface to rcurses.A_LEFT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_LEFT <- .Call('rc_A_LEFT')

#' Interface to rcurses.A_LOW
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_LOW <- .Call('rc_A_LOW')

#' Interface to rcurses.A_RIGHT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_RIGHT <- .Call('rc_A_RIGHT')

#' Interface to rcurses.A_TOP
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_TOP <- .Call('rc_A_TOP')

#' Interface to rcurses.A_VERTICAL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_VERTICAL <- .Call('rc_A_VERTICAL')

#' Interface to rcurses.A_CHARTEXT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_CHARTEXT <- .Call('rc_A_CHARTEXT')

#' Interface to rcurses.A_ATTRIBUTES
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_ATTRIBUTES <- .Call('rc_A_ATTRIBUTES')

#' Interface to rcurses.A_CHARTEXT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_CHARTEXT <- .Call('rc_A_CHARTEXT')

#' Interface to rcurses.A_COLOR
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.A_COLOR <- .Call('rc_A_COLOR')

#' Interface to rcurses.KEY_MIN
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_MIN <- .Call('rc_KEY_MIN')

#' Interface to rcurses.KEY_BREAK
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_BREAK <- .Call('rc_KEY_BREAK')

#' Interface to rcurses.KEY_DOWN
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_DOWN <- .Call('rc_KEY_DOWN')

#' Interface to rcurses.KEY_UP
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_UP <- .Call('rc_KEY_UP')

#' Interface to rcurses.KEY_LEFT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_LEFT <- .Call('rc_KEY_LEFT')

#' Interface to rcurses.KEY_RIGHT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_RIGHT <- .Call('rc_KEY_RIGHT')

#' Interface to rcurses.KEY_HOME
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_HOME <- .Call('rc_KEY_HOME')

#' Interface to rcurses.KEY_BACKSPACE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_BACKSPACE <- .Call('rc_KEY_BACKSPACE')

#' Interface to rcurses.KEY_F0
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F0 <- .Call('rc_KEY_F0')

#' Interface to rcurses.KEY_F1
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F1 <- .Call('rc_KEY_F1')

#' Interface to rcurses.KEY_F2
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F2 <- .Call('rc_KEY_F2')

#' Interface to rcurses.KEY_F3
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F3 <- .Call('rc_KEY_F3')

#' Interface to rcurses.KEY_F4
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F4 <- .Call('rc_KEY_F4')

#' Interface to rcurses.KEY_F5
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F5 <- .Call('rc_KEY_F5')

#' Interface to rcurses.KEY_F6
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F6 <- .Call('rc_KEY_F6')

#' Interface to rcurses.KEY_F7
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F7 <- .Call('rc_KEY_F7')

#' Interface to rcurses.KEY_F8
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F8 <- .Call('rc_KEY_F8')

#' Interface to rcurses.KEY_F9
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F9 <- .Call('rc_KEY_F9')

#' Interface to rcurses.KEY_F10
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F10 <- .Call('rc_KEY_F10')

#' Interface to rcurses.KEY_F11
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F11 <- .Call('rc_KEY_F11')

#' Interface to rcurses.KEY_F12
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F12 <- .Call('rc_KEY_F12')

#' Interface to rcurses.KEY_F13
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F13 <- .Call('rc_KEY_F13')

#' Interface to rcurses.KEY_F14
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F14 <- .Call('rc_KEY_F14')

#' Interface to rcurses.KEY_F15
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F15 <- .Call('rc_KEY_F15')

#' Interface to rcurses.KEY_F16
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F16 <- .Call('rc_KEY_F16')

#' Interface to rcurses.KEY_F17
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F17 <- .Call('rc_KEY_F17')

#' Interface to rcurses.KEY_F18
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F18 <- .Call('rc_KEY_F18')

#' Interface to rcurses.KEY_F19
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F19 <- .Call('rc_KEY_F19')

#' Interface to rcurses.KEY_F20
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F20 <- .Call('rc_KEY_F20')

#' Interface to rcurses.KEY_F21
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F21 <- .Call('rc_KEY_F21')

#' Interface to rcurses.KEY_F22
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F22 <- .Call('rc_KEY_F22')

#' Interface to rcurses.KEY_F23
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F23 <- .Call('rc_KEY_F23')

#' Interface to rcurses.KEY_F24
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F24 <- .Call('rc_KEY_F24')

#' Interface to rcurses.KEY_F25
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F25 <- .Call('rc_KEY_F25')

#' Interface to rcurses.KEY_F26
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F26 <- .Call('rc_KEY_F26')

#' Interface to rcurses.KEY_F27
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F27 <- .Call('rc_KEY_F27')

#' Interface to rcurses.KEY_F28
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F28 <- .Call('rc_KEY_F28')

#' Interface to rcurses.KEY_F29
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F29 <- .Call('rc_KEY_F29')

#' Interface to rcurses.KEY_F30
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F30 <- .Call('rc_KEY_F30')

#' Interface to rcurses.KEY_F31
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F31 <- .Call('rc_KEY_F31')

#' Interface to rcurses.KEY_F32
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F32 <- .Call('rc_KEY_F32')

#' Interface to rcurses.KEY_F33
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F33 <- .Call('rc_KEY_F33')

#' Interface to rcurses.KEY_F34
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F34 <- .Call('rc_KEY_F34')

#' Interface to rcurses.KEY_F35
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F35 <- .Call('rc_KEY_F35')

#' Interface to rcurses.KEY_F36
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F36 <- .Call('rc_KEY_F36')

#' Interface to rcurses.KEY_F37
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F37 <- .Call('rc_KEY_F37')

#' Interface to rcurses.KEY_F38
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F38 <- .Call('rc_KEY_F38')

#' Interface to rcurses.KEY_F39
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F39 <- .Call('rc_KEY_F39')

#' Interface to rcurses.KEY_F40
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F40 <- .Call('rc_KEY_F40')

#' Interface to rcurses.KEY_F41
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F41 <- .Call('rc_KEY_F41')

#' Interface to rcurses.KEY_F42
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F42 <- .Call('rc_KEY_F42')

#' Interface to rcurses.KEY_F43
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F43 <- .Call('rc_KEY_F43')

#' Interface to rcurses.KEY_F44
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F44 <- .Call('rc_KEY_F44')

#' Interface to rcurses.KEY_F45
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F45 <- .Call('rc_KEY_F45')

#' Interface to rcurses.KEY_F46
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F46 <- .Call('rc_KEY_F46')

#' Interface to rcurses.KEY_F47
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F47 <- .Call('rc_KEY_F47')

#' Interface to rcurses.KEY_F48
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F48 <- .Call('rc_KEY_F48')

#' Interface to rcurses.KEY_F49
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F49 <- .Call('rc_KEY_F49')

#' Interface to rcurses.KEY_F50
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F50 <- .Call('rc_KEY_F50')

#' Interface to rcurses.KEY_F51
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F51 <- .Call('rc_KEY_F51')

#' Interface to rcurses.KEY_F52
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F52 <- .Call('rc_KEY_F52')

#' Interface to rcurses.KEY_F53
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F53 <- .Call('rc_KEY_F53')

#' Interface to rcurses.KEY_F54
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F54 <- .Call('rc_KEY_F54')

#' Interface to rcurses.KEY_F55
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F55 <- .Call('rc_KEY_F55')

#' Interface to rcurses.KEY_F56
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F56 <- .Call('rc_KEY_F56')

#' Interface to rcurses.KEY_F57
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F57 <- .Call('rc_KEY_F57')

#' Interface to rcurses.KEY_F58
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F58 <- .Call('rc_KEY_F58')

#' Interface to rcurses.KEY_F59
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F59 <- .Call('rc_KEY_F59')

#' Interface to rcurses.KEY_F60
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F60 <- .Call('rc_KEY_F60')

#' Interface to rcurses.KEY_F61
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F61 <- .Call('rc_KEY_F61')

#' Interface to rcurses.KEY_F62
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F62 <- .Call('rc_KEY_F62')

#' Interface to rcurses.KEY_F63
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_F63 <- .Call('rc_KEY_F63')

#' Interface to rcurses.KEY_DL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_DL <- .Call('rc_KEY_DL')

#' Interface to rcurses.KEY_IL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_IL <- .Call('rc_KEY_IL')

#' Interface to rcurses.KEY_DC
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_DC <- .Call('rc_KEY_DC')

#' Interface to rcurses.KEY_IC
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_IC <- .Call('rc_KEY_IC')

#' Interface to rcurses.KEY_EIC
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_EIC <- .Call('rc_KEY_EIC')

#' Interface to rcurses.KEY_CLEAR
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_CLEAR <- .Call('rc_KEY_CLEAR')

#' Interface to rcurses.KEY_EOS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_EOS <- .Call('rc_KEY_EOS')

#' Interface to rcurses.KEY_EOL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_EOL <- .Call('rc_KEY_EOL')

#' Interface to rcurses.KEY_SF
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SF <- .Call('rc_KEY_SF')

#' Interface to rcurses.KEY_SR
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SR <- .Call('rc_KEY_SR')

#' Interface to rcurses.KEY_NPAGE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_NPAGE <- .Call('rc_KEY_NPAGE')

#' Interface to rcurses.KEY_PPAGE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_PPAGE <- .Call('rc_KEY_PPAGE')

#' Interface to rcurses.KEY_STAB
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_STAB <- .Call('rc_KEY_STAB')

#' Interface to rcurses.KEY_CTAB
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_CTAB <- .Call('rc_KEY_CTAB')

#' Interface to rcurses.KEY_CATAB
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_CATAB <- .Call('rc_KEY_CATAB')

#' Interface to rcurses.KEY_ENTER
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_ENTER <- .Call('rc_KEY_ENTER')

#' Interface to rcurses.KEY_SRESET
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SRESET <- .Call('rc_KEY_SRESET')

#' Interface to rcurses.KEY_RESET
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_RESET <- .Call('rc_KEY_RESET')

#' Interface to rcurses.KEY_PRINT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_PRINT <- .Call('rc_KEY_PRINT')

#' Interface to rcurses.KEY_LL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_LL <- .Call('rc_KEY_LL')

#' Interface to rcurses.KEY_A1
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_A1 <- .Call('rc_KEY_A1')

#' Interface to rcurses.KEY_A3
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_A3 <- .Call('rc_KEY_A3')

#' Interface to rcurses.KEY_B2
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_B2 <- .Call('rc_KEY_B2')

#' Interface to rcurses.KEY_C1
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_C1 <- .Call('rc_KEY_C1')

#' Interface to rcurses.KEY_C3
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_C3 <- .Call('rc_KEY_C3')

#' Interface to rcurses.KEY_BTAB
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_BTAB <- .Call('rc_KEY_BTAB')

#' Interface to rcurses.KEY_BEG
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_BEG <- .Call('rc_KEY_BEG')

#' Interface to rcurses.KEY_CANCEL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_CANCEL <- .Call('rc_KEY_CANCEL')

#' Interface to rcurses.KEY_CLOSE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_CLOSE <- .Call('rc_KEY_CLOSE')

#' Interface to rcurses.KEY_COMMAND
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_COMMAND <- .Call('rc_KEY_COMMAND')

#' Interface to rcurses.KEY_COPY
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_COPY <- .Call('rc_KEY_COPY')

#' Interface to rcurses.KEY_CREATE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_CREATE <- .Call('rc_KEY_CREATE')

#' Interface to rcurses.KEY_END
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_END <- .Call('rc_KEY_END')

#' Interface to rcurses.KEY_EXIT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_EXIT <- .Call('rc_KEY_EXIT')

#' Interface to rcurses.KEY_FIND
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_FIND <- .Call('rc_KEY_FIND')

#' Interface to rcurses.KEY_HELP
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_HELP <- .Call('rc_KEY_HELP')

#' Interface to rcurses.KEY_MARK
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_MARK <- .Call('rc_KEY_MARK')

#' Interface to rcurses.KEY_MESSAGE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_MESSAGE <- .Call('rc_KEY_MESSAGE')

#' Interface to rcurses.KEY_MOVE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_MOVE <- .Call('rc_KEY_MOVE')

#' Interface to rcurses.KEY_NEXT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_NEXT <- .Call('rc_KEY_NEXT')

#' Interface to rcurses.KEY_OPEN
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_OPEN <- .Call('rc_KEY_OPEN')

#' Interface to rcurses.KEY_OPTIONS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_OPTIONS <- .Call('rc_KEY_OPTIONS')

#' Interface to rcurses.KEY_PREVIOUS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_PREVIOUS <- .Call('rc_KEY_PREVIOUS')

#' Interface to rcurses.KEY_REDO
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_REDO <- .Call('rc_KEY_REDO')

#' Interface to rcurses.KEY_REFERENCE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_REFERENCE <- .Call('rc_KEY_REFERENCE')

#' Interface to rcurses.KEY_REFRESH
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_REFRESH <- .Call('rc_KEY_REFRESH')

#' Interface to rcurses.KEY_REPLACE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_REPLACE <- .Call('rc_KEY_REPLACE')

#' Interface to rcurses.KEY_RESTART
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_RESTART <- .Call('rc_KEY_RESTART')

#' Interface to rcurses.KEY_RESUME
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_RESUME <- .Call('rc_KEY_RESUME')

#' Interface to rcurses.KEY_SAVE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SAVE <- .Call('rc_KEY_SAVE')

#' Interface to rcurses.KEY_SBEG
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SBEG <- .Call('rc_KEY_SBEG')

#' Interface to rcurses.KEY_SCANCEL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SCANCEL <- .Call('rc_KEY_SCANCEL')

#' Interface to rcurses.KEY_SCOMMAND
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SCOMMAND <- .Call('rc_KEY_SCOMMAND')

#' Interface to rcurses.KEY_SCOPY
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SCOPY <- .Call('rc_KEY_SCOPY')

#' Interface to rcurses.KEY_SCREATE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SCREATE <- .Call('rc_KEY_SCREATE')

#' Interface to rcurses.KEY_SDC
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SDC <- .Call('rc_KEY_SDC')

#' Interface to rcurses.KEY_SDL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SDL <- .Call('rc_KEY_SDL')

#' Interface to rcurses.KEY_SELECT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SELECT <- .Call('rc_KEY_SELECT')

#' Interface to rcurses.KEY_SEND
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SEND <- .Call('rc_KEY_SEND')

#' Interface to rcurses.KEY_SEOL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SEOL <- .Call('rc_KEY_SEOL')

#' Interface to rcurses.KEY_SEXIT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SEXIT <- .Call('rc_KEY_SEXIT')

#' Interface to rcurses.KEY_SFIND
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SFIND <- .Call('rc_KEY_SFIND')

#' Interface to rcurses.KEY_SHELP
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SHELP <- .Call('rc_KEY_SHELP')

#' Interface to rcurses.KEY_SHOME
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SHOME <- .Call('rc_KEY_SHOME')

#' Interface to rcurses.KEY_SIC
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SIC <- .Call('rc_KEY_SIC')

#' Interface to rcurses.KEY_SLEFT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SLEFT <- .Call('rc_KEY_SLEFT')

#' Interface to rcurses.KEY_SMESSAGE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SMESSAGE <- .Call('rc_KEY_SMESSAGE')

#' Interface to rcurses.KEY_SMOVE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SMOVE <- .Call('rc_KEY_SMOVE')

#' Interface to rcurses.KEY_SNEXT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SNEXT <- .Call('rc_KEY_SNEXT')

#' Interface to rcurses.KEY_SOPTIONS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SOPTIONS <- .Call('rc_KEY_SOPTIONS')

#' Interface to rcurses.KEY_SPREVIOUS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SPREVIOUS <- .Call('rc_KEY_SPREVIOUS')

#' Interface to rcurses.KEY_SPRINT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SPRINT <- .Call('rc_KEY_SPRINT')

#' Interface to rcurses.KEY_SREDO
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SREDO <- .Call('rc_KEY_SREDO')

#' Interface to rcurses.KEY_SREPLACE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SREPLACE <- .Call('rc_KEY_SREPLACE')

#' Interface to rcurses.KEY_SRIGHT
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SRIGHT <- .Call('rc_KEY_SRIGHT')

#' Interface to rcurses.KEY_SRSUME
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SRSUME <- .Call('rc_KEY_SRSUME')

#' Interface to rcurses.KEY_SSAVE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SSAVE <- .Call('rc_KEY_SSAVE')

#' Interface to rcurses.KEY_SSUSPEND
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SSUSPEND <- .Call('rc_KEY_SSUSPEND')

#' Interface to rcurses.KEY_SUNDO
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SUNDO <- .Call('rc_KEY_SUNDO')

#' Interface to rcurses.KEY_SUSPEND
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_SUSPEND <- .Call('rc_KEY_SUSPEND')

#' Interface to rcurses.KEY_UNDO
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_UNDO <- .Call('rc_KEY_UNDO')

#' Interface to rcurses.KEY_MOUSE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_MOUSE <- .Call('rc_KEY_MOUSE')

#' Interface to rcurses.KEY_RESIZE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_RESIZE <- .Call('rc_KEY_RESIZE')

#' Interface to rcurses.KEY_MAX
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.KEY_MAX <- .Call('rc_KEY_MAX')

#' Interface to rcurses.ACS_BBSS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_BBSS <- .Call('rc_ACS_BBSS')

#' Interface to rcurses.ACS_BLOCK
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_BLOCK <- .Call('rc_ACS_BLOCK')

#' Interface to rcurses.ACS_BOARD
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_BOARD <- .Call('rc_ACS_BOARD')

#' Interface to rcurses.ACS_BSBS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_BSBS <- .Call('rc_ACS_BSBS')

#' Interface to rcurses.ACS_BSSB
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_BSSB <- .Call('rc_ACS_BSSB')

#' Interface to rcurses.ACS_BSSS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_BSSS <- .Call('rc_ACS_BSSS')

#' Interface to rcurses.ACS_BTEE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_BTEE <- .Call('rc_ACS_BTEE')

#' Interface to rcurses.ACS_BULLET
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_BULLET <- .Call('rc_ACS_BULLET')

#' Interface to rcurses.ACS_CKBOARD
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_CKBOARD <- .Call('rc_ACS_CKBOARD')

#' Interface to rcurses.ACS_DARROW
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_DARROW <- .Call('rc_ACS_DARROW')

#' Interface to rcurses.ACS_DEGREE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_DEGREE <- .Call('rc_ACS_DEGREE')

#' Interface to rcurses.ACS_DIAMOND
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_DIAMOND <- .Call('rc_ACS_DIAMOND')

#' Interface to rcurses.ACS_GEQUAL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_GEQUAL <- .Call('rc_ACS_GEQUAL')

#' Interface to rcurses.ACS_HLINE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_HLINE <- .Call('rc_ACS_HLINE')

#' Interface to rcurses.ACS_LANTERN
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_LANTERN <- .Call('rc_ACS_LANTERN')

#' Interface to rcurses.ACS_LARROW
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_LARROW <- .Call('rc_ACS_LARROW')

#' Interface to rcurses.ACS_LEQUAL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_LEQUAL <- .Call('rc_ACS_LEQUAL')

#' Interface to rcurses.ACS_LLCORNER
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_LLCORNER <- .Call('rc_ACS_LLCORNER')

#' Interface to rcurses.ACS_LRCORNER
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_LRCORNER <- .Call('rc_ACS_LRCORNER')

#' Interface to rcurses.ACS_LTEE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_LTEE <- .Call('rc_ACS_LTEE')

#' Interface to rcurses.ACS_NEQUAL
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_NEQUAL <- .Call('rc_ACS_NEQUAL')

#' Interface to rcurses.ACS_PI
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_PI <- .Call('rc_ACS_PI')

#' Interface to rcurses.ACS_PLMINUS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_PLMINUS <- .Call('rc_ACS_PLMINUS')

#' Interface to rcurses.ACS_PLUS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_PLUS <- .Call('rc_ACS_PLUS')

#' Interface to rcurses.ACS_RARROW
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_RARROW <- .Call('rc_ACS_RARROW')

#' Interface to rcurses.ACS_RTEE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_RTEE <- .Call('rc_ACS_RTEE')

#' Interface to rcurses.ACS_S1
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_S1 <- .Call('rc_ACS_S1')

#' Interface to rcurses.ACS_S3
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_S3 <- .Call('rc_ACS_S3')

#' Interface to rcurses.ACS_S7
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_S7 <- .Call('rc_ACS_S7')

#' Interface to rcurses.ACS_S9
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_S9 <- .Call('rc_ACS_S9')

#' Interface to rcurses.ACS_SBBS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_SBBS <- .Call('rc_ACS_SBBS')

#' Interface to rcurses.ACS_SBSB
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_SBSB <- .Call('rc_ACS_SBSB')

#' Interface to rcurses.ACS_SBSS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_SBSS <- .Call('rc_ACS_SBSS')

#' Interface to rcurses.ACS_SSBB
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_SSBB <- .Call('rc_ACS_SSBB')

#' Interface to rcurses.ACS_SSBS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_SSBS <- .Call('rc_ACS_SSBS')

#' Interface to rcurses.ACS_SSSB
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_SSSB <- .Call('rc_ACS_SSSB')

#' Interface to rcurses.ACS_SSSS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_SSSS <- .Call('rc_ACS_SSSS')

#' Interface to rcurses.ACS_STERLING
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_STERLING <- .Call('rc_ACS_STERLING')

#' Interface to rcurses.ACS_TTEE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_TTEE <- .Call('rc_ACS_TTEE')

#' Interface to rcurses.ACS_UARROW
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_UARROW <- .Call('rc_ACS_UARROW')

#' Interface to rcurses.ACS_ULCORNER
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_ULCORNER <- .Call('rc_ACS_ULCORNER')

#' Interface to rcurses.ACS_URCORNER
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_URCORNER <- .Call('rc_ACS_URCORNER')

#' Interface to rcurses.ACS_VLINE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.ACS_VLINE <- .Call('rc_ACS_VLINE')

#' Interface to rcurses.COLOR_BLACK
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.COLOR_BLACK <- .Call('rc_COLOR_BLACK')

#' Interface to rcurses.COLOR_BLUE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.COLOR_BLUE <- .Call('rc_COLOR_BLUE')

#' Interface to rcurses.COLOR_CYAN
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.COLOR_CYAN <- .Call('rc_COLOR_CYAN')

#' Interface to rcurses.COLOR_GREEN
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.COLOR_GREEN <- .Call('rc_COLOR_GREEN')

#' Interface to rcurses.COLOR_MAGENTA
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.COLOR_MAGENTA <- .Call('rc_COLOR_MAGENTA')

#' Interface to rcurses.COLOR_RED
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.COLOR_RED <- .Call('rc_COLOR_RED')

#' Interface to rcurses.COLOR_WHITE
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.COLOR_WHITE <- .Call('rc_COLOR_WHITE')

#' Interface to rcurses.COLOR_YELLOW
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.COLOR_YELLOW <- .Call('rc_COLOR_YELLOW')

#' Interface to rcurses.LINES
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.LINES <- function() {
    .Call('rc_LINES')
}

#' Interface to rcurses.COLS
#'
#' @return value from corresponding ncurses C constant
#' @export
#' @useDynLib rcurses, .registration = TRUE
rcurses.COLS <- .Call('rc_COLS')
