#' Add Prefix
#'
#' @param pref character; prefix to add
#' @param x character; string to change
#'
#' @return character
#' @concept prefix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' add_pref('census_', x)
add_pref <- function(pref, x) {
  paste0(pref, x)
}

#' Remove Prefix
#'
#' @param pref character; prefix to remove
#' @param x character; string to change
#'
#' @return character
#' @concept prefix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' rem_pref('pop_', x)
rem_pref <- function(pref, x) {
  w <- stringr::str_starts(x, pref)
  x[w] <- stringr::str_remove(x[w], pref)
  x
}

#' Replace Prefix
#'
#' @param pref character; prefix to replace
#' @param repl character; prefix to replace with
#' @param x character; string to change
#'
#' @return character
#' @concept prefix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' repl_pref('pop_', 'p_', x)
repl_pref <- function(pref, repl, x){
  w <- stringr::str_starts(x, pref)
  x[w] <- stringr::str_replace(x[w], pref, repl)
  x
}
