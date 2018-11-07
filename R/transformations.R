
# Standardizing by сentering and вividing by 2 standard deviations
gelman_scale <- function(x){
  x.obs <- x[!is.na(x)]
  mm <- mean(x.obs)
  ss <- sd(x.obs)
  res <- (x - mm)/(2 * ss)
  attr(res, "scaled:center") <- mm
  attr(res, "scaled:scale") <- ss
  return(res)
}

IHS <- function(x){ 
  log(x + sqrt(x^2 + 1))
}

scale_to_interval <- function(x, limitMin = 0, limitMax = 1){
  res <- (limitMax - limitMin) * (x - min(x))
  res <- res / ( (max(x) - min(x)))
  res <- res + limitMin
  return(res)
}
