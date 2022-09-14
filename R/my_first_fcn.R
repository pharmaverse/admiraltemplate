#' Derive Extension Example
#'
#' Says hello admiral
#'
#' @param hw TRUE or FALSE
#'
#' @author Open Source
#'
#' @details Something Something
#'
#' @return Happy Message
#'
#' @family der_prm_adxx
#'
#' @keywords der_prm_adxx
#'
#' @export
#'
#' @examples
#' hello_admiral(hw = FALSE)
hello_admiral <- function(hw = TRUE) {
  if (hw) {
    message("Welcome to the admiral family!")
  } else {
    message("Welcome to the admiral family!")
  }
}
