#' Execution of R code in RMD files
#'
#'
#' @param filename RMD file name
#'
#' @details Convert RMD file in to a R script and execute the R script
#' The R script created is a temporary file and is not saved

#' @export
run_all_rmd <- function(filename) {
  tempR <- tempfile(fileext = ".R")
  knitr::purl(filename, output=tempR)
  source(tempR , echo = TRUE)
  unlink(tempR)
}
