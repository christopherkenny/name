#' List Prefixes
#'
#' @param tb tibble; data to list prefixes in
#'
#' @return character
#' @concept list
#' @export
#' @examples
#' tb <- tibble::tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)
#' list_pref(tb)
list_pref <- function(tb) {
  noms <- names(tb)
  prefs <- sapply(strsplit(noms[grep('_', noms)], '_'), FUN = `[`, 1)
  unique(prefs)
}


#' List Phrases
#'
#' @param tb tibble; data to list prefixes in
#' @param loc number of location to list. For example `1_2_3_4` with `loc = 3` returns 3.
#'
#' @return character
#' @concept list
#' @export
#' @examples
#' tb <- tibble::tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)
#' list_phrase(tb)
list_phrase <- function(tb, loc = 2) {
  noms <- names(tb)
  phrases <- sapply(strsplit(noms[grep('_', noms)], '_'), FUN = `[`, loc)
  Filter(f = Negate(is.na), unique(phrases))
}

#' List Suffixes
#'
#' @param tb tibble; data to list prefixes in
#'
#' @return character
#' @concept list
#' @export
#' @examples
#' tb <- tibble::tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)
#' list_suff(tb)
list_suff <- function(tb) {
  noms <- names(tb)
  pieces <- strsplit(noms[grep('_', noms)], '_')
  lens <- lengths(pieces)
  suffs <- sapply(seq_along(pieces), FUN = function(i) pieces[[i]][lens[i]])
  unique(suffs)
}
