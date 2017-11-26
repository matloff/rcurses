#include <R.h> // required
#include <R_ext/Rdynload.h>  // defines DllInfo

#include <curses.h>
#include <stdio.h>

static WINDOW* window;

void rc_initscr() {
    window = initscr();
}

void rc_endwin() {
    endwin();
}

void rc_cbreak() {
    cbreak();
}

void rc_nocbreak() {
    nocbreak();
}

void rc_noecho() {
    noecho();
}

void rc_echo() {
    echo();
}

void rc_clear() {
    clear();
}

void rc_getyx(int* row, int* column, int *result) {
    getyx(window,*row, *column);
    result[0] = *row; result[1] = *column;
}

void rc_move(int* row, int* column) {
    move(*row, *column);
}

void rc_addch(char** ch) {
    addch(**ch);
}

void rc_insch(char** ch) {
    insch(**ch);
}

void rc_addstr(char** str) {
    addstr(*str);
}

void rc_mvaddstr(int* row, int* column, char** str) {
    mvaddstr(*row, *column, *str);
}

void rc_getstr(char** str) {
    getstr(*str);
}

void rc_refresh() {
    refresh();
}

void rc_delch() {
    delch();
}

void rc_getch(int* ret) {
    *ret = getch();
}

void rc_inch(char** ret) {
    **ret = inch();
}

void rc_start_color() {
    start_color();
}

void rc_init_pair(int *pair, int *f, int *b) {
    init_pair((short)*pair, (short)*f, (short)*b);
}

void rc_bkgd(int *ch) {
    bkgd((chtype)*ch);
}

void rc_COLOR_BLACK(int *ret) {
    *ret = COLOR_BLACK;
}

void rc_COLOR_RED(int *ret) {
    *ret = COLOR_RED;
}

void rc_COLOR_GREEN(int *ret) {
    *ret = COLOR_GREEN;
}

void rc_COLOR_YELLOW(int *ret) {
    *ret = COLOR_YELLOW;
}

void rc_COLOR_BLUE(int *ret) {
    *ret = COLOR_BLUE;
}

void rc_COLOR_MAGENTA(int *ret) {
    *ret = COLOR_MAGENTA;
}

void rc_COLOR_CYAN(int *ret) {
    *ret = COLOR_CYAN;
}

void rc_COLOR_WHITE(int *ret) {
    *ret = COLOR_WHITE;
}

void rc_COLS(int* ret) {
    *ret = COLS;
}

void rc_LINES(int* ret) {
    *ret = LINES;
}

void rc_A_REVERSE(int* ret) {
    *ret = A_REVERSE;
}

void R_init_test(DllInfo* info) {
    R_registerRoutines(info, NULL, NULL, NULL, NULL);
    R_useDynamicSymbols(info, FALSE);
}
