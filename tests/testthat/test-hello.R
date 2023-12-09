test_that("hello returns nothing", {
  hello_results <- hello()
  expect_null(hello_results)
})

test_that("hello prints a message", {
  expect_output(hello(), "Hello, world!")
})
