## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
 mi <- NULL
 set<- function(y) {
       x <<- y
       xi <<- NULL
 }
 get <- function() x
 setInv <- function(solve) mi <<- solve
 getInv <- function() mi
 list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function
## This function will return the Inverse of a matrix by checking first if it has been already calculated and stored.
## if yes it will return from the cache else it will compute the inverse, store it in the cache for next time and return it .

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mi = x$getInv()
  if (!is.null(mi)){
     message("getting cached data")
     return (mi)
  } 
  m <- x$get()
  mi <- solve(m)
  x$setInv(mi)
  mi
}
