
#' Erase monomorphic columns from the data
#'
#' @description Removes not varying variables (columns with same values) from data.
#' @param x A data.frame or matrix.
#' @return data.frame or matrix without monomorphic columns.
#' @examples
#' datt <- data.frame(V1=1:50, V2=rnorm(50), V3=rep(7, 50), V4=rnorm(50))
#' drop_mono(datt)
#' 
drop_mono <- function(x){
  x[, apply(x, 2, function(x) length(unique(x)) > 1)]
}

# Delete columns that contain ONLY NAs
drop_NA_col <- function(df){
  colz <- apply(is.na(df), 2, all)
  res <- df[ , !colz ]
  return(res)
}

#' Remove columns with zero sum from the data
#'
#' @description Removes columns that sum to zero.
#' @param x A data.frame or matrix.
#' @details This function can be used to remove species with zero abundance (i.e., species that are absent across all samples) from community data.
#' @return data.frame or matrix without columns with zero sum.
#' @examples
#' datt <- data.frame(V1=0, V2=rnorm(50), V3=0, V4=rnorm(50))
#' drop_zero(datt)
#'
drop_zero <- function(x){
  x[, which(colSums(x) > 0)]  
}
