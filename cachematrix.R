#This function get two functions: get, which is to get the matrix, getinverse, which is to get the inverse value of the matrix. The two functions are stored in the main function.
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
    get <- function()x
	getinverse <- function() m
	list(get = get, getinverse = getinverse)
}


#This function gets the inverse of the matrix, if it is already stored in the cache, it get the inverse and says "getting cached data"; if not, it will calculate the inverse of the matrix.

cacheSolve <- function(x, ...) {
       m <- x$getinverse()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
		 }
		 data <- x$get()
		 m <- solve(data)
		 x$setinverse(m)
		 m

}
