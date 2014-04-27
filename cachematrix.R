## Archivo que contiene las funciones para generar una matriz y calcular la inversa

## Crea una matriz

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
    set <- function(y) {
            x <<- y
            m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getmean <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)

}


## Mete en cache la matriz

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getsolve()
    if(!is.null(m)) {
            message("getting cached data")
            return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
}
