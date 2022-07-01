test_that("rename_with_loudly works", {
  tb <- tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)

  test <- rename_with_loud(tb, \(x) rem_suff(x, '_2020')) %>% names()
  goal <- c("pop", "pop_2020_est", "pop_white", "pop_black")
  expect_equal(test, goal)
})
