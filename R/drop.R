
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
