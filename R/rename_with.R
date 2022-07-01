#' Rename with, but Loudly
#'
#' @inheritParams dplyr::rename_with
#'
#' @return .data renamed
#' @importFrom dplyr everything
#' @concept compare
#' @export
#' @examples
#' tb <- tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)
#' tb %>% rename_with_loud(\(x) rem_suff('_2020', x))
rename_with_loud <- function(.data, .fn, .cols = everything(), ...) {
  old <- names(.data)

  .data <- dplyr::rename_with(.data, .fn, !!.cols, ...)

  new <- names(.data)

  cat(waldo::compare(old, new), '\n')

  .data
}
