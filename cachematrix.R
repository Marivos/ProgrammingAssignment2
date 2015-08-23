
##The first function takes a matrix as an input.
##It makes a list of 4 functions:
##1. set - sets a matrix
##2. get - gets the value of a matrix
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



##The second function takes the result of the previous one
##as an input

## Then it searches the input - 'X' - for cached meaning for
##the inverse matrix. If found, it returns it's value
## and prints 'getting cached data'.
##If not found, it calculates inverse matrix, returns it value
##and saves in cache

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
