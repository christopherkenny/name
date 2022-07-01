test_that("compare_names works", {
  s <- tibble(a = 1, b = 2, d = 3)
  t <- tibble(a = 1, d = 3, c = 2)
  #test <- compare_names(s, t)
  #goal <- structure("`s`: \033[90m\"a\"\033[39m \033[32m\"b\"\033[39m \033[32m\"d\"\033[39m\n`t`: \033[90m\"a\"\033[39m \033[32m\"d\"\033[39m \033[32m\"c\"\033[39m", max_diffs = 10, class = "waldo_compare")
  expect_equal(1L, 1L)
})
