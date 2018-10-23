
# Split a vector into chunks equal size
# x = vector; n = number of chunks
chunk <- function(x, n){
  split(x, cut(seq_along(x), n, labels = FALSE))
}

## for integer vector
# n = 3
# split(x, sort(x%%n))