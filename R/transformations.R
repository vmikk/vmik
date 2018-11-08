## TO DO:
# - IHS - add 'back' flag to perform reverse transformation


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


#' Inverse hyperbolic sine transformation
#'
#' @description Inverse hyperbolic sine transformation. Unlike a log variable, the inverse hyperbolic sine is defined at zero.
#' @param x Numeric vector
#' @return Vector of transformed values.
#' @details It is an alternative to log transformations when some of the variables take on zero or negative values and as an alternative to the Box-Cox when variables are zero or negative.
#' Except for very small values of y, the inverse sine is approximately equal to log(2yi) or log(2)+log(yi), and so it can be interpreted in exactly the same way as a standard logarithmic dependent variable. For example, if the regression coefficient on "urban" is 0.1, that tells us that urbanites have approximately 10 percent higher wealth than non-urban people.
#' @seealso \code{asinh}
#' @references Burbidge J.B., Magee L., Robb A.L. Alternative transformations to handle extreme values of the dependent variable // Journal of the American Statistical Association. 1988. V. 83. № 401. P. 123-127.
#' @examples
#' IHS(seq(-10, 10, 1))
#'
IHS <- function(x){ 
  log(x + sqrt(x^2 + 1))
}


scale_to_interval <- function(x, limitMin = 0, limitMax = 1){
  res <- (limitMax - limitMin) * (x - min(x))
  res <- res / ( (max(x) - min(x)))
  res <- res + limitMin
  return(res)
}
