## Assignment 2 ##

## The following fuctions calculate the inverse of a matrix and store 
## its value to cache in order to return it if the user wishes.

## If the contents of inversed matrix are not changing, its better to store 
## in cache the value of the inversed matrix so that when we need it again, 
## it can be looked up in the cache, avoiding that way another time-consuming 
## computation of the same inversed matrix.

## this function takes a matrix named X as an argument

makeCacheMatrix <- function(x = matrix()) {
    
    inv <- NULL
    set <- function(y) {
        x <<- y 
        inv <<- NULL
    }
  
    get <- function() {x}
    
    setInverse <- function(inverse) {inv <<- inverse}
    
    getInverse < function() {inv}
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
    
}

## the function calculates the inverse of the matrix given from the makeCacheMatrix

cacheSolve <- function(x, ...) {
    
    inv <- x$getInverse()
    
    if (!is.null(inv) ) {
        message("getting cache data")
        return(inv)    
    }
    
    mat <- x$get()
    inv <- solve.default(mat, ...)
    x$setInverse(inv)
    
    inv
}
