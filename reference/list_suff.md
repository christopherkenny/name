# List Suffixes

List Suffixes

## Usage

``` r
list_suff(tb)
```

## Arguments

- tb:

  tibble; data to list prefixes in

## Value

character

## Examples

``` r
tb <- tibble::tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)
list_suff(tb)
#> [1] "est"  "2020"
```
