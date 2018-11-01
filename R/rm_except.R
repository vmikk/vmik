
# Remove all objects but one from the workspace in R
rm_except <- function(x){
  # x = vector of object names to preserve
  rm(list = setdiff(ls(), x), envir = globalenv())        # test it!!
}
