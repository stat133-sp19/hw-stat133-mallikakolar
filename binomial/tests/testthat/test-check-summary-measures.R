context("summary measures")

test_that("aux_mean works", {
  expect_equal(aux_mean(2, .25), .5)
  expect_identical(aux_mean(4, 0.5), 2)
  expect_is(aux_mean(1, 1), 'numeric')
})

test_that("aux_variance works", {
  expect_equal(aux_variance(2, .25), 0.375)
  expect_identical(aux_variance(4, 0.5), 1)
  expect_is(aux_variance(1, 1), 'numeric')
})

test_that("aux_mode works", {
  expect_equal(aux_mode(10, .25), 2)
  expect_identical(aux_mode(11, 0.5), c(6,5))
  expect_is(aux_mode(2, 1), 'numeric')
})

test_that("aux_skewness works", {
  expect_is(aux_skewness(10, .25), 'numeric')
  expect_identical(aux_skewness(2, 0.5), 0)
})

test_that("aux_skewness produces warning message",{
  expect_warning(aux_skewness(4, 3))
})

test_that("aux_kurtosis works", {
  expect_is(aux_kurtosis(10, .25), 'numeric')
  expect_identical(aux_kurtosis(2, 0.5), -1)
  expect_equal(aux_kurtosis(1, 0), Inf)
})


