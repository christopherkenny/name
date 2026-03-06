# Sort by Phrase

Sort by Phrase

## Usage

``` r
sort_phrase(x, loc = 2)
```

## Arguments

- x:

  character; strings to sort

- loc:

  number of location to sort by. For example `1_2_3_4` with `loc = 3`
  sorts by 3.

## Value

character

## Examples

``` r
x <- c('pop_2020_est', 'pop_white_2020', 'pop_black_2020', 'pop_white_2021')
sort_phrase(x)
#> [1] "pop_2020_est"   "pop_black_2020" "pop_white_2020" "pop_white_2021"
```
