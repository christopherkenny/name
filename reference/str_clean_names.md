# Clean a character vector of names

Converts a character vector to clean snake_case names. Transformations
applied in order:

- Accented and non-ASCII characters transliterated to ASCII equivalents

- camelCase split at lowercase-to-uppercase boundaries

- `%` replaced with `_pct_`, `#` replaced with `_n_`

- Remaining non-alphanumeric characters replaced with `_`

- Consecutive underscores collapsed to one

- Leading and trailing underscores removed

- Converted to lowercase

## Usage

``` r
str_clean_names(x, unique = FALSE)
```

## Arguments

- x:

  character; strings to clean

- unique:

  logical; if `TRUE`, duplicate names after cleaning are made unique by
  appending `_1`, `_2`, etc. Default is `FALSE`.

## Value

character

## Examples

``` r
str_clean_names(c('popTotal', 'Pop.Total', 'POP TOTAL', 'pop_total'))
#> [1] "pop_total" "pop_total" "pop_total" "pop_total"
str_clean_names(c('pop', 'pop', 'total'), unique = TRUE)
#> [1] "pop"   "pop_2" "total"
```
