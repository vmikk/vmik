
#' Erase monomorphic columns from data
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


drop_NA_col <- function(df){
    colz <- apply(is.na(df), 2, all)
    res <- df[ , !colz ]
    return(res)
}

drop_zero <- function(x){
    x[, which(colSums(x) > 0)]  
}
