## This code is for coursera R programming assignment 2
## File contains 2 functions, the first is to cache the inverse of a matrix, 
##the second will compute the inverse of a matrix using the first function

## makeCacheMatrix is a short function that calculates the inverse of a matrix and caches the answer

makeCacheMatrix <- function(x = matrix()) {


    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  
  
  
}


## cacheSolve uses makeCacheMatrix to either retrieve the matrix inverse, or calculate it if it is not cached

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
    m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
  
  
}
