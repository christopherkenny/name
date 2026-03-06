# Replace Prefix

Replace Prefix

## Usage

``` r
repl_pref(x, pref, repl)
```

## Arguments

- x:

  character; string to change

- pref:

  character; prefix to replace

- repl:

  character; prefix to replace with

## Value

character

## Examples

``` r
x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
repl_pref(x, 'pop_', 'p_')
#> [1] "pop"          "p_2020_est"   "p_white_2020" "p_black_2020"
```
