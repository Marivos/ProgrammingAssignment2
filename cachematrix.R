
##The first function makes a list of 4 functions:
##1. set - sets a matrix
##2. get - gets he value of a matrix
##3. setinverse - sets an inverse matrix
##4. get - gets value of inverse matrix


##

makeCacheMatrix <- function(x = matrix()) {
        matrix <- NULL
        set <- function(y) {
                x <<- y
                matrix <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) matrix <<- solve
        getinverse <- function() matrix
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        

}




## This function is supposed firstly to search the 'x' argument for
##inverse matrix. If it finds, then returns already cached inverse
## matrix. Otherwise it calculates it and returns

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrik <- x$get()
        m <- solve(matrik, ...)
        x$setinverse(m)
        m
        
}
