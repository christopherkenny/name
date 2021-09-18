test_that("rename_with_loudly works", {
  tb <- tibble(pop = 10, pop_2020_est = 9, pop_white_2020 = 8, pop_black_2020 = 2)

  test <- utils::capture.output(tb %>% rename_with_loud(\(x) rem_suff('_2020', x)))
  goal <- c("`old`: \033[90m\"pop\"\033[39m \033[90m\"pop_2020_est\"\033[39m \033[32m\"pop_white_2020\"\033[39m \033[32m\"pop_black_2020\"\033[39m",
            "`new`: \033[90m\"pop\"\033[39m \033[90m\"pop_2020_est\"\033[39m \033[32m\"pop_white\"\033[39m      \033[32m\"pop_black\"\033[39m      ",
            "\033[38;5;246m# A tibble: 1 x 4\033[39m", "    pop pop_2020_est pop_white pop_black",
            "  \033[3m\033[38;5;246m<dbl>\033[39m\033[23m        \033[3m\033[38;5;246m<dbl>\033[39m\033[23m     \033[3m\033[38;5;246m<dbl>\033[39m\033[23m     \033[3m\033[38;5;246m<dbl>\033[39m\033[23m",
            "\033[38;5;250m1\033[39m    10            9         8         2"
  )
  expect_equal(test, goal)
})
