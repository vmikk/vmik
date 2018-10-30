
# Toxicity index
tox_index <- function(x, metals = c("cu", "zn", "cd", "pb")){

  me <- x[, metals]
  me.min <- plyr::colwise(.fun = function(z){ z/min(z, na.rm = T) })(me)	# Me / min(Me)
  me.sum <- rowSums(me.min)
  res <- me.sum/min(me.sum)
  return(res)
}
