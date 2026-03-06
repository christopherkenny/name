# List Prefixes

List Prefixes

## Usage

``` r
list_pref(tb)
```

## Arguments

- tb:

  tibble; data to list prefixes in

## Value

character

## Examples

``` r
tb <- tibble::tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)
list_pref(tb)
#> [1] "pop"
```
