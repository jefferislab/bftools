context("showinf")

test_that("can run showinf without args to see help", {
  expect_match(showinf(), "showinf")
})
