#'
#'
#'
#' issuer
#' @export
#' @param number PAN to look up
#' @examples
#' issuer('4111 1111 1111 1111')

issuer <- function(number) {
  library(readr)
  # BIN Ranges from https://www.bincodes.com/bin-list/
  x <- read_csv(system.file('BIN.csv', package = 'checkLuhn'))

  # strip spaces
  number <- gsub(pattern = " ", replacement = "", number)

  if(!checkLuhn(number)) {
    return(FALSE)
  }


  return(FALSE)
}
