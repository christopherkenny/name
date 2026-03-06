# List Phrases

List Phrases

## Usage

``` r
list_phrase(tb, loc = 2)
```

## Arguments

- tb:

  tibble; data to list prefixes in

- loc:

  number of location to list. For example `1_2_3_4` with `loc = 3`
  returns 3.

## Value

character

## Examples

``` r
tb <- tibble::tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)
list_phrase(tb)
#> [1] "2020"  "white" "black"
```
