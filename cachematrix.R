## As with the example makeVector and cacheVector the first group of functions creates a list of functions

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## If m is not set as NULL from above we return a cached result, 
## otherwise the function sets "data" to the get portion of makeCacheMatrix, 
## then uses solve to ocmpute the inverse.. 

cacheSolve <- function(x) {
    m <- x$getinv()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
  
    data <- x$get()
    m <- solve(data)
    x$setinv(m)
    m
}
