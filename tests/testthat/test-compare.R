test_that('compare_names returns named vector of differences', {
  s <- tibble::tibble(a = 1, b = 2, d = 3)
  t <- tibble::tibble(a = 1, d = 3, c = 2)
  result <- compare_names(s, t)
  expect_equal(result, c(b = 'd', d = 'c'))
})

test_that('compare_names prints differences', {
  s <- tibble::tibble(a = 1, b = 2, d = 3)
  t <- tibble::tibble(a = 1, d = 3, c = 2)
  expect_snapshot(compare_names(s, t))
})

test_that('compare_names returns invisible empty vector when identical', {
  s <- tibble::tibble(a = 1, b = 2)
  result <- compare_names(s, s)
  expect_equal(result, setNames(character(0), character(0)))
})

test_that('compare_names errors on length mismatch', {
  s <- tibble::tibble(a = 1, b = 2)
  t <- tibble::tibble(a = 1, b = 2, c = 3)
  expect_snapshot(compare_names(s, t), error = TRUE)
})
