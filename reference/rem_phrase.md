# Remove Phrase

Remove Phrase

## Usage

``` r
rem_phrase(x, phrase)
```

## Arguments

- x:

  character; string to change

- phrase:

  character; phrase to remove

## Value

character

## Examples

``` r
x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
rem_phrase(x, '_2020')
#> [1] "pop"       "pop_est"   "pop_white" "pop_black"
```
