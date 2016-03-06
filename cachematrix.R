## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invMatr<-NULL ## initializes inverted matrix to NULL
        ## set function
        set <- function (y) {
                x<<-y
                invMatr<<-NULL
        }
        ## get function
        get<-function() x
        ## set inverted matrix
        setInvMatrix <- function(y) invMatr <<- y
        ## get inverted matrix
        getInvMatrix <- function() invMatr
        ## return list of functions
        list(set = set, get = get, 
             setInvMatrix = setInvMatrix,
             getInvMatrix = getInvMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        y<-x$getInvMatrix()
        ## check if inverted matrix has been cached
        if (!is.null(y)) {
                message("getting cached data")
                return (y)
        }
        ## else compute inverted matrix and stores it
        data<-x$get()
        invMatrix<-solve(data)
        x$setInvMatrix(invMatrix)
        invMatrix
}
