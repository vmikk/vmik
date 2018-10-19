
# Find the closest value (returns the index of the closest match)
find_closest <- function(x, w){
	# x = value to search
	# w = vector of neighbours
	which.min(abs(w - x))
}
# e.g.  find_closest(5.36, 1:10); find_closest(5.76, 1:10)
# or check   findInterval(4.5, c(1,2,4,5,6))  # [base], vec should be sorted
