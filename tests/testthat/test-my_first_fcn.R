# my_first_fcn ----

## Test 1: outputs welcome message when hw = TRUE (default) -----
test_that("my_first_fcn Test 1: outputs welcome message when hw = TRUE (default)", {
  expect_snapshot({
    hello_admiral()
  })
})

## Test 2: outputs crickets message when hw = FALSE
test_that("my_first_fcn Test 2: outputs crickets message when hw = FALSE", {
  expect_snapshot({
    hello_admiral(hw = FALSE)
  })
})
