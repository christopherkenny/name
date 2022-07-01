test_that('rem_phrase works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- rem_phrase(x, '_2020')
  goal <- c('pop', 'pop_est', 'pop_white', 'pop_black')
  expect_identical(test, goal)
})

test_that('repl_phrase works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- repl_phrase(x, '_2020', '_20')
  goal <- c('pop', 'pop_20_est', 'pop_white_20', 'pop_black_20')
  expect_identical(test, goal)
})
