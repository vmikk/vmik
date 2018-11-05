
# Find the largest objects
obj_largest <- function(n=10){
  res <- sort(sapply(ls(envir = globalenv()),function(x) object.size(get(x)))/1e6,decreasing=TRUE)
  if(length(res) > n) { return(res[1:n]) }
  if(length(res) <= n) { return(res) }
}
