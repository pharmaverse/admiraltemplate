#' Derive Extension Example
#'
#' Says hello admiral
#'
#' @param hw Boolean determining whether a hello message is returned.
#'
#' @permitted [boolean]
#'
#' @details In the roxygen documentation you will find tags for family and keywords.
#' This is to create organized sections for the Reference tab on the pkgdown website.
#' You can modify the `_pkgdown.yml` as necessary to create appropriate sections as necessary.
#' Under `./man/roxygen/meta.R`, you will find where to store these family/keywords.
#' You will also find custom permitted text under `./man/roxygen/rdx_meta.R` to
#' standardize argument text.
#'
#' @return A message
#'
#' @family der_adxx
#'
#' @keywords der_adxx
#'
#' @export
#'
#' @examples
#' hello_admiral()
#' hello_admiral(hw = FALSE)
hello_admiral <- function(hw = TRUE) {
  if (hw) {
    message("Welcome to the admiral family!")
  } else {
    message("<crickets>")
  }
}
