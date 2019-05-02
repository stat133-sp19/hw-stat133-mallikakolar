context("binomial")

  test_that("bin_choose works with ok vectors", {
    expect_true(bin_choose(5, 2))
  })

  test_that("bin_choose fails with invalid values", {
    expect_error(bin_choose(2, 5))
    expect_warning(bin_choose(2, 5), "k cannot be greater than n")
  })

  test_that("bin_probability works with ok vectors", {
    expect_equal(bin_probability(2, 5, 0.5), 0.3125)
  })

  test_that("bin_probability fails with invalid values", {
    expect_warning(bin_probability(2, 5, 2), 'invalid probability value: prob has to be between 0 and 1')
    expect_error(bin_probability(5, 4, 0.4))
  })

  test_that("bin_distribution works with ok vectors", {
    expect_is(bin_distribution(5, 0.5), 'bindis')
  })

  test_that("bin_distribution fails with invalid values", {
    expect_warning(bin_distribution(5, 2), 'invalid probability value: prob has to be between 0 and 1')
    expect_error(bin_distribution(-1, .5), 'invalid trials value')
  })

  test_that("bin_cumulative works with ok vectors", {
    expect_is(bin_cumulative(5, 0.5), 'bincum')
  })

  test_that("bin_cumulative fails with invalid values", {
    expect_warning(bin_cumulative(5, 2), 'invalid probability value: prob has to be between 0 and 1')
    expect_error(bin_cumulative(-1, .5), 'invalid trials value')
  })
