test_that('list_pref returns unique prefixes', {
  tb <- tibble::tibble(pop = 1, pop_2020 = 2, a_2020 = 3)
  expect_equal(list_pref(tb), c('pop', 'a'))
})

test_that('list_pref ignores columns without underscores', {
  tb <- tibble::tibble(plain = 1, pop_2020 = 2, a_2021 = 3)
  expect_equal(list_pref(tb), c('pop', 'a'))
})

test_that('list_suff returns unique suffixes', {
  tb <- tibble::tibble(pop_2020 = 1, a_2020 = 2, b_2021 = 3)
  expect_equal(list_suff(tb), c('2020', '2021'))
})

test_that('list_suff ignores columns without underscores', {
  tb <- tibble::tibble(plain = 1, pop_2020 = 2, a_2021 = 3)
  expect_equal(list_suff(tb), c('2020', '2021'))
})

test_that('list_phrase returns unique phrases at loc = 2', {
  tb <- tibble::tibble(a_white_2020 = 1, b_white_2021 = 2, c_black_2020 = 3)
  expect_equal(list_phrase(tb), c('white', 'black'))
})

test_that('list_phrase uses loc argument', {
  tb <- tibble::tibble(a_white_2020 = 1, b_white_2021 = 2, c_black_2020 = 3)
  expect_equal(list_phrase(tb, loc = 3), c('2020', '2021'))
})

test_that('list_phrase skips columns without a phrase at loc', {
  tb <- tibble::tibble(pop = 1, pop_white = 2, a_white_2020 = 3)
  expect_equal(list_phrase(tb, loc = 3), '2020')
})
