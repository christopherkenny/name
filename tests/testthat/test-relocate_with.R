test_that('relocate_with reorders all columns', {
  tb <- tibble::tibble(b = 2, a = 1, c = 3)
  expect_equal(names(relocate_with(tb, sort)), c('a', 'b', 'c'))
})

test_that('relocate_with works with a column subset', {
  tb <- tibble::tibble(a = 1, e = 5, c = 3, d = 4, b = 2)
  result <- relocate_with(tb, sort, .cols = c(e, c))
  expect_equal(names(result), c('a', 'c', 'e', 'd', 'b'))
})

test_that('relocate_with respects .before', {
  tb <- tibble::tibble(a = 1, b = 2, c = 3, d = 4)
  result <- relocate_with(tb, sort, .cols = c(d, c), .before = b)
  expect_equal(names(result), c('a', 'c', 'd', 'b'))
})

test_that('relocate_with respects .after', {
  tb <- tibble::tibble(a = 1, b = 2, c = 3, d = 4)
  result <- relocate_with(tb, sort, .cols = c(d, b), .after = c)
  expect_equal(names(result), c('a', 'c', 'b', 'd'))
})

test_that('relocate_with errors with both .before and .after', {
  tb <- tibble::tibble(a = 1, b = 2, c = 3)
  expect_snapshot(relocate_with(tb, sort, .before = a, .after = c), error = TRUE)
})

test_that('relocate_with works with sort_suff and mixed columns', {
  tb <- tibble::tibble(pop = 1, b_2021 = 2, a_2020 = 3, c_2020 = 4)
  result <- relocate_with(tb, sort_suff)
  expect_equal(names(result), c('a_2020', 'c_2020', 'b_2021', 'pop'))
})
