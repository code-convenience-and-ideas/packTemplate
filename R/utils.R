#' Creates a log of dataframe shape, and entry missingness
#'
#' @param data_to_log - dataset to create a log message from
#'
#' @return a string summarising dataframe shape and missing info
#' @export
#'
#' @examples
#' df_shape_log_message(cars)
df_shape_log_message <- function(data_to_log){
    dataframe_shape_message <- glue::glue("Dataframe has: {nrow(data_to_log)} rows, {ncol(data_to_log)} columns,
    {sum(complete.cases(data_to_log))} rows without missing entries,
    {sum(complete.cases(t(data_to_log)))} columns without missing entries")

    return(dataframe_shape_message)
}
