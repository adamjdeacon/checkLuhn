context("checkLuhn")

test_that("Input must not be a single number", {
  input <- 1
  expect_false(checkLuhn(input))
})

test_that("Invalid Number is FALSE", {
  input <- "3400 0000 0000 123"
  expect_false(checkLuhn(input))
})

test_that("non-numeric string returns FALSE",{
  input <- "This should fail"
  expect_false(checkLuhn(input))
})


test_that("Credit/Debit Card check", {
  # Visa 	4111 1111 1111 1111
  # MasterCard 	5500 0000 0000 0004
  # American Express 	3400 0000 0000 009
  # Diner's Club 	3000 0000 0000 04
  # Carte Blanche 	3000 0000 0000 04
  # Discover 	6011 0000 0000 0004
  # en Route 	2014 0000 0000 009
  # JCB 	3088 0000 0000 0009

  cards <- c('Visa','MasterCard','AmericanExpress','DinersClub',
             'CarteBlanche','Discover','enRoute','JCB')
  numbers <- c('4111 1111 1111 1111','5500 0000 0000 0004','3400 0000 0000 009',
               '3000 0000 0000 04','3000 0000 0000 04','6011 0000 0000 0004',
               '2014 0000 0000 009','3088 0000 0000 0009')
  arr <- setNames(as.list(numbers), cards)
  for(i in arr) {
    expect_true(checkLuhn(i))
  }
})
