# Remove Suffix

Remove Suffix

## Usage

``` r
rem_suff(x, suff)
```

## Arguments

- x:

  character; string to change

- suff:

  character; suffix to remove

## Value

character

## Examples

``` r
x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
rem_suff(x, '_2020')
#> [1] "pop"          "pop_2020_est" "pop_white"    "pop_black"   
```
