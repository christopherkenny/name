#' Add Suffix
#'
#' @param x character; string to change
#' @param suff character; suffix to add
#'
#' @return character
#' @concept suffix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' add_suff(x, '_cen')
add_suff <- function(x, suff){
  paste0(x, suff)
}

#' Remove Suffix
#'
#' @param x character; string to change
#' @param suff character; suffix to remove
#'
#' @return character
#' @concept suffix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' rem_suff(x, '_2020')
rem_suff <- function(x, suff){
  nc <- stringr::str_length(suff)
  w <- stringr::str_sub(x, start = -nc) == suff
  x[w] <- stringr::str_sub(x[w], end = -(nc + 1))
  x
}

#' Replace Suffix
#'
#' @param x character; string to change
#' @param suff character; suffix to replace
#' @param repl character; suffix to replace with
#'
#' @return character
#' @concept suffix
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' repl_suff(x, '_2020', '_20')
repl_suff <- function(x, suff, repl){
  nc <- stringr::str_length(suff)
  w <- stringr::str_sub(x, start = -nc) == suff
  x[w] <- stringr::str_sub(x[w], end = -(nc + 1))
  x[w] <- paste0(x[w], repl)
  x
}
