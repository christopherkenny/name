# name 0.1.0

* `compare_names()` now errors informatively when `x` and `y` have different numbers of names, rather than silently recycling and producing incorrect output.
* `rem_phrase()` now removes all occurrences of `phrase` in each string (previously only the first occurrence was removed).
* `rem_phrase()`, `repl_phrase()`, `rem_pref()`, and `repl_pref()` now treat their pattern arguments as literal strings rather than regular expressions, making them safe to use with column names that contain regex metacharacters (e.g., `.`).
* `relocate_with()` now works correctly when `.cols` selects a subset of columns (previously errored with a missing value).
* `sort_suff()` now correctly handles input that contains a mix of underscore and non-underscore strings (previously produced duplicated and missing elements due to a vector recycling bug).

# name 0.0.2

* Added a `NEWS.md` file to track changes to the package.
* Updates readme, logo, and maintainer email.
* Fixes NA in `sort_suff()`.
