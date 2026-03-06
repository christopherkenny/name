# Relocate columns

Relocate columns

## Usage

``` r
relocate_with(
  .data,
  .fn,
  .cols = everything(),
  .before = NULL,
  .after = NULL,
  ...
)
```

## Arguments

- .data:

  A `data.frame` or `tibble`.

- .fn:

  A function to reorder `.cols`.

- .cols:

  Columns to move

- .before, .after:

  Destination of columns. If both selected, errors. If neither, moves to
  right of first selected column.

- ...:

  additional arguments to pass to `.fn`

## Value

And object with same type as `.data`.

## Examples

``` r
data(sd)
sd |> relocate_with(sort)
#> # A tibble: 1 × 38
#>    adv_16  adv_18 adv_20  arv_16  arv_18 arv_20 atg_18_dem_sei atg_18_rep_rav
#>     <dbl>   <dbl>  <dbl>   <dbl>   <dbl>  <dbl>          <dbl>          <dbl>
#> 1 109961. 138961.     NA 244809. 186191.     NA        144576.        177592.
#> # ℹ 30 more variables: cd_2020 <int>, gov_18_dem_sut <dbl>,
#> #   gov_18_rep_noe <dbl>, ndv <dbl>, nrv <dbl>, pop <dbl>, pop_aian <dbl>,
#> #   pop_asian <dbl>, pop_black <dbl>, pop_hisp <dbl>, pop_nhpi <dbl>,
#> #   pop_other <dbl>, pop_two <dbl>, pop_white <dbl>, pre_16_dem_cli <dbl>,
#> #   pre_16_rep_tru <dbl>, sos_18_dem_fre <dbl>, sos_18_rep_bar <dbl>,
#> #   state <chr>, uss_16_dem_wil <dbl>, uss_16_rep_thu <dbl>, vap <dbl>,
#> #   vap_aian <dbl>, vap_asian <dbl>, vap_black <dbl>, vap_hisp <dbl>, …
```
