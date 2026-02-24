# Derive Extension Example

Says hello admiral

## Usage

``` r
hello_admiral(hw = TRUE)
```

## Arguments

- hw:

  Boolean determining whether a hello message is returned.

  Permitted values

  :   `TRUE`, `FALSE`

  Default value

  :   `TRUE`

## Value

A message

## Details

In the roxygen documentation you will find tags for family and keywords.
This is to create organized sections for the Reference tab on the
pkgdown website. You can modify the `_pkgdown.yml` as necessary to
create appropriate sections as necessary. Under `./man/roxygen/meta.R`,
you will find where to store these family/keywords. You will also find
custom permitted text under `./man/roxygen/rdx_meta.R` to standardize
argument text.

## Examples

``` r
hello_admiral()
#> Welcome to the admiral family!
hello_admiral(hw = FALSE)
#> <crickets>
```
