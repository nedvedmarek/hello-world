## There is a solution of Programming Assignment 2
## functions caching inverse of matrix

## function creates special matrix object that can cache its inverse 
makeCacheMatrix<-function(x=numeric()) {
  i<-NULL
  set<-function(y) {
    x<<-y
    i<<-NULL
  }
  get<-function() x
  setinverse<-function(inverse) i<<-inverse
  getinverse<-function() i
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

## function computes inverse of special matrix above when inverse hasn't been computed before
cacheSolve<-function(x,...) {
  i<-x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)    
  }
  data<-x$get()
  i<-solve(data,...)
  x$setinverse(i)
  i  
}
