makeVector <- function(x = numeric()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
}

cachemean <- function(x, ...) {
    m <- x$getmean()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
}

## Put comments here that give an overall description of what your
## functions do
# creates matrix of numbers to be inverted


## Write a short comment describing this function
# creates matrix of set, get, setmean, getmean
# to be inverted by cacheSolve func later

makeCacheMatrix <- function(x = matrix()) {
    for (i in nrow)
        x[i,] <-set
}


## Write a short comment describing this function
# takes argument matrix x, returns the inverse of x

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    for (i in ncol)
        for (j in nrow)
            solve(x)
    x
}
