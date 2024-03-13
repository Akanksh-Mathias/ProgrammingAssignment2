## FUNCTIONS - 
## makeCacheMatrix - This function creates a special "matrix" object that can cache its inverse


makeCacheMatrix <- function(x = matrix()) {
  
  cacheMatrix <- NULL
  
  setMatrix <- function(y) {
    x <<- y
    cacheMatrix <<- NULL
  }
  
  getMatrix <- function() x
  setCache <- function(inverse) cacheMatrix <<- inverse
  getCache <- function() cacheMatrix
  
  list(setMatrix = setMatrix,
       getMatrix = getMatrix,
       setCache = setCache,
       getCache = getCache)
}

## cacheSolve - This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  
}