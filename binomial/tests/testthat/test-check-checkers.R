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
  expect_is(check_trials(4), "logical")
})

test_that("check_trials error message works", {
  expect_error(check_trials(-2), 'invalid trials value')
})

test_that("check_success works", {
  expect_true(check_trials(2, 5))
  expect_is(check_success(2, 5), 'logical')
})

test_that("check_success error message works", {
  expect_error(check_success(-2, 5), 'success cannot be less than 0')
})

