## Calculate the inverse of a matrix by cashing

## this function creates a special inverse matrix, which is really a list containing a function to
# set the value of the inverse matrix
# get the value of the inverse matrix
# set the value of the inverse
# get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        matrix <<- y
        inv <<- NULL
    }
    get <- function() matrix
    setinv <- function(y) inv <<- y
    getinv <- function() inv
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Calculate the inverse of a invertable Matrix if is not in the cash, otherwise it return the cash

cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
