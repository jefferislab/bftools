context("showinf")

test_that("can run showinf without args to see help", {
  expect_equal(showinf(), 1L)
})
