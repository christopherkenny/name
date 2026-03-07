# Changelog

## name 0.1.0

- [`clean_names()`](http://www.christophertkenny.com/name/reference/clean_names.md)
  is a new function that renames all columns of a data frame to clean
  snake_case names, handling camelCase, spaces, dots, dashes, and other
  special characters. Set `unique = TRUE` to disambiguate duplicate
  names after cleaning by appending `_1`, `_2`, etc.
- [`str_clean_names()`](http://www.christophertkenny.com/name/reference/str_clean_names.md)
  is a new function that converts a character vector to clean snake_case
  names with the same transformations as
  [`clean_names()`](http://www.christophertkenny.com/name/reference/clean_names.md).
- [`compare_names()`](http://www.christophertkenny.com/name/reference/compare_names.md)
  now errors informatively when `x` and `y` have different numbers of
  names, rather than silently recycling and producing incorrect output.
- [`rem_phrase()`](http://www.christophertkenny.com/name/reference/rem_phrase.md)
  now removes all occurrences of `phrase` in each string (previously
  only the first occurrence was removed).
- [`rem_phrase()`](http://www.christophertkenny.com/name/reference/rem_phrase.md),
  [`repl_phrase()`](http://www.christophertkenny.com/name/reference/repl_phrase.md),
  [`rem_pref()`](http://www.christophertkenny.com/name/reference/rem_pref.md),
  and
  [`repl_pref()`](http://www.christophertkenny.com/name/reference/repl_pref.md)
  now treat their pattern arguments as literal strings rather than
  regular expressions, making them safe to use with column names that
  contain regex metacharacters (e.g., `.`).
- [`relocate_with()`](http://www.christophertkenny.com/name/reference/relocate_with.md)
  now works correctly when `.cols` selects a subset of columns
  (previously errored with a missing value).
- [`sort_suff()`](http://www.christophertkenny.com/name/reference/sort_suff.md)
  now correctly handles input that contains a mix of underscore and
  non-underscore strings (previously produced duplicated and missing
  elements due to a vector recycling bug).

## name 0.0.2

CRAN release: 2025-09-03

- Added a `NEWS.md` file to track changes to the package.
- Updates readme, logo, and maintainer email.
- Fixes NA in
  [`sort_suff()`](http://www.christophertkenny.com/name/reference/sort_suff.md).
