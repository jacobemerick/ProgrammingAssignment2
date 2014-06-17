## This pair of functions allow caching of matrix inversion
## First you need to map the normal matrix to a cacheable one
## Then you pass it to a solving one that actually does the math


## This first function maps a normal matrix to a cacheable one
## As per assignment instructions
## Creates a basic get, set, getInverse, and setInverse method

makeCacheMatrix <- function(x = matrix()) {
	## Return a list of get, set, getInverse, and setInverse
}


## This second function does the actual inversion math
## If the value has already been computed, return the cached value
## Else, compute the matrix inverse, cache, and return

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

