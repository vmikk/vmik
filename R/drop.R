
drop_mono <- function(x){
  x[, apply(x, 2, function(x) length(unique(x)) > 1)]
}