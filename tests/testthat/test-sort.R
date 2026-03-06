test_that('sort_pref sorts alphabetically', {
  x <- c('b_pop', 'a_pop', 'c_pop')
  expect_equal(sort_pref(x), c('a_pop', 'b_pop', 'c_pop'))
})

test_that('sort_phrase groups by phrase at loc = 2', {
  x <- c('a_2021_z', 'b_2020_z', 'c_2020_z')
  expect_equal(sort_phrase(x), c('b_2020_z', 'c_2020_z', 'a_2021_z'))
})

test_that('sort_phrase uses loc argument', {
  x <- c('pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  expect_equal(sort_phrase(x, loc = 3), c('pop_white_2020', 'pop_black_2020', 'pop_2020_est'))
})

test_that('sort_phrase errors when element lacks phrase at loc', {
  expect_snapshot(sort_phrase(c('pop_2020', 'plain'), loc = 2), error = TRUE)
})

test_that('sort_suff groups by suffix alphabetically', {
  x <- c('pop_2020_est', 'pop_white_2020', 'pop_black_2020', 'pop_white_2021')
  expect_equal(sort_suff(x), c('pop_white_2020', 'pop_black_2020', 'pop_white_2021', 'pop_2020_est'))
})

test_that('sort_suff moves no-underscore elements to end', {
  x <- c('plain', 'pop_2020', 'pop_2021')
  expect_equal(sort_suff(x), c('pop_2020', 'pop_2021', 'plain'))
})

test_that('sort_suff handles multiple no-underscore elements', {
  x <- c('z', 'a', 'pop_2020', 'pop_2021')
  expect_equal(sort_suff(x), c('pop_2020', 'pop_2021', 'z', 'a'))
})
