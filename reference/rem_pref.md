# Remove Prefix

Remove Prefix

## Usage

``` r
rem_pref(x, pref)
```

## Arguments

- x:

  character; string to change

- pref:

  character; prefix to remove

## Value

character

## Examples

``` r
x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
rem_pref(x, 'pop_')
#> [1] "pop"        "2020_est"   "white_2020" "black_2020"
```
