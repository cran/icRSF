#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME:
  Check these declarations against the C/Fortran source code.
*/

  /* .Call calls */
  extern SEXP icRSF_bestsplitC(SEXP, SEXP, SEXP);
extern SEXP icRSF_bestsplitCD(SEXP, SEXP, SEXP);
extern SEXP icRSF_bsplitC(SEXP, SEXP, SEXP);
extern SEXP icRSF_dmat(SEXP, SEXP, SEXP, SEXP, SEXP, SEXP);
extern SEXP icRSF_getrids(SEXP, SEXP);
extern SEXP icRSF_gradlikC(SEXP, SEXP, SEXP);
extern SEXP icRSF_gradlikC0(SEXP, SEXP);
extern SEXP icRSF_gradlikCD(SEXP, SEXP, SEXP);
extern SEXP icRSF_gradlikCD0(SEXP, SEXP);
extern SEXP icRSF_loglikC(SEXP, SEXP, SEXP);
extern SEXP icRSF_loglikC0(SEXP, SEXP);
extern SEXP icRSF_loglikCD(SEXP, SEXP, SEXP);
extern SEXP icRSF_loglikCD0(SEXP, SEXP);
extern SEXP icRSF_scorefun(SEXP, SEXP, SEXP, SEXP);
extern SEXP icRSF_scorefun0(SEXP, SEXP, SEXP);
extern SEXP icRSF_splitpointC(SEXP, SEXP, SEXP);
extern SEXP icRSF_splitpointCD(SEXP, SEXP, SEXP);
extern SEXP icRSF_splitpt(SEXP, SEXP, SEXP);
extern SEXP icRSF_timeMat(SEXP, SEXP, SEXP, SEXP, SEXP);

static const R_CallMethodDef CallEntries[] = {
  {"icRSF_bestsplitC",   (DL_FUNC) &icRSF_bestsplitC,   3},
  {"icRSF_bestsplitCD",  (DL_FUNC) &icRSF_bestsplitCD,  3},
  {"icRSF_bsplitC",      (DL_FUNC) &icRSF_bsplitC,      3},
  {"icRSF_dmat",         (DL_FUNC) &icRSF_dmat,         6},
  {"icRSF_getrids",      (DL_FUNC) &icRSF_getrids,      2},
  {"icRSF_gradlikC",     (DL_FUNC) &icRSF_gradlikC,     3},
  {"icRSF_gradlikC0",    (DL_FUNC) &icRSF_gradlikC0,    2},
  {"icRSF_gradlikCD",    (DL_FUNC) &icRSF_gradlikCD,    3},
  {"icRSF_gradlikCD0",   (DL_FUNC) &icRSF_gradlikCD0,   2},
  {"icRSF_loglikC",      (DL_FUNC) &icRSF_loglikC,      3},
  {"icRSF_loglikC0",     (DL_FUNC) &icRSF_loglikC0,     2},
  {"icRSF_loglikCD",     (DL_FUNC) &icRSF_loglikCD,     3},
  {"icRSF_loglikCD0",    (DL_FUNC) &icRSF_loglikCD0,    2},
  {"icRSF_scorefun",     (DL_FUNC) &icRSF_scorefun,     4},
  {"icRSF_scorefun0",    (DL_FUNC) &icRSF_scorefun0,    3},
  {"icRSF_splitpointC",  (DL_FUNC) &icRSF_splitpointC,  3},
  {"icRSF_splitpointCD", (DL_FUNC) &icRSF_splitpointCD, 3},
  {"icRSF_splitpt",      (DL_FUNC) &icRSF_splitpt,      3},
  {"icRSF_timeMat",      (DL_FUNC) &icRSF_timeMat,      5},
  {NULL, NULL, 0}
};

void R_init_icRSF(DllInfo *dll)
{
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
