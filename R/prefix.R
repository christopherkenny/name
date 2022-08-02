#' Add Prefix
#'
#' @param x character; string to change
#' @param pref character; prefix to add
#'
#' @return character
#' @concept prefix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' add_pref(x, 'census_')
add_pref <- function(x, pref) {
  paste0(pref, x)
}

#' Remove Prefix
#'
#' @param x character; string to change
#' @param pref character; prefix to remove
#'
#' @return character
#' @concept prefix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' rem_pref(x, 'pop_')
rem_pref <- function(x, pref) {
  w <- startsWith(x, pref)
  x[w] <- stringr::str_remove(x[w], pref)
  x
}

#' Replace Prefix
#'
#' @param x character; string to change
#' @param pref character; prefix to replace
#' @param repl character; prefix to replace with
#'
#' @return character
#' @concept prefix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' repl_pref(x, 'pop_', 'p_')
repl_pref <- function(x, pref, repl){
  w <- stringr::str_starts(x, pref)
  x[w] <- stringr::str_replace(x[w], pref, repl)
  x
}
