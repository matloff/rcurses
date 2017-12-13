#include <curses.h>
#include <R.h>
#include <Rdefines.h>
#include <Rinternals.h>

SEXP rc__nc_free_and_exit() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc__nc_freeall() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc__nc_tracebits() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc__traceattr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc__traceattr2() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc__tracechar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc__tracechtype() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc__tracechtype2() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc__tracedump() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc__tracef() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc__tracemouse() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_add_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_add_wchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_add_wchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_addch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_addchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_addchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_addnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_addnwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_addstr(SEXP str) {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_addwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_alloc_pair() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_assume_default_colors() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_attr_get() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_attr_off() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_attr_on() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_attr_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_attroff() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_attron() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_attrset() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_baudrate() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_beep() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_bkgd(SEXP ch) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = bkgd((chtype)INTEGER(ch)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_bkgdset() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_bkgrnd() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_bkgrndset() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_border() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_border_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_box() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_box_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_can_change_color() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_cbreak() {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = cbreak();
    UNPROTECT(1);
    return result;
}

SEXP rc_chgat() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_clear() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_clearok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_clrtobot() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_clrtoeol() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_color_content() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_COLOR_PAIR(SEXP n) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = COLOR_PAIR((int)INTEGER(n)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_color_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_copywin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_curs_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_curses_version() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_def_prog_mode() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_def_shell_mode() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_define_key() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_del_curterm() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_delay_output() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_delch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_deleteln() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_delscreen() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_delwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_derwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_doupdate() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_dupwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_echo() {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = echo();
    UNPROTECT(1);
    return result;
}

SEXP rc_echo_wchar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_echochar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_endwin() {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = endwin();
    UNPROTECT(1);
    return result;
}

SEXP rc_erase() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_erasechar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_erasewchar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_extended_color_content() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_extended_pair_content() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_extended_slk_color() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_filter() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_find_pair() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_flash() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_flushinp() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_free_pair() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_get_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_get_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getattrs() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getbegx() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getbegy() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getbegyx() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getbkgd() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getbkgrnd() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getcchar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getcurx() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getcury() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getmaxx() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getmaxy() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getmaxyx(SEXP win, SEXP y, SEXP x) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(2));
    getmaxyx((WINDOW *)R_ExternalPtrAddr(win), INTEGER(result)[0], INTEGER(result)[1]);
    UNPROTECT(1);
    return result;
}

SEXP rc_getmouse() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getn_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getparx() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getpary() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getparyx() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getsyx() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_getyx(SEXP win, SEXP y, SEXP x) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(2));
    getyx((WINDOW *)R_ExternalPtrAddr(win), INTEGER(result)[0], INTEGER(result)[1]);
    UNPROTECT(1);
    return result;
}

SEXP rc_halfdelay() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_has_colors() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_has_ic() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_has_il() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_has_key() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_hline() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_hline_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_idcok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_idlok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_immedok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_in_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_in_wchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_in_wchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_inch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_inchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_inchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_init_color() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_init_extended_color() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_init_extended_pair() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_init_pair(SEXP pair, SEXP f, SEXP b) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = init_pair((short)INTEGER(pair)[0], (short)INTEGER(f)[0], (short)INTEGER(b)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_initscr() {
    return R_MakeExternalPtr(initscr(), R_NilValue, R_NilValue);
}

SEXP rc_innstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_innwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_ins_nwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_ins_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_ins_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_insch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_insdelln() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_insertln() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_insnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_insstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_instr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_intrflush() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_inwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_cleared() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_idcok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_idlok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_immedok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_keypad() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_leaveok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_linetouched() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_nodelay() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_notimeout() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_pad() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_scrollok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_subwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_syncok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_term_resized() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_is_wintouched() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_isendwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_key_defined() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_key_name() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_keybound() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_keyname() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_keyok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_keypad() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_killchar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_killwchar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_leaveok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_longname() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mcprint() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_meta() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mouse_trafo() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mouseinterval() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mousemask() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_move() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvadd_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvadd_wchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvadd_wchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvaddch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvaddchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvaddchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvaddnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvaddnwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvaddstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvaddwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvchgat() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvcur() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvdelch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvderwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvget_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvget_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvgetch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvgetn_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvgetnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvgetstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvhline() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvhline_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvin_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvin_wchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvin_wchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvinch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvinchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvinchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvinnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvinnwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvins_nwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvins_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvins_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvinsch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvinsnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvinsstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvinstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvinwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvprintw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvscanw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvvline() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvvline_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwadd_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwadd_wchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwadd_wchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwaddch(SEXP win, SEXP y, SEXP x, SEXP ch) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = mvwaddch((WINDOW *)R_ExternalPtrAddr(win), (int)INTEGER(y)[0], (int)INTEGER(x)[0], (const chtype)INTEGER(ch)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_mvwaddchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwaddchstr(SEXP win, SEXP y, SEXP x, SEXP str) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = mvwaddchstr((WINDOW *)R_ExternalPtrAddr(win), (int)INTEGER(y)[0], (int)INTEGER(x)[0], (const chtype *)INTEGER(str));
    UNPROTECT(1);
    return result;
}

SEXP rc_mvwaddnstr(SEXP win, SEXP y, SEXP x, SEXP str, SEXP n) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = mvwaddnstr((WINDOW *)R_ExternalPtrAddr(win), (int)INTEGER(y)[0], (int)INTEGER(x)[0], (const char *)CHAR(STRING_ELT(str, 0)), (int)INTEGER(n)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_mvwaddnwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwaddstr(SEXP win, SEXP y, SEXP x, SEXP str) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = mvwaddstr((WINDOW *)R_ExternalPtrAddr(win), (int)INTEGER(y)[0], (int)INTEGER(x)[0], (const char *)CHAR(STRING_ELT(str, 0)));
    UNPROTECT(1);
    return result;
}

SEXP rc_mvwaddwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwchgat() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwdelch(SEXP win, SEXP y, SEXP x) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = mvwdelch((WINDOW *)R_ExternalPtrAddr(win), (int)INTEGER(y)[0], (int)INTEGER(x)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_mvwget_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwget_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwgetch(SEXP win, SEXP y, SEXP x) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = mvwgetch((WINDOW *)R_ExternalPtrAddr(win), (int)INTEGER(y)[0], (int)INTEGER(x)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_mvwgetn_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwgetnstr(SEXP win, SEXP y, SEXP x, SEXP str, SEXP n) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = mvwgetnstr((WINDOW *)R_ExternalPtrAddr(win), (int)INTEGER(y)[0], (int)INTEGER(x)[0], (char *)RAW(str), (int)INTEGER(n)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_mvwgetstr(SEXP win, SEXP y, SEXP x, SEXP str) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = mvwgetstr((WINDOW *)R_ExternalPtrAddr(win), (int)INTEGER(y)[0], (int)INTEGER(x)[0], (char *)RAW(str));
    UNPROTECT(1);
    return result;
}

SEXP rc_mvwhline() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwhline_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwin_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwin_wchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwin_wchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwinch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwinchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwinchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwinnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwinnwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwins_nwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwins_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwins_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwinsch(SEXP win, SEXP y, SEXP x, SEXP ch) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = mvwinsch((WINDOW *)R_ExternalPtrAddr(win), (int)INTEGER(y)[0], (int)INTEGER(x)[0], (chtype)INTEGER(ch)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_mvwinsnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwinsstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwinstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwinwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwprintw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwscanw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwvline() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_mvwvline_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_napms() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_newpad() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_newterm() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_newwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_nl() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_nocbreak() {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = nocbreak();
    UNPROTECT(1);
    return result;
}

SEXP rc_nodelay() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_noecho() {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = noecho();
    UNPROTECT(1);
    return result;
}

SEXP rc_nofilter() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_nonl() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_noqiflush() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_noraw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_notimeout() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_overlay() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_overwrite() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_pair_content() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_PAIR_NUMBER() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_pechochar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_pnoutrefresh() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_prefresh(SEXP pad, SEXP pminrow, SEXP pmincol, SEXP sminrow, SEXP smincol, SEXP smaxrow, SEXP smaxcol) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = prefresh((WINDOW *)R_ExternalPtrAddr(pad), (int)INTEGER(pminrow)[0], (int)INTEGER(pmincol)[0], (int)INTEGER(sminrow)[0], (int)INTEGER(smincol)[0], (int)INTEGER(smaxrow)[0], (int)INTEGER(smaxcol)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_printw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_putp() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_putwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_qiflush() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_raw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_redrawwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_refresh() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_reset_prog_mode() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_reset_shell_mode() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_resetty() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_resize_term() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_resizeterm() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_restartterm() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_ripoffline() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_savetty() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_scanw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_scr_dump() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_scr_init() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_scr_restore() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_scr_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_scrl() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_scroll() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_scrollok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_set_curterm() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_set_term() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_setcchar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_setscrreg() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_setsyx() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_setterm() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_setupterm() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_attr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_attr_off() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_attr_on() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_attr_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_attroff() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_attron() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_attrset() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_clear() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_color() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_init() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_label() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_noutrefresh() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_refresh() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_restore() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_slk_touch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_standend() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_standout() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_start_color() {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = start_color();
    UNPROTECT(1);
    return result;
}

SEXP rc_subpad() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_subwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_syncok() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_term_attrs() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_termattrs() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_termname() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tgetent() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tgetflag() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tgetnum() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tgetstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tgoto() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tigetflag() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tigetnum() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tigetstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_timeout() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tiparm() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_touchline() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_touchwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tparm() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_tputs() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_trace() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_typeahead() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_unctrl() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_unget_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_ungetch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_ungetmouse() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_untouchwin() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_use_default_colors() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_use_env() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_use_extended_names() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_use_legacy_coding() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_use_tioctl() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_vid_attr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_vid_puts() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_vidattr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_vidputs() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_vline() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_vline_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_vw_printw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_vw_scanw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_vwprintw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_vwscanw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wadd_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wadd_wchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wadd_wchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_waddch(SEXP win, SEXP ch) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = waddch((WINDOW *)R_ExternalPtrAddr(win), (const chtype)INTEGER(ch)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_waddchnstr(SEXP win, SEXP str, SEXP n) {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_waddchstr(SEXP win, SEXP str) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = waddchstr((WINDOW *)R_ExternalPtrAddr(win), (const chtype *)INTEGER(str));
    UNPROTECT(1);
    return result;
}

SEXP rc_waddnstr(SEXP win, SEXP str, SEXP n) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = waddnstr((WINDOW *)R_ExternalPtrAddr(win), (const char *)CHAR(STRING_ELT(str, 0)), (int)INTEGER(n)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_waddnwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_waddstr(SEXP win, SEXP str) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = waddstr((WINDOW *)R_ExternalPtrAddr(win), (const char *)CHAR(STRING_ELT(str, 0)));
    UNPROTECT(1);
    return result;
}

SEXP rc_waddwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wattr_get() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wattr_off() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wattr_on() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wattr_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wattroff() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wattron() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wattrset() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wbkgd(SEXP win, SEXP ch) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = wbkgd((WINDOW *)R_ExternalPtrAddr(win), (chtype)INTEGER(ch)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_wbkgdset() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wbkgrnd() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wbkgrndset() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wborder() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wborder_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wchgat() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wclear(SEXP win) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = wclear((WINDOW *)R_ExternalPtrAddr(win));
    UNPROTECT(1);
    return result;
}

SEXP rc_wclrtobot() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wclrtoeol() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wcolor_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wcursyncup() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wdelch(SEXP win) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = wdelch((WINDOW *)R_ExternalPtrAddr(win));
    UNPROTECT(1);
    return result;
}

SEXP rc_wdeleteln() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wecho_wchar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wechochar() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wenclose() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_werase() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wget_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wget_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wgetbkgrnd() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wgetch(SEXP win) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = wgetch((WINDOW *)R_ExternalPtrAddr(win));
    UNPROTECT(1);
    return result;
}

SEXP rc_wgetdelay() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wgetn_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wgetnstr(SEXP win, SEXP str, SEXP n) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = wgetnstr((WINDOW *)R_ExternalPtrAddr(win), (char *)RAW(str), (int)INTEGER(n)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_wgetparent() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wgetscrreg() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wgetstr(SEXP win, SEXP str) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = wgetstr((WINDOW *)R_ExternalPtrAddr(win), (char *)RAW(str));
    UNPROTECT(1);
    return result;
}

SEXP rc_whline() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_whline_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_win_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_win_wchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_win_wchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winchnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winchstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winnwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wins_nwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wins_wch() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wins_wstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winsch(SEXP win, SEXP ch) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = winsch((WINDOW *)R_ExternalPtrAddr(win), (chtype)INTEGER(ch)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_winsdelln() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winsertln() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winsnstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winsstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_winwstr() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wmouse_trafo() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wmove(SEXP win, SEXP y, SEXP x) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = wmove((WINDOW *)R_ExternalPtrAddr(win), (int)INTEGER(y)[0], (int)INTEGER(x)[0]);
    UNPROTECT(1);
    return result;
}

SEXP rc_wnoutrefresh() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wprintw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wredrawln() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wrefresh(SEXP win) {
    SEXP result;
    PROTECT(result = NEW_INTEGER(1));
    INTEGER(result)[0] = wrefresh((WINDOW *)R_ExternalPtrAddr(win));
    UNPROTECT(1);
    return result;
}

SEXP rc_wresize() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wscanw() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wscrl() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wsetscrreg() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wstandend() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wstandout() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wsyncdown() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wsyncup() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wtimeout() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wtouchln() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wunctrl() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wvline() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_wvline_set() {
    // TODO: implement this
    return R_NilValue;
}

SEXP rc_ERR() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ERR; UNPROTECT(1); return result; }
SEXP rc_OK() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = OK; UNPROTECT(1); return result; }
SEXP rc_version() { SEXP result; PROTECT(result = NEW_CHARACTER(1)); SET_STRING_ELT(result, 0, mkChar(curses_version())); UNPROTECT(1); return result; }
SEXP rc_A_ALTCHARSET() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_ALTCHARSET; UNPROTECT(1); return result; }
SEXP rc_A_BLINK() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_BLINK; UNPROTECT(1); return result; }
SEXP rc_A_BOLD() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_BOLD; UNPROTECT(1); return result; }
SEXP rc_A_DIM() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_DIM; UNPROTECT(1); return result; }
SEXP rc_A_INVIS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_INVIS; UNPROTECT(1); return result; }
SEXP rc_A_NORMAL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_NORMAL; UNPROTECT(1); return result; }
SEXP rc_A_PROTECT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_PROTECT; UNPROTECT(1); return result; }
SEXP rc_A_REVERSE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_REVERSE; UNPROTECT(1); return result; }
SEXP rc_A_STANDOUT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_STANDOUT; UNPROTECT(1); return result; }
SEXP rc_A_UNDERLINE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_UNDERLINE; UNPROTECT(1); return result; }
SEXP rc_A_HORIZONTAL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_HORIZONTAL; UNPROTECT(1); return result; }
SEXP rc_A_LEFT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_LEFT; UNPROTECT(1); return result; }
SEXP rc_A_LOW() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_LOW; UNPROTECT(1); return result; }
SEXP rc_A_RIGHT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_RIGHT; UNPROTECT(1); return result; }
SEXP rc_A_TOP() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_TOP; UNPROTECT(1); return result; }
SEXP rc_A_VERTICAL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_VERTICAL; UNPROTECT(1); return result; }
SEXP rc_A_CHARTEXT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_CHARTEXT; UNPROTECT(1); return result; }
SEXP rc_A_ATTRIBUTES() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_ATTRIBUTES; UNPROTECT(1); return result; }
SEXP rc_A_COLOR() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = A_COLOR; UNPROTECT(1); return result; }
SEXP rc_KEY_MIN() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_MIN; UNPROTECT(1); return result; }
SEXP rc_KEY_BREAK() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_BREAK; UNPROTECT(1); return result; }
SEXP rc_KEY_DOWN() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_DOWN; UNPROTECT(1); return result; }
SEXP rc_KEY_UP() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_UP; UNPROTECT(1); return result; }
SEXP rc_KEY_LEFT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_LEFT; UNPROTECT(1); return result; }
SEXP rc_KEY_RIGHT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_RIGHT; UNPROTECT(1); return result; }
SEXP rc_KEY_HOME() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_HOME; UNPROTECT(1); return result; }
SEXP rc_KEY_BACKSPACE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_BACKSPACE; UNPROTECT(1); return result; }
SEXP rc_KEY_F0() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_F0; UNPROTECT(1); return result; }
SEXP rc_KEY_F1() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(1); UNPROTECT(1); return result; }
SEXP rc_KEY_F2() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(2); UNPROTECT(1); return result; }
SEXP rc_KEY_F3() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(3); UNPROTECT(1); return result; }
SEXP rc_KEY_F4() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(4); UNPROTECT(1); return result; }
SEXP rc_KEY_F5() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(5); UNPROTECT(1); return result; }
SEXP rc_KEY_F6() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(6); UNPROTECT(1); return result; }
SEXP rc_KEY_F7() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(7); UNPROTECT(1); return result; }
SEXP rc_KEY_F8() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(8); UNPROTECT(1); return result; }
SEXP rc_KEY_F9() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(9); UNPROTECT(1); return result; }
SEXP rc_KEY_F10() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(10); UNPROTECT(1); return result; }
SEXP rc_KEY_F11() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(11); UNPROTECT(1); return result; }
SEXP rc_KEY_F12() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(12); UNPROTECT(1); return result; }
SEXP rc_KEY_F13() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(13); UNPROTECT(1); return result; }
SEXP rc_KEY_F14() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(14); UNPROTECT(1); return result; }
SEXP rc_KEY_F15() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(15); UNPROTECT(1); return result; }
SEXP rc_KEY_F16() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(16); UNPROTECT(1); return result; }
SEXP rc_KEY_F17() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(17); UNPROTECT(1); return result; }
SEXP rc_KEY_F18() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(18); UNPROTECT(1); return result; }
SEXP rc_KEY_F19() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(19); UNPROTECT(1); return result; }
SEXP rc_KEY_F20() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(20); UNPROTECT(1); return result; }
SEXP rc_KEY_F21() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(21); UNPROTECT(1); return result; }
SEXP rc_KEY_F22() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(22); UNPROTECT(1); return result; }
SEXP rc_KEY_F23() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(23); UNPROTECT(1); return result; }
SEXP rc_KEY_F24() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(24); UNPROTECT(1); return result; }
SEXP rc_KEY_F25() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(25); UNPROTECT(1); return result; }
SEXP rc_KEY_F26() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(26); UNPROTECT(1); return result; }
SEXP rc_KEY_F27() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(27); UNPROTECT(1); return result; }
SEXP rc_KEY_F28() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(28); UNPROTECT(1); return result; }
SEXP rc_KEY_F29() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(29); UNPROTECT(1); return result; }
SEXP rc_KEY_F30() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(30); UNPROTECT(1); return result; }
SEXP rc_KEY_F31() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(31); UNPROTECT(1); return result; }
SEXP rc_KEY_F32() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(32); UNPROTECT(1); return result; }
SEXP rc_KEY_F33() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(33); UNPROTECT(1); return result; }
SEXP rc_KEY_F34() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(34); UNPROTECT(1); return result; }
SEXP rc_KEY_F35() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(35); UNPROTECT(1); return result; }
SEXP rc_KEY_F36() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(36); UNPROTECT(1); return result; }
SEXP rc_KEY_F37() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(37); UNPROTECT(1); return result; }
SEXP rc_KEY_F38() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(38); UNPROTECT(1); return result; }
SEXP rc_KEY_F39() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(39); UNPROTECT(1); return result; }
SEXP rc_KEY_F40() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(40); UNPROTECT(1); return result; }
SEXP rc_KEY_F41() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(41); UNPROTECT(1); return result; }
SEXP rc_KEY_F42() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(42); UNPROTECT(1); return result; }
SEXP rc_KEY_F43() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(43); UNPROTECT(1); return result; }
SEXP rc_KEY_F44() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(44); UNPROTECT(1); return result; }
SEXP rc_KEY_F45() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(45); UNPROTECT(1); return result; }
SEXP rc_KEY_F46() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(46); UNPROTECT(1); return result; }
SEXP rc_KEY_F47() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(47); UNPROTECT(1); return result; }
SEXP rc_KEY_F48() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(48); UNPROTECT(1); return result; }
SEXP rc_KEY_F49() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(49); UNPROTECT(1); return result; }
SEXP rc_KEY_F50() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(50); UNPROTECT(1); return result; }
SEXP rc_KEY_F51() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(51); UNPROTECT(1); return result; }
SEXP rc_KEY_F52() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(52); UNPROTECT(1); return result; }
SEXP rc_KEY_F53() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(53); UNPROTECT(1); return result; }
SEXP rc_KEY_F54() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(54); UNPROTECT(1); return result; }
SEXP rc_KEY_F55() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(55); UNPROTECT(1); return result; }
SEXP rc_KEY_F56() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(56); UNPROTECT(1); return result; }
SEXP rc_KEY_F57() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(57); UNPROTECT(1); return result; }
SEXP rc_KEY_F58() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(58); UNPROTECT(1); return result; }
SEXP rc_KEY_F59() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(59); UNPROTECT(1); return result; }
SEXP rc_KEY_F60() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(60); UNPROTECT(1); return result; }
SEXP rc_KEY_F61() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(61); UNPROTECT(1); return result; }
SEXP rc_KEY_F62() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(62); UNPROTECT(1); return result; }
SEXP rc_KEY_F63() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0]= KEY_F(63); UNPROTECT(1); return result; }
SEXP rc_KEY_DL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_DL; UNPROTECT(1); return result; }
SEXP rc_KEY_IL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_IL; UNPROTECT(1); return result; }
SEXP rc_KEY_DC() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_DC; UNPROTECT(1); return result; }
SEXP rc_KEY_IC() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_IC; UNPROTECT(1); return result; }
SEXP rc_KEY_EIC() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_EIC; UNPROTECT(1); return result; }
SEXP rc_KEY_CLEAR() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_CLEAR; UNPROTECT(1); return result; }
SEXP rc_KEY_EOS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_EOS; UNPROTECT(1); return result; }
SEXP rc_KEY_EOL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_EOL; UNPROTECT(1); return result; }
SEXP rc_KEY_SF() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SF; UNPROTECT(1); return result; }
SEXP rc_KEY_SR() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SR; UNPROTECT(1); return result; }
SEXP rc_KEY_NPAGE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_NPAGE; UNPROTECT(1); return result; }
SEXP rc_KEY_PPAGE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_PPAGE; UNPROTECT(1); return result; }
SEXP rc_KEY_STAB() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_STAB; UNPROTECT(1); return result; }
SEXP rc_KEY_CTAB() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_CTAB; UNPROTECT(1); return result; }
SEXP rc_KEY_CATAB() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_CATAB; UNPROTECT(1); return result; }
SEXP rc_KEY_ENTER() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_ENTER; UNPROTECT(1); return result; }
SEXP rc_KEY_SRESET() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SRESET; UNPROTECT(1); return result; }
SEXP rc_KEY_RESET() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_RESET; UNPROTECT(1); return result; }
SEXP rc_KEY_PRINT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_PRINT; UNPROTECT(1); return result; }
SEXP rc_KEY_LL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_LL; UNPROTECT(1); return result; }
SEXP rc_KEY_A1() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_A1; UNPROTECT(1); return result; }
SEXP rc_KEY_A3() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_A3; UNPROTECT(1); return result; }
SEXP rc_KEY_B2() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_B2; UNPROTECT(1); return result; }
SEXP rc_KEY_C1() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_C1; UNPROTECT(1); return result; }
SEXP rc_KEY_C3() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_C3; UNPROTECT(1); return result; }
SEXP rc_KEY_BTAB() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_BTAB; UNPROTECT(1); return result; }
SEXP rc_KEY_BEG() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_BEG; UNPROTECT(1); return result; }
SEXP rc_KEY_CANCEL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_CANCEL; UNPROTECT(1); return result; }
SEXP rc_KEY_CLOSE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_CLOSE; UNPROTECT(1); return result; }
SEXP rc_KEY_COMMAND() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_COMMAND; UNPROTECT(1); return result; }
SEXP rc_KEY_COPY() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_COPY; UNPROTECT(1); return result; }
SEXP rc_KEY_CREATE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_CREATE; UNPROTECT(1); return result; }
SEXP rc_KEY_END() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_END; UNPROTECT(1); return result; }
SEXP rc_KEY_EXIT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_EXIT; UNPROTECT(1); return result; }
SEXP rc_KEY_FIND() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_FIND; UNPROTECT(1); return result; }
SEXP rc_KEY_HELP() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_HELP; UNPROTECT(1); return result; }
SEXP rc_KEY_MARK() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_MARK; UNPROTECT(1); return result; }
SEXP rc_KEY_MESSAGE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_MESSAGE; UNPROTECT(1); return result; }
SEXP rc_KEY_MOVE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_MOVE; UNPROTECT(1); return result; }
SEXP rc_KEY_NEXT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_NEXT; UNPROTECT(1); return result; }
SEXP rc_KEY_OPEN() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_OPEN; UNPROTECT(1); return result; }
SEXP rc_KEY_OPTIONS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_OPTIONS; UNPROTECT(1); return result; }
SEXP rc_KEY_PREVIOUS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_PREVIOUS; UNPROTECT(1); return result; }
SEXP rc_KEY_REDO() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_REDO; UNPROTECT(1); return result; }
SEXP rc_KEY_REFERENCE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_REFERENCE; UNPROTECT(1); return result; }
SEXP rc_KEY_REFRESH() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_REFRESH; UNPROTECT(1); return result; }
SEXP rc_KEY_REPLACE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_REPLACE; UNPROTECT(1); return result; }
SEXP rc_KEY_RESTART() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_RESTART; UNPROTECT(1); return result; }
SEXP rc_KEY_RESUME() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_RESUME; UNPROTECT(1); return result; }
SEXP rc_KEY_SAVE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SAVE; UNPROTECT(1); return result; }
SEXP rc_KEY_SBEG() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SBEG; UNPROTECT(1); return result; }
SEXP rc_KEY_SCANCEL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SCANCEL; UNPROTECT(1); return result; }
SEXP rc_KEY_SCOMMAND() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SCOMMAND; UNPROTECT(1); return result; }
SEXP rc_KEY_SCOPY() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SCOPY; UNPROTECT(1); return result; }
SEXP rc_KEY_SCREATE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SCREATE; UNPROTECT(1); return result; }
SEXP rc_KEY_SDC() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SDC; UNPROTECT(1); return result; }
SEXP rc_KEY_SDL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SDL; UNPROTECT(1); return result; }
SEXP rc_KEY_SELECT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SELECT; UNPROTECT(1); return result; }
SEXP rc_KEY_SEND() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SEND; UNPROTECT(1); return result; }
SEXP rc_KEY_SEOL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SEOL; UNPROTECT(1); return result; }
SEXP rc_KEY_SEXIT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SEXIT; UNPROTECT(1); return result; }
SEXP rc_KEY_SFIND() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SFIND; UNPROTECT(1); return result; }
SEXP rc_KEY_SHELP() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SHELP; UNPROTECT(1); return result; }
SEXP rc_KEY_SHOME() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SHOME; UNPROTECT(1); return result; }
SEXP rc_KEY_SIC() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SIC; UNPROTECT(1); return result; }
SEXP rc_KEY_SLEFT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SLEFT; UNPROTECT(1); return result; }
SEXP rc_KEY_SMESSAGE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SMESSAGE; UNPROTECT(1); return result; }
SEXP rc_KEY_SMOVE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SMOVE; UNPROTECT(1); return result; }
SEXP rc_KEY_SNEXT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SNEXT; UNPROTECT(1); return result; }
SEXP rc_KEY_SOPTIONS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SOPTIONS; UNPROTECT(1); return result; }
SEXP rc_KEY_SPREVIOUS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SPREVIOUS; UNPROTECT(1); return result; }
SEXP rc_KEY_SPRINT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SPRINT; UNPROTECT(1); return result; }
SEXP rc_KEY_SREDO() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SREDO; UNPROTECT(1); return result; }
SEXP rc_KEY_SREPLACE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SREPLACE; UNPROTECT(1); return result; }
SEXP rc_KEY_SRIGHT() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SRIGHT; UNPROTECT(1); return result; }
SEXP rc_KEY_SRSUME() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SRSUME; UNPROTECT(1); return result; }
SEXP rc_KEY_SSAVE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SSAVE; UNPROTECT(1); return result; }
SEXP rc_KEY_SSUSPEND() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SSUSPEND; UNPROTECT(1); return result; }
SEXP rc_KEY_SUNDO() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SUNDO; UNPROTECT(1); return result; }
SEXP rc_KEY_SUSPEND() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_SUSPEND; UNPROTECT(1); return result; }
SEXP rc_KEY_UNDO() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_UNDO; UNPROTECT(1); return result; }
SEXP rc_KEY_MOUSE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_MOUSE; UNPROTECT(1); return result; }
SEXP rc_KEY_RESIZE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_RESIZE; UNPROTECT(1); return result; }
SEXP rc_KEY_MAX() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = KEY_MAX; UNPROTECT(1); return result; }
SEXP rc_ACS_BBSS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_BBSS; UNPROTECT(1); return result; }
SEXP rc_ACS_BLOCK() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_BLOCK; UNPROTECT(1); return result; }
SEXP rc_ACS_BOARD() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_BOARD; UNPROTECT(1); return result; }
SEXP rc_ACS_BSBS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_BSBS; UNPROTECT(1); return result; }
SEXP rc_ACS_BSSB() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_BSSB; UNPROTECT(1); return result; }
SEXP rc_ACS_BSSS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_BSSS; UNPROTECT(1); return result; }
SEXP rc_ACS_BTEE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_BTEE; UNPROTECT(1); return result; }
SEXP rc_ACS_BULLET() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_BULLET; UNPROTECT(1); return result; }
SEXP rc_ACS_CKBOARD() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_CKBOARD; UNPROTECT(1); return result; }
SEXP rc_ACS_DARROW() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_DARROW; UNPROTECT(1); return result; }
SEXP rc_ACS_DEGREE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_DEGREE; UNPROTECT(1); return result; }
SEXP rc_ACS_DIAMOND() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_DIAMOND; UNPROTECT(1); return result; }
SEXP rc_ACS_GEQUAL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_GEQUAL; UNPROTECT(1); return result; }
SEXP rc_ACS_HLINE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_HLINE; UNPROTECT(1); return result; }
SEXP rc_ACS_LANTERN() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_LANTERN; UNPROTECT(1); return result; }
SEXP rc_ACS_LARROW() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_LARROW; UNPROTECT(1); return result; }
SEXP rc_ACS_LEQUAL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_LEQUAL; UNPROTECT(1); return result; }
SEXP rc_ACS_LLCORNER() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_LLCORNER; UNPROTECT(1); return result; }
SEXP rc_ACS_LRCORNER() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_LRCORNER; UNPROTECT(1); return result; }
SEXP rc_ACS_LTEE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_LTEE; UNPROTECT(1); return result; }
SEXP rc_ACS_NEQUAL() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_NEQUAL; UNPROTECT(1); return result; }
SEXP rc_ACS_PI() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_PI; UNPROTECT(1); return result; }
SEXP rc_ACS_PLMINUS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_PLMINUS; UNPROTECT(1); return result; }
SEXP rc_ACS_PLUS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_PLUS; UNPROTECT(1); return result; }
SEXP rc_ACS_RARROW() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_RARROW; UNPROTECT(1); return result; }
SEXP rc_ACS_RTEE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_RTEE; UNPROTECT(1); return result; }
SEXP rc_ACS_S1() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_S1; UNPROTECT(1); return result; }
SEXP rc_ACS_S3() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_S3; UNPROTECT(1); return result; }
SEXP rc_ACS_S7() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_S7; UNPROTECT(1); return result; }
SEXP rc_ACS_S9() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_S9; UNPROTECT(1); return result; }
SEXP rc_ACS_SBBS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_SBBS; UNPROTECT(1); return result; }
SEXP rc_ACS_SBSB() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_SBSB; UNPROTECT(1); return result; }
SEXP rc_ACS_SBSS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_SBSS; UNPROTECT(1); return result; }
SEXP rc_ACS_SSBB() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_SSBB; UNPROTECT(1); return result; }
SEXP rc_ACS_SSBS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_SSBS; UNPROTECT(1); return result; }
SEXP rc_ACS_SSSB() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_SSSB; UNPROTECT(1); return result; }
SEXP rc_ACS_SSSS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_SSSS; UNPROTECT(1); return result; }
SEXP rc_ACS_STERLING() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_STERLING; UNPROTECT(1); return result; }
SEXP rc_ACS_TTEE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_TTEE; UNPROTECT(1); return result; }
SEXP rc_ACS_UARROW() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_UARROW; UNPROTECT(1); return result; }
SEXP rc_ACS_ULCORNER() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_ULCORNER; UNPROTECT(1); return result; }
SEXP rc_ACS_URCORNER() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_URCORNER; UNPROTECT(1); return result; }
SEXP rc_ACS_VLINE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = ACS_VLINE; UNPROTECT(1); return result; }
SEXP rc_COLOR_BLACK() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = COLOR_BLACK; UNPROTECT(1); return result; }
SEXP rc_COLOR_BLUE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = COLOR_BLUE; UNPROTECT(1); return result; }
SEXP rc_COLOR_CYAN() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = COLOR_CYAN; UNPROTECT(1); return result; }
SEXP rc_COLOR_GREEN() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = COLOR_GREEN; UNPROTECT(1); return result; }
SEXP rc_COLOR_MAGENTA() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = COLOR_MAGENTA; UNPROTECT(1); return result; }
SEXP rc_COLOR_RED() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = COLOR_RED; UNPROTECT(1); return result; }
SEXP rc_COLOR_WHITE() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = COLOR_WHITE; UNPROTECT(1); return result; }
SEXP rc_COLOR_YELLOW() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = COLOR_YELLOW; UNPROTECT(1); return result; }
SEXP rc_LINES() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = LINES; UNPROTECT(1); return result; }
SEXP rc_COLS() { SEXP result; PROTECT(result = NEW_INTEGER(1)); INTEGER(result)[0] = COLS; UNPROTECT(1); return result; }
