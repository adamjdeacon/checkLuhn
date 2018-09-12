#'
#'
#'
#' issuer
#' @export
#' @import readr
#' @param number PAN to look up
#' @examples
#' issuer('4111 1111 1111 1111')

issuer <- function(number) {

  # BIN Ranges from https://www.bincodes.com/bin-list/
  x <- read_csv(system.file('BIN.csv', package = 'checkLuhn'), col_types = cols())

  # strip spaces
  number <- gsub(pattern = " ", replacement = "", number)


  if(!checkLuhn(number)) {
    return(FALSE)
  }


  return(FALSE)
}
