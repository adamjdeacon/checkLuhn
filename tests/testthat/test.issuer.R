context("issuer")

test_that("Input must pass luhn check", {
  input <- '1231231221'
  expect_false(issuer(input))
})

test_that("Checks for Visa", {
  input <- '4111 1111 1111 1111'
  out <- issuer(input)

  expect_named(out, c("issuer", "active"))
  expect_equal(out$issuer, "Visa")
  expect_equal(out$active, "Yes")
})
