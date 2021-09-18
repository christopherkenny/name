test_that('add_prefix works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- add_pref('abc_', x)
  goal <- c('abc_pop', 'abc_pop_2020_est', 'abc_pop_white_2020', 'abc_pop_black_2020')
  expect_identical(test, goal)
})

test_that('rem_prefix works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- rem_pref('pop_', x)
  goal <- c('pop', '2020_est', 'white_2020', 'black_2020')
  expect_identical(test, goal)
})

test_that('repl_prefix works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- repl_pref('pop_', 'p_', x)
  goal <- c('pop', 'p_2020_est', 'p_white_2020', 'p_black_2020')
  expect_identical(test, goal)
})
