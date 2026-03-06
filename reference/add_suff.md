# Add Suffix

Add Suffix

## Usage

``` r
add_suff(x, suff)
```

## Arguments

- x:

  character; string to change

- suff:

  character; suffix to add

## Value

character

## Examples

``` r
x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
add_suff(x, '_cen')
#> [1] "pop_cen"            "pop_2020_est_cen"   "pop_white_2020_cen"
#> [4] "pop_black_2020_cen"
```
