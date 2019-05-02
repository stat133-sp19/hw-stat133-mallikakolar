context("checkers")

test_that("check_prob works", {
  expect_true(check_prob(0.5))
  expect_true(check_prob(1))
})

test_that("check_prob error message works", {
  expect_error(check_prob(1.3))
})

test_that("check_trials works", {
  expect_true(check_trials(5))
})

test_that("check_trials error message works", {
  expect_error(check_trials(-2))
  expect_warning(check_trials(-1), 'invalid trials value')
})

test_that("check_success works", {
  expect_true(check_trials(2, 5))
})

test_that("check_success error message works", {
  expect_error(check_success(-2, 5))
  expect_warning(check_success(5, 2), 'success cannot be greater than trials')
})

