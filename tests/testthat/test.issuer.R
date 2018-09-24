context("issuer")

test_that("Input must pass luhn check", {
  input <- '1231231221'
  expect_false(issuer(input))
})

test_that("Valid but unknown card return 0 rows",{
  input <- '6331101999990016'
  out <- issuer(input)
  expect_is(out, "data.frame")
  expect_equal(ncol(out), 2)
})

test_that("Checks for Visa", {
  input <- '4111 1111 1111 1111'
  out <- issuer(input)

  expect_named(out, c("issuer", "active"))
  expect_equal(out$issuer, "Visa")
  expect_equal(out$active, "Yes")
})

test_that("Check for Amex", {
  input <- '378282246310005'
  out <- issuer(input)

  expect_named(out, c("issuer", "active"))
  expect_equal(out$issuer, "American Express")
  expect_equal(out$active, "Yes")
})
