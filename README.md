
<!-- README.md is generated from README.Rmd. Please edit that file -->

# name <img src='man/figures/logo.png' align="right" height="133" />

<!-- badges: start -->
<!-- badges: end -->

Organizes functions for `dplyr::rename_with()` in one place with testing
and basic documentation.

## Installation

<!--
You can install the released version of name from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("name")
```
-->

You can install the current version of `name` from GitHub.

``` r
devtools::install_github('name')
```

## Example

``` r
library(name)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
data(mtcars)
```

We can add a prefix:

``` r
mtcars <- mtcars %>% 
  rename_with(\(x) add_pref(x, 'pref_'))
```

And similarly a suffix:

``` r
mtcars <- mtcars %>% 
  rename_with(\(x) add_suff(x, '_suff'))
```

Or a replace a phrase:

``` r
mtcars <- mtcars %>% 
  rename_with(\(x) repl_phrase(x, '_hp', '_hitpoints'))
```
