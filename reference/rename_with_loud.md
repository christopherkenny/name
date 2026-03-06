# Rename with, but Loudly

Rename with, but Loudly

## Usage

``` r
rename_with_loud(.data, .fn, .cols = everything(), ...)
```

## Arguments

- .data:

  A data frame, data frame extension (e.g. a tibble), or a lazy data
  frame (e.g. from dbplyr or dtplyr). See *Methods*, below, for more
  details.

- .fn:

  A function used to transform the selected `.cols`. Should return a
  character vector the same length as the input.

- .cols:

  \<[`tidy-select`](https://dplyr.tidyverse.org/reference/dplyr_tidy_select.html)\>
  Columns to rename; defaults to all columns.

- ...:

  For [`rename()`](https://dplyr.tidyverse.org/reference/rename.html):
  \<[`tidy-select`](https://dplyr.tidyverse.org/reference/dplyr_tidy_select.html)\>
  Use `new_name = old_name` to rename selected variables.

  For
  [`rename_with()`](https://dplyr.tidyverse.org/reference/rename.html):
  additional arguments passed onto `.fn`.

## Value

.data renamed

## Examples

``` r
tb <- tibble::tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)
rename_with_loud(tb, \(x) rem_suff(x, '_2020'))
#> Changed 2 names.
#> • pop_white_2020 -> pop_white
#> • pop_black_2020 -> pop_black
#> # A tibble: 1 × 4
#>     pop pop_2020_est pop_white pop_black
#>   <dbl>        <dbl>     <dbl>     <dbl>
#> 1    10            9         8         2
```
