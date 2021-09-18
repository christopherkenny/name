#' Add Suffix
#'
#' @param suff character; suffix to add
#' @param x character; string to change
#'
#' @return character
#' @concept suffix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' add_suff('_cen', x)
add_suff <- function(suff, x){
  paste0(x, suff)
}

#' Remove Suffix
#'
#' @param suff character; suffix to remove
#' @param x character; string to change
#'
#' @return character
#' @concept suffix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' rem_suff('_2020', x)
rem_suff <- function(suff, x){
  nc <- stringr::str_length(suff)
  w <- stringr::str_sub(x, start = -nc) == suff
  x[w] <- stringr::str_sub(x[w], end = -(nc + 1))
  x
}

#' Replace Suffix
#'
#' @param suff character; suffix to replace
#' @param repl character; suffix to replace with
#' @param name character; string to change
#'
#' @return character
#' @concept suffix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' repl_suff('_2020', '_20', x)
repl_suff <- function(suff, repl, x){
  nc <- stringr::str_length(suff)
  w <- stringr::str_sub(x, start = -nc) == suff
  x[w] <- stringr::str_sub(x[w], end = -(nc + 1))
  x[w] <- paste0(x[w], repl)
  x
}
