# Dataset: xx
# Description: xx test SDTM dataset for xx

# Add code to create test dataset xx and update this in `R/data.R`

# NOTE: extension package teams are encouraged to create, store and
# document their test data within the extension package itself for
# the first release only, after which it should be moved to the
# central pharmaversesdtm package.

library(tibble) # nolint

xx <- tribble(
  ~USUBJID,
  "1",
)

# Save dataset ----
usethis::use_data(xx, overwrite = TRUE)
