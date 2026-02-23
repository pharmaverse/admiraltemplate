# Dataset: xx
# Description: xx test SDTM dataset for xx

# Add code to create test dataset xx and update this in `R/data.R`

library(tibble) # nolint

xx <- tribble(
  ~USUBJID,
  "1",
)

# Save dataset ----
usethis::use_data(xx, overwrite = TRUE)
