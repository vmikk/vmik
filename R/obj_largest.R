#' Find the largest objects in the workspace
#'
#' @description Determine what are the largest objects in the environment.
#' @param n Maximum nuber of objects to display (by default 10).
#' @return Named vector of object sizes in megabytes.
#' @author Mike Love
#' @examples
#' x <- rnorm(100); y <- rnorm(1000); z <- matrix(rnorm(100000), ncol=100)
#' obj_largest()

obj_largest <- function(n = 10){
  res <- sort(sapply(ls(envir = globalenv()), function(x) object.size(get(x)))/1e6, decreasing=TRUE)
  if(length(res) > n) { return(res[1:n]) }
  if(length(res) <= n) { return(res) }
}
