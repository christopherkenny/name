test_that('rem_phrase works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- rem_phrase(x, '_2020')
  goal <- c('pop', 'pop_est', 'pop_white', 'pop_black')
  expect_identical(test, goal)
})

test_that('rem_phrase removes all occurrences, not just first', {
  expect_equal(rem_phrase(c('a_2020_b_2020', 'pop_2020'), '_2020'), c('a_b', 'pop'))
})

test_that('rem_phrase treats phrase as a literal string, not regex', {
  expect_equal(rem_phrase(c('pop.est', 'pop_est'), '.'), c('popest', 'pop_est'))
})

test_that('repl_phrase works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- repl_phrase(x, '_2020', '_20')
  goal <- c('pop', 'pop_20_est', 'pop_white_20', 'pop_black_20')
  expect_identical(test, goal)
})

test_that('repl_phrase treats phrase as a literal string, not regex', {
  expect_equal(repl_phrase(c('pop.est', 'pop_est'), '.', '_'), c('pop_est', 'pop_est'))
})
