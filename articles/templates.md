# Explore the admiraltemplate ADaM Templates

## Introduction

This page is a catalog of the ADaM templates available through
[admiraltemplate](https://pharmaverse.github.io/admiraltemplate). These
are lifted from our GitHub repository. The intention is for this to be a
reference for users, should they wish to peruse the code of a specific
template without visiting the
[admiraltemplate](https://pharmaverse.github.io/admiraltemplate)
repository.

As a reminder, you can create a starter script from a template using
[`admiral::use_ad_template()`](https:/pharmaverse.github.io/admiral/v1.4.1/cran-release/reference/use_ad_template.html),
e.g.,

``` r
use_ad_template(
  adam_name = "adxx",
  save_path = "./ad_adxx.R",
  package = "admiraltemplate"
)
```

## ADaM templates

ad_adxx.R

```
# Name: ADXX
#
# Label: XXX
#
# Input: xx, xx, xx

library(admiral)
library(pharmaversesdtm) # Contains example datasets from the CDISC pilot project

# Add your template ADaM script code

# Save output ----

# Change to whichever directory you want to save the dataset in
dir <- tools::R_user_dir("admiraltemplate_templates_data", which = "cache")
if (!file.exists(dir)) {
  # Create the folder
  dir.create(dir, recursive = TRUE, showWarnings = FALSE)
}
save(adxx, file = file.path(dir, "adxx.rda"), compress = "bzip2")
```
