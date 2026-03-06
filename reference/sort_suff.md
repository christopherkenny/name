# Sort by Suffix

Sort by Suffix

## Usage

``` r
sort_suff(x)
```

## Arguments

- x:

  character; strings to sort

## Value

character

## Examples

``` r
x <- c('pop_2020_est', 'pop_white_2020', 'pop_black_2020', 'pop_white_2021')
sort_suff(x)
#> [1] "pop_white_2020" "pop_black_2020" "pop_white_2021" "pop_2020_est"  
```
