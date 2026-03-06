# Compare the Names of Two Objects

Compare the Names of Two Objects

## Usage

``` r
compare_names(x, y)
```

## Arguments

- x:

  first object

- y:

  second object

## Value

character vector of differences, invisibly

## Examples

``` r
s <- tibble::tibble(a = 1, b = 2, d = 3)
t <- tibble::tibble(a = 1, d = 3, c = 2)
compare_names(s, t)
#> 2 names different.
#> • b <-> d
#> • d <-> c
```
