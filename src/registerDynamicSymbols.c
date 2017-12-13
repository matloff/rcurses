#include <R.h>
#include <R_ext/Rdynload.h>

void R_init_rcurses(DllInfo* info) {
    R_registerRoutines(info, NULL, NULL, NULL, NULL);
    R_useDynamicSymbols(info, TRUE);
}
