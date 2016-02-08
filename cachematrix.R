## Put comments here that give an overall description of what your
## functions do

## This method provides a list of functions that provide user to set and get
## the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(data) {
    print(data)
    x <<- data
    inv <<- NULL
  }
  get <- function() x
  getInverse <- function() inv
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  
  list(set = set, get =  get, getInverse = getInverse, setInverse = setInverse)

}


## Write a short comment describing this function
## This method checks whether the data is cached. If cached return the cached version
## else it inverses the matrix and set it for future use

cacheSolve <- function(x, ...) {
  inverse <- x$getInverse()
  if (!is.null(inverse)) {
    message("Returning Cached Data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse
}
