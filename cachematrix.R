## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        set_solve <- function(solved) s <<- solved
        get_solve <- function() s
        list(set = set, get = get,
             set_solve = set_solve,
             get_solve = get_solve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        s <- x$get_solve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$set_solve(s)
        s
         ## Return a matrix that is the inverse of 'x'
}
