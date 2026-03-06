# Sort by Prefix

Sort by Prefix

## Usage

``` r
sort_pref(x)
```

## Arguments

- x:

  character; strings to sort

## Value

character

## Examples

``` r
x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
sort_pref(x)
#> [1] "pop"            "pop_2020_est"   "pop_black_2020" "pop_white_2020"
```
