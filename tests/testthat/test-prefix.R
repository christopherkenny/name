test_that('add_prefix works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- add_pref(x, 'abc_')
  goal <- c('abc_pop', 'abc_pop_2020_est', 'abc_pop_white_2020', 'abc_pop_black_2020')
  expect_identical(test, goal)
})

test_that('rem_prefix works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- rem_pref(x, 'pop_')
  goal <- c('pop', '2020_est', 'white_2020', 'black_2020')
  expect_identical(test, goal)
})

test_that('repl_prefix works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- repl_pref(x, 'pop_', 'p_')
  goal <- c('pop', 'p_2020_est', 'p_white_2020', 'p_black_2020')
  expect_identical(test, goal)
})

test_that('rem_pref treats pref as a literal string, not regex', {
  x <- c('a.b_x', 'axb_x')
  expect_equal(rem_pref(x, 'a.b_'), c('x', 'axb_x'))
})

test_that('repl_pref treats pref as a literal string, not regex', {
  x <- c('a.b_x', 'axb_x')
  expect_equal(repl_pref(x, 'a.b_', 'NEW_'), c('NEW_x', 'axb_x'))
})
