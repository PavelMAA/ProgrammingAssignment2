## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix function. If the inverse has already been calculated, 
## then the cachesolve function can retrieve the inverse from the cache.
## Otherway, if x is a square invertible matrix, then solve(x) returns its inverse

## This following function of makeCacheMatrix

makeCacheMatrix <- function(x = matrix()) {
   i<-NULL
   set<-function(y){
     x<<-y
     i<<-NULL
   }
   get<-function()x 
   setinverse<-function(inverse)i<<-inverse
   getinverse<-function()i
   list(set=set, get=get, 
       setinverse=setinverse, 
       getinverse=getinverse)
   }


## This function for cacheSolve

cacheSolve <- function(x, ...) {
          i<-x$getinverse()
          if(!is.null(i)){
           message("getting cached data")
            return(i)
          }
  data<-x$getinverse()
    i<-solve(data, ...)## Return a matrix that is the inverse of 'x'
    x$setinverse(i)
    i
  }
##end##
