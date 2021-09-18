#' Remove Phrase
#'
#' @param phrase character; phrase to remove
#' @param x character; string to change
#'
#' @return character
#' @concept phrase
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' rem_phrase('_2020', x)
rem_phrase <- function(phrase, x){
  input <- x
  x <- stringr::str_remove(x, phrase)
  x[nchar(x) == 0] <- input[nchar(x) == 0]
  x
}

#' Replace Phrase
#'
#' @param phrase character; phrase to replace
#' @param repl character; phrase to replace with
#' @param x character; string to change
#'
#' @return character
#' @concept phrase
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' repl_phrase('_2020', '_20', x)
repl_phrase <- function(phrase, repl, x){
  input <- x
  x <- stringr::str_replace_all(x, phrase, repl)
  x
}
