#'
#'
#'
#' Checks number is luhn compliant
#' @export
#' @param number The number to be checked
#'

checkLuhn <- function(number) {
  if(nchar(number) <= 2) {
    return(FALSE)
  }

}
