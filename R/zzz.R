#' Functions and data for working with credit and debit cards
#'
#' Contains function for confirm if card numbers are valid and getting
#' information about the card scheme and issuer
#' see the repo at https://github.com/adamjdeacon/checkLuhn.
#'
#' @docType package
#' @name checkLuhn-package
#' @author Adam Deacon (\email{adam@deaconsworld.org.uk})
#' @importFrom utils globalVariables
NULL

## Quiets concerns of R CMD check re variables that appear in pipelines
if(getRversion() >= "2.15.1")  {
  utils::globalVariables(c(".", "bin_ranges", "start", "end", "pad_start",
                           "pad_end", "active"))
}
