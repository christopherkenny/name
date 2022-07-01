#' Compare the Names of Two Objects
#'
#' @param x first object
#' @param y second object
#'
#' @return character vector of differences
#' @concept compare
#' @export
#'
#' @examples
#' s <- tibble::tibble(a = 1, b = 2, d = 3)
#' t <- tibble::tibble(a = 1, d = 3, c = 2)
#' compare_names(s, t)
compare_names <- function(x, y) {
  waldo::compare(names(x), names(y),
                 x_arg = deparse(substitute(x)),
                 y_arg = deparse(substitute(y)))
}
