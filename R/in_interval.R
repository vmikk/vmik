
# Check if a value is within a range
in_interval <- function(x, interval){
  stopifnot(length(interval) == 2L)
  interval[1] <= x & x <= interval[2]
}
