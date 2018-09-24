#' BIN ranges
#'
#' A dataset containing the top level BIN ranges for card issuers
#'
#' @name bin_ranges
#' @docType data
#' @keywords issuers
#' @format A data frame with 48 rows:
#' \describe{
#'   \item{issuer}{The card issuer}
#'   \item{start}{start of card range}
#'   \item{end}{end of card range}
#'   \item{active}{Is card still available}
#'   \item{length}{Length of PAN}
#' }
#' @source \url{https://www.bincodes.com/bin-list}
"bin_ranges"

#'
#' issuer
#'
#' @export
#' @description Attempts to return the issuer and if the scheme is still active.
#' @importFrom stringr str_pad
#' @importFrom dplyr filter mutate select %>%
#' @param number PAN to look up
#' @return A dataframe of the issuer and if the scheme is active
#' @examples
#' issuer('4111 1111 1111 1111')

issuer <- function(number) {

  number <- gsub(pattern = " ", replacement = "", number)

  if(!checkLuhn(number)) {
    return(FALSE)
  }

  bin_ranges %>%
    filter(length == nchar(number)) %>%
    mutate(pad_start = as.numeric(stringr::str_pad(start, length, "right", "0")),
           pad_end = (as.numeric(stringr::str_pad(end+1, length, "right", "0")))-1) %>%
    filter(as.numeric(number) >= pad_start, as.numeric(number) < pad_end) %>%
    select(issuer, active)

}
