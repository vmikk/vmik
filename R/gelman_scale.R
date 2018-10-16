
gelman_scale <- function(x){
  x.obs <- x[!is.na(x)]
  mm <- mean(x.obs)
  ss <- sd(x.obs)
  res <- (x - mm)/(2 * ss)
  attr(res, "scaled:center") <- mm
  attr(res, "scaled:scale") <- ss
  return(res)
}
