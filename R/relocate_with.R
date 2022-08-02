#' Relocate columns
#'
#' @param .data A `data.frame` or  `tibble`.
#' @param .fn A function to reorder `.cols`.
#' @param .cols Columns to move
#' @param .before,.after Destination of columns. If both selected, errors. If
#' neither, moves to right of first selected column.
#' @param ... additional arguments to pass to `.fn`
#'
#' @return And object with same type as `.data`.
#' @export
#'
#' @examples
#' data(sd)
#' sd |> relocate_with(sort)
relocate_with <- function(.data, .fn, .cols = everything(), .before = NULL, .after = NULL, ...) {
  UseMethod('relocate_with')
}

#' @export
relocate_with.data.frame <- function(.data, .fn, .cols = everything(), .before = NULL, .after = NULL, ...) {
  # brings together patterns from dplyr::rename_with and dplyr::relocate
  .fn <- rlang::as_function(.fn)
  cols <- tidyselect::eval_select(rlang::enquo(.cols), .data)
  noms <- .fn(names(.data)[cols], ...)
  cols <- cols[match(noms, names(.data))]

  if (length(cols) == 0) {
    return(.data)
  }

  cols <- unique(cols)

  .before <- rlang::enquo(.before)
  .after <- rlang::enquo(.after)

  first_col <- min(cols)
  if (!rlang::quo_is_null(.before) && !rlang::quo_is_null(.after)) {
    cli::cli_abort('May not supply both of {.arg .before} and {.arg .after}.')
  } else if (!rlang::quo_is_null(.before)) {
    first_col <- min(unname(tidyselect::eval_select(.before, .data)))
    if (!first_col %in% cols) {
      cols <- c(cols, first_col)
    }
  } else if (!rlang::quo_is_null(.after)) {
    first_col <- max(unname(tidyselect::eval_select(.after, .data)))
    if (!first_col %in% cols) {
      cols <- c(first_col, cols)
    }
  }

  before <- setdiff(rlang::seq2(1, first_col - 1), cols)
  after <- setdiff(rlang::seq2(first_col + 1, ncol(.data)), cols)

  .data[c(before, cols, after)]
}
