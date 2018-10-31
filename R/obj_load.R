
#' Load object from workspace
#'
#' @param obj.name Name of the object that should be loaded from the workspace.
#' @param wrksp.name File name containing the object of interest.
#'
#' @return Selected R-object.
#'
#' @examples
#' x <- rnorm(100)
#' save(x, file = "x.RData")
#' obj_load("x", "x.RData")
#' 
obj_load <- function(obj.name = "x", wrksp.name = ".RData") {
  tmp.env <- new.env()                # create a temporary environment
  load(wrksp.name, envir = tmp.env)   # load workspace into temporary environment
  x <- get(obj.name, pos = tmp.env)   # get the objects you need into your globalenv()
                                      # x <- tmp.env$x # equivalent to previous line
  rm(tmp.env)
  return(x)
}
