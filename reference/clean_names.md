# Clean data frame column names

Renames all columns of a data frame using
[`str_clean_names()`](http://www.christophertkenny.com/name/reference/str_clean_names.md).

## Usage

``` r
clean_names(.data, unique = FALSE)
```

## Arguments

- .data:

  a data frame

- unique:

  logical; if `TRUE`, duplicate names after cleaning are made unique by
  appending `_1`, `_2`, etc. Default is `FALSE`.

## Value

a data frame with cleaned column names

## Examples

``` r
tb <- tibble::tibble(popTotal = 1, `Pop Total` = 2, pop.total = 3)
clean_names(tb)
#> # A tibble: 1 × 3
#>   pop_total pop_total pop_total
#>       <dbl>     <dbl>     <dbl>
#> 1         1         2         3
clean_names(tb, unique = TRUE)
#> # A tibble: 1 × 3
#>   pop_total pop_total_2 pop_total_3
#>       <dbl>       <dbl>       <dbl>
#> 1         1           2           3
```
