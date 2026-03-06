# Add Prefix

Add Prefix

## Usage

``` r
add_pref(x, pref)
```

## Arguments

- x:

  character; string to change

- pref:

  character; prefix to add

## Value

character

## Examples

``` r
x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
add_pref(x, 'census_')
#> [1] "census_pop"            "census_pop_2020_est"   "census_pop_white_2020"
#> [4] "census_pop_black_2020"
```
