## Put comments here that give an overall description of what your
## functions do
##This function makes computing the inverse of the same matrix repeatidly
# unecessary by saving it in a cace.



## Write a short comment describing this function
#This function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        b <- NULL
        set <- function(y) {
                x <<- y
                b <<- NULL
            }
        get <- function() x
        setinverse <- function(solve) b <<- solve
        getinverse <- function() b
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## This function calculates the invers of the matrix but first checks to see 
## if its inverse has already been calculated and if so gives that value. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    b <- x$getinverse()
    if(!is.null(b)) {
        message("getting cached data")
        return(b)
    }
    data <- x$get()
    b <- solve(data, ...)
    x$setinverse(b)
    b
}


