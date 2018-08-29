#'
#'
#'
#' Checks number is luhn compliant
#' @export
#' @param number The number to be checked
#' @examples
#' checkLuhn('4111 1111 1111 1111')

checkLuhn <- function(number) {
  # must have at least 2 digits
  if(nchar(number) <= 2) {
    return(FALSE)
  }

  # strip spaces
  number <- gsub(pattern = " ", replacement = "", number)

  # Return FALSE if not a number
  if (!grepl("^[[:digit:]]+$", number)) {
    return(FALSE)
  }

  # split the string, convert it to a list, and reverse it
  digits <- unlist(strsplit(number, ""))
  digits <- digits[length(digits):1]

  digits[seq(2, length(digits),2 )] <- as.numeric(digits[seq(2, length(digits),2 )]) * 2

  # gonna do some maths, let's convert it to numbers
  digits <- as.numeric(digits)

  # a digit cannot be two digits, so any that are greater than 9, subtract 9 and make the
  # world a better place
  digits <- ifelse(digits > 9, digits - 9, digits)

  # does the sum divide by 10?
  sum(digits) %% 10 == 0
}
