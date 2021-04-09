## Assignment 2 ##

## The following fuctions calculate the inverse of a matrix and store 
## its value to cache in order to return it if the user wishes.

## If the contents of inversed matrix are not changing, its better to store 
## in cache the value of the inversed matrix so that when we need it again, 
## it can be looked up in the cache, avoiding that way another time-consuming 
## computation of the same inversed matrix.


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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    }
