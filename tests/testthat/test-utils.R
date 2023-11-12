
testthat::test_that("df_shape_log_message() Logs correct dataframe meassage", {
    # Load in the commonly predefined cars dataset
    data(cars)

    n_car_rows <- 50
    n_car_cols <- 2
    n_car_complete_rows <- 50
    n_car_complete_cols <- 2
    expected_message <- glue::glue("Dataframe has: {n_car_rows} rows, {n_car_cols} columns,
    {n_car_complete_rows} rows without missing entries,
    {n_car_complete_cols} columns without missing entries")

    testthat::expect_equal(expected_message, df_shape_log_message(cars))
})
