context("showinf")

test_that("can run showinf without args to see help", {
  # warning because showinf returns 1 
  expect_warning(sihelp <- showinf(stderr=TRUE, stdout=TRUE))
  expect_match(paste(sihelp, collapse=""), 'showinf file')
})
