## Put comments here that give an overall description of what your
## functions do
## the first step including 4 functions: set, get, setinverse, getinverse

## Write a short comment describing this function

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
## step 2: firstly identify whether inverse be caculuated
cacheSolve <- function(x, ...) {
      m <- x$getinverse()## the test first
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      } ## if no result in local, then calculate
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}
