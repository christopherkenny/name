test_that('str_clean_names transliterates accented characters to ASCII', {
  expect_equal(str_clean_names(c('ni\u00f1o', 'caf\u00e9', 'na\u00efve')), c('nino', 'cafe', 'naive'))
})

test_that('str_clean_names converts camelCase to snake_case', {
  expect_equal(str_clean_names(c('popTotal', 'totalPop')), c('pop_total', 'total_pop'))
})

test_that('str_clean_names replaces dots with underscores', {
  expect_equal(str_clean_names(c('pop.total', 'a.b.c')), c('pop_total', 'a_b_c'))
})

test_that('str_clean_names replaces spaces with underscores', {
  expect_equal(str_clean_names('pop total'), 'pop_total')
})

test_that('str_clean_names replaces dashes and other special characters', {
  expect_equal(str_clean_names(c('pop-total', 'pop%total', 'pop#total')), c('pop_total', 'pop_pct_total', 'pop_n_total'))
})

test_that('str_clean_names preserves meaning of % and #', {
  expect_equal(str_clean_names(c('tax%', 'count#')), c('tax_pct', 'count_n'))
})

test_that('str_clean_names lowercases', {
  expect_equal(str_clean_names(c('POP', 'POP_TOTAL')), c('pop', 'pop_total'))
})

test_that('str_clean_names squeezes consecutive underscores', {
  expect_equal(str_clean_names('pop__total'), 'pop_total')
})

test_that('str_clean_names strips leading and trailing underscores', {
  expect_equal(str_clean_names(c('_pop', 'pop_', '_pop_')), c('pop', 'pop', 'pop'))
})

test_that('str_clean_names handles mixed real-world scenarios', {
  x <- c('Pop Total', 'popTotal', 'POP.TOTAL', 'pop_total')
  expect_equal(str_clean_names(x), rep('pop_total', 4))
})

test_that('str_clean_names with unique = TRUE appends suffix to duplicates', {
  expect_equal(
    str_clean_names(c('pop', 'pop', 'pop', 'total'), unique = TRUE),
    c('pop', 'pop_2', 'pop_3', 'total')
  )
})

test_that('str_clean_names with unique = TRUE works when cleaning creates duplicates', {
  expect_equal(
    str_clean_names(c('popTotal', 'Pop Total', 'pop.total'), unique = TRUE),
    c('pop_total', 'pop_total_2', 'pop_total_3')
  )
})

test_that('clean_names renames all columns', {
  tb <- tibble::tibble(popTotal = 1, `Pop Total` = 2, pop.total = 3)
  expect_equal(names(clean_names(tb)), rep('pop_total', 3))
})

test_that('clean_names with unique = TRUE makes column names unique', {
  tb <- tibble::tibble(popTotal = 1, `Pop Total` = 2, pop.total = 3)
  expect_equal(names(clean_names(tb, unique = TRUE)), c('pop_total', 'pop_total_2', 'pop_total_3'))
})

test_that('clean_names preserves data values', {
  tb <- tibble::tibble(popTotal = 42L)
  expect_equal(clean_names(tb)$pop_total, 42L)
})
