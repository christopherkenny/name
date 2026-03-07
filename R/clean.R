#' Clean a character vector of names
#'
#' Converts a character vector to clean snake_case names. Transformations
#' applied in order:
#' - Accented and non-ASCII characters transliterated to ASCII equivalents
#' - camelCase split at lowercase-to-uppercase boundaries
#' - `%` replaced with `_pct_`, `#` replaced with `_n_`
#' - Remaining non-alphanumeric characters replaced with `_`
#' - Consecutive underscores collapsed to one
#' - Leading and trailing underscores removed
#' - Converted to lowercase
#'
#' @param x character; strings to clean
#' @param unique logical; if `TRUE`, duplicate names after cleaning are made
#'   unique by appending `_1`, `_2`, etc. Default is `FALSE`.
#'
#' @return character
#' @concept clean
#' @export
#' @examples
#' str_clean_names(c('popTotal', 'Pop.Total', 'POP TOTAL', 'pop_total'))
#' str_clean_names(c('pop', 'pop', 'total'), unique = TRUE)
str_clean_names <- function(x, unique = FALSE) {
  out <- x |>
    stringi::stri_trans_general('Any-Latin; Latin-ASCII') |>
    stringr::str_replace_all('([a-z])([A-Z])', '\\1_\\2') |>
    stringr::str_replace_all(stringr::fixed('%'), '_pct_') |>
    stringr::str_replace_all(stringr::fixed('#'), '_n_') |>
    stringr::str_replace_all('[^a-zA-Z0-9]', '_') |>
    stringr::str_replace_all('_+', '_') |>
    stringr::str_remove('^_+') |>
    stringr::str_remove('_+$') |>
    tolower()
  if (unique) {
    tab <- table(out)
    for (nm in names(tab[tab > 1L])) {
      idx <- which(out == nm)
      out[idx[-1]] <- paste0(nm, '_', seq_along(idx[-1]) + 1L)
    }
  }
  out
}

#' Clean data frame column names
#'
#' Renames all columns of a data frame using [str_clean_names()].
#'
#' @param .data a data frame
#' @param unique logical; if `TRUE`, duplicate names after cleaning are made
#'   unique by appending `_1`, `_2`, etc. Default is `FALSE`.
#'
#' @return a data frame with cleaned column names
#' @concept clean
#' @export
#' @examples
#' tb <- tibble::tibble(popTotal = 1, `Pop Total` = 2, pop.total = 3)
#' clean_names(tb)
#' clean_names(tb, unique = TRUE)
clean_names <- function(.data, unique = FALSE) {
  rlang::set_names(.data, str_clean_names(names(.data), unique = unique))
}
