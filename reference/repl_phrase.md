# Replace Phrase

Replace Phrase

## Usage

``` r
repl_phrase(x, phrase, repl)
```

## Arguments

- x:

  character; string to change

- phrase:

  character; phrase to replace

- repl:

  character; phrase to replace with

## Value

character

## Examples

``` r
x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
repl_phrase(x, '_2020', '_20')
#> [1] "pop"          "pop_20_est"   "pop_white_20" "pop_black_20"
```
