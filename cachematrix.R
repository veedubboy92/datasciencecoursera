##A pair of functions that cache the inverse of a matrix.
<<<<<<< HEAD

##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.


makeCacheMatrix <- function(x = data.matrix) {
        #creates matrix object
        m <- NULL
        set <- function(y) {
                
=======
 
##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
 

makeCacheMatrix <- function(x = data.matrix) {
        #creates matrix object
        m <- NULL
        set <- function(y) {

>>>>>>> b5f7554c6d85ceaa4541218477d0997cce9fb15d
                x <<- y
                m <<- NULL
        }
        
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
<<<<<<< HEAD
        
=======
      
>>>>>>> b5f7554c6d85ceaa4541218477d0997cce9fb15d
        
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

 
##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should
##retrieve the inverse from the cache.

<<<<<<< HEAD
##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should
##retrieve the inverse from the cache.

cacheSolve<- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        
=======
cacheSolve<- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
      
>>>>>>> b5f7554c6d85ceaa4541218477d0997cce9fb15d
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        data <- x$get()
        
        m <- solve(data, ...)
        x$setsolve(m)
        m
}