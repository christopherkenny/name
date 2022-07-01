#' Rename with, but Loudly
#'
#' @inheritParams dplyr::rename_with
#'
#' @return .data renamed
#' @importFrom dplyr everything
#' @concept compare
#' @export
#' @examples
#' tb <- tibble::tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)
#' rename_with_loud(tb, \(x) rem_suff(x, '_2020'))
rename_with_loud <- function(.data, .fn, .cols = everything(), ...) {
  old <- names(.data)

  .data <- dplyr::rename_with(.data, .fn, !!.cols, ...)

  new <- names(.data)

  cat(waldo::compare(old, new), '\n')

  .data
}
