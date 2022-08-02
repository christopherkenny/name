#' Compare the Names of Two Objects
#'
#' @param x first object
#' @param y second object
#'
#' @return character vector of differences, invisibly
#' @concept compare
#' @export
#'
#' @examples
#' s <- tibble::tibble(a = 1, b = 2, d = 3)
#' t <- tibble::tibble(a = 1, d = 3, c = 2)
#' compare_names(s, t)
compare_names <- function(x, y) {
  nom_x <- names(x)
  nom_y <- names(y)

  v <- which(nom_x != nom_y)

  ul <- cli::cli_ul()
  cli::cli_text('{length(v)} name{?s} different.')
  lapply(seq_along(v), function(i) {
    cli::cli_li(paste0(nom_x[v[i]], ' <-> ', nom_y[v[i]]))
  })
  cli::cli_end(ul)

  out <- nom_y[v]
  names(out) <- nom_x[v]
  invisible(out)
}
