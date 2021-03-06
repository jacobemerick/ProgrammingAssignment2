## This pair of functions allow caching of matrix inversion
## First you need to map the normal matrix to a cacheable one
## Then you pass it to a solving one that actually does the math

## Example:
## a <- cbind(c(1, 0, 1), c(2, 4, 0), c(3, 5, 6))
## cacheA <- makeCacheMatrix(a)
## cacheSolve(cacheA)


## This first function maps a normal matrix to a cacheable one
## As per assignment instructions
## Creates a basic get, set, getInverse, and setInverse method

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL

	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	get <- function() {
		x
	}

	setInverse <- function(inverse) {
		i <<- inverse
	}
	getInverse <- function() {
		i
	}

	list(
		set = set,
		get = get,
		setInverse = setInverse,
		getInverse = getInverse)		
}


## This second function does the actual inversion math
## If the value has already been computed, return the cached value
## Else, compute the matrix inverse, cache, and return

cacheSolve <- function(x, ...) {
	i <- x$getInverse()
	if(!is.null(i)) {
		message('Returning cached inverse')
		return(i)
	}

	data <- x$get()
	i <- solve(data)
	x$setInverse(i)
	i
}

