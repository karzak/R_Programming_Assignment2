cacheinverse <- function(x=matrix(),...) {
        A_Inverse <- x$getinverse()
        if(!is.null(A_Inverse)){
                message("getting cached data")
                return(A_Inverse)
        }
        b <- x$get()
        x$set(b)
        A_Inverse <- solve(b,...)
        x$setinverse(A_Inverse)
        A_Inverse
}