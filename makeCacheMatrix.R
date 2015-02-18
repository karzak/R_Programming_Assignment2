makeMatrix = function(x = matrix()) {
        A_Inverse <- NULL 
        b <- NULL
        set <- function(b) {
                A_Inverse <<-b
                b <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) A_Inverse <<- solve
        getinverse <- function() A_Inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}
