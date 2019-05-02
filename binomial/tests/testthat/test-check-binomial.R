context("binomial")

  test_that("bin_choose works with ok vectors", {
    expect_true(bin_choose(5, 2))
    expect_identical(bin_choose(5,2), 10)
    expect_is(bin_choose(5,2), 'numeic')
  })

  test_that("bin_probability works with ok vectors", {
    expect_identical(bin_probability(2, 5, 0.5), 0.3125)
    expect_equal(bin_probability(3, 5, 0.25), 0.08789062)
    expect_is(bin_probability(2, 5, 0.5), 'numeric')
  })

  test_that("bin_distribution works with ok vectors", {
    expect_is(bin_distribution(5, 0.5), 'bindis')
  })

  test_that("bin_distribution fails with invalid values", {
    expect_error(bin_distribution(5, 2), 'invalid prob value: prob has to be between 0 and 1')
    expect_error(bin_distribution(-1, .5), 'invalid trials value')
  })

  test_that("bin_cumulative works with ok vectors", {
    expect_is(bin_cumulative(5, 0.5), 'bincum')
  })

  test_that("bin_cumulative fails with invalid values", {
    expect_error(bin_cumulative(5, 2), 'invalid prob value: prob has to be between 0 and 1')
    expect_error(bin_cumulative(-1, .5), 'invalid trials value')
  })
