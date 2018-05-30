#   _           _                                  _   ____  
#  /_\  ___ ___(_) __ _ _ __  _ __ ___   ___ _ __ | |_|___ \ 
# //_\\/ __/ __| |/ _` | '_ \| '_ ` _ \ / _ \ '_ \| __| __) |
#/  _  \__ \__ \ | (_| | | | | | | | | |  __/ | | | |_ / __/ 
#\_/ \_/___/___/_|\__, |_| |_|_| |_| |_|\___|_| |_|\__|_____|
#                 |___/                                      


## This function is responsible for taking the values 
## of a matrix and assigning them to a variable. It 
## has the possibility of saving the inverse of that 
## matrix

makeCacheMatrix <- function(x = matrix()) {
  	
  	minv <- NULL

  	## The set function

  	set <- function(y) {
    	x <<- y
    	minv <<- NULL
  	}

  	## The get function

  	get <- function() x
  	setinverse <- function(solve) minv <<- solve
  	getinverse <- function() minv
  	list(set = set, get = get,
       	setinverse = setinverse,
       	getinverse = getinverse)

}

## This function takes the matrix stored by the 
## function XXXXX and calculates the inverse of 
## that matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    minv <- x$getinverse()

  	if(!is.null(minv)) {
    	message("getting cached data")
    	return(m)
  	}

  	data <- x$get()
  	minv <- solve(data, ...)
  	x$setinverse(minv)
  	minv

}
