## Put comments here that give an overall description of what your
## functions do

## Creates a list. 4 functions are defined .set, get,setinverse,getinverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  set<- function(y){
    x <<- y
    inverse <<- NULL
  }
  
  get  <- function(){x}
  setinverse<- function(sol) {inverse <<-sol }
  getinverse <- function() {inverse }
  
  list( set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}


## Retrieves the list made in the above function and checks if the inverse has been already calculated and if not it then calculates it and stores it for further use

cacheSolve <- function(x, ...) {
  inverse<- x$getinverse()
  if(!is.null(inverse)){
    message("Available")
    
    return(inverse)
    
  }
  
  data<- x$get()
  inverse <- solve(data)
  x$setinverse(inverse)
  inverse
  ## Return a matrix that is the inverse of 'x'
}
