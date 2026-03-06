test_that('add_suffix works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- add_suff(x, '_abc')
  goal <- c('pop_abc', 'pop_2020_est_abc', 'pop_white_2020_abc', 'pop_black_2020_abc')
  expect_identical(test, goal)
})

test_that('rem_suffix works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- rem_suff(x, '_2020')
  goal <- c('pop', 'pop_2020_est', 'pop_white', 'pop_black')
  expect_identical(test, goal)
})

test_that('repl_suffix works', {
  x <- c('pop', 'pop_2020_est', 'pop_white_2020', 'pop_black_2020')
  test <- repl_suff(x, '_2020', '_20')
  goal <- c('pop', 'pop_2020_est', 'pop_white_20', 'pop_black_20')
  expect_identical(test, goal)
})

test_that('rem_suff leaves strings alone when suffix is longer than string', {
  expect_equal(rem_suff(c('ab', 'a_long_suffix'), '_long_suffix_extra'), c('ab', 'a_long_suffix'))
})

test_that('rem_suff handles string that is entirely the suffix', {
  expect_equal(rem_suff('_2020', '_2020'), '')
})
