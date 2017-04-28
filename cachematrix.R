## cachematrix cache,compute, or retrieve matrix inverse. 
## makeCasheMatrix creates a special matrix object that can cache its ## inverse
## cacheSolve computes the inverse of the special matrix returned by ## makeCashMatrix, if the inverse has already been calculated, then ## cashesolve should retrieve the invers from the cache.


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  my
}
