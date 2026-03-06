# Replace Suffix

Replace Suffix

## Usage

``` r
repl_suff(x, suff, repl)
```

## Arguments

- x:

  character; string to change

- suff:

  character; suffix to replace

- repl:

  character; suffix to replace with

## Value

character

## Examples

``` r
x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
repl_suff(x, '_2020', '_20')
#> [1] "pop"          "pop_2020_est" "pop_white_20" "pop_black_20"
```
