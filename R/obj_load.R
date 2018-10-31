
# Load object from workspace
obj_load <- function(obj.name = "x", wrksp.name = ".RData") {
  tmp.env <- new.env()                # create a temporary environment
  load(wrksp.name, envir = tmp.env)   # load workspace into temporary environment
  x <- get(obj.name, pos = tmp.env)   # get the objects you need into your globalenv()
                                      # x <- tmp.env$x # equivalent to previous line
  rm(tmp.env)
  return(x)
}
