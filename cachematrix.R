## makeCacheMatrix function  generats a special matrix which does th e following:
                        ##sets the matrix value

                        ##gets the matrix value

                        ##sets the inverse value

                        ##gets the inverse value

makeCacheMatrix <- function(x = matrix()) {
 i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve retrieves the inverse from the cache. If the inverse is  calculated and no alteration with the  matrix 
 
cacheSolve <- function(x, ...) {
        i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
