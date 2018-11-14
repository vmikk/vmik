
#' Check if a value is within a range
#'
#' @description Screens if a value belongs to a specified range.
#' @param x Numeric vector.
#' @param interval Vector with two values (minimum and maximum of inclusive interval)
#' @return Vector or TRUE or FALSE values.
#' @examples
#' x <- 1:15
#' in_interval(x, c(3, 7))
#'
in_interval <- function(x, interval){
  stopifnot(length(interval) == 2L)
  interval[1] <= x & x <= interval[2]
}
