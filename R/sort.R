#' Sort by Prefix
#'
#' @param x character; strings to sort
#'
#' @return character
#' @concept sort
#' @export
#' @examples
#' x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
#' sort_pref(x)
sort_pref <- function(x) {
  sort(x)
}

#' Sort by Phrase
#'
#'
#' @param x character; strings to sort
#' @param loc number of location to sort by. For example `1_2_3_4` with `loc = 3` sorts by 3.
#'
#' @return character
#' @concept sort
#' @export
#' @examples
#' x <- c('pop_2020_est', 'pop_white_2020', 'pop_black_2020', 'pop_white_2021')
#' sort_phrase(x)
sort_phrase <- function(x, loc = 2) {
  phrases <- sapply(strsplit(x[grep('_', x)], '_'), FUN = `[`, loc)
  phrases <- Filter(f = Negate(is.na), phrases)
  if (length(phrases) != length(x)) {
    cli::cli_abort('{.fn sort_phrase} only works when every element has a phrase for {.arg loc}.')
  }
  phrase_ord <- sort(unique(phrases))
  phrase_grp <- match(phrases, phrase_ord)
  grp_ct <- c(0, cumsum(unname(table(phrase_grp))))
  new_ord <- vector('integer', length(x))
  for (i in seq_along(unique(phrase_ord))) {
    new_ord[phrase_grp == i] <- seq(grp_ct[i] + 1L, grp_ct[i + 1L])
  }
  x[match(seq_len(length(x)), new_ord)]
}

#' Sort by Suffix
#'
#'
#' @param x character; strings to sort
#'
#' @return character
#' @concept sort
#' @export
#' @examples
#' x <- c('pop_2020_est', 'pop_white_2020', 'pop_black_2020', 'pop_white_2021')
#' sort_suff(x)
sort_suff <- function(x) {
  pieces <- strsplit(x[grep('_', x)], '_')
  lens <- lengths(pieces)
  suffs <- sapply(seq_along(pieces), FUN = function(i) pieces[[i]][lens[i]])
  suff_ord <- sort(unique(suffs))
  suff_grp <- match(suffs, suff_ord)
  grp_ct <- c(0, cumsum(unname(table(suff_grp))))
  new_ord <- vector('integer', length(x))
  for (i in seq_along(unique(suff_ord))) {
    new_ord[suff_grp == i] <- seq(grp_ct[i] + 1L, grp_ct[i + 1L])
  }
  x[match(seq_len(length(x)), new_ord)]
}
