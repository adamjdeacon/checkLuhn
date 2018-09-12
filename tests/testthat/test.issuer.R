context("issuer")

test_that("Input must pass luhn check", {
  input <- '1231231221'
  expect_false(issuer(input))
})

test_that("Input must pass luhn check", {
  input <- '4111 1111 1111 1111'
  expect_true(issuer(input))
})

test_that("Checks for Visa", {
  input <- '4111 1111 1111 1111'
  expect_equal(issuer,c("Visa","Yes"))
})
