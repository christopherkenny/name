#' Remove Phrase
#'
#' @param x character; string to change
#' @param phrase character; phrase to remove
#'
#' @return character
#' @concept phrase
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' rem_phrase(x, '_2020')
rem_phrase <- function(x, phrase){
  x <- stringr::str_remove(x, phrase)
  x[nchar(x) == 0] <- x[nchar(x) == 0]
  x
}

#' Replace Phrase
#'
#' @param x character; string to change
#' @param phrase character; phrase to replace
#' @param repl character; phrase to replace with
#'
#' @return character
#' @concept phrase
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' repl_phrase(x, '_2020', '_20')
repl_phrase <- function(x, phrase, repl){
  stringr::str_replace_all(x, phrase, repl)
}
