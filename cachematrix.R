## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inve <- NULL
        set <- function(y) {
           x <<- y
           inve <<- NULL
        }
        get <- function() x
        setInverse <- function(inversa) inv <<- inversa
        getInverse <- function() inve
        list(set = set,
           get = get,
           setInverse = setInverse,
           getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inve <- x$getInverse()
        if (!is.null(inve)) {
           message("getting cached data")
           return(inve)
        }
        matriz <- x$get()
        inve <- solve(matriz, ...)
        x$setInverse(inve)
        inve
}
