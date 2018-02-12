makeCacheMatrix <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  matrix( c(set=set, get=get, setmean=setmean, getmean=getmean), nrow<-2, ncol<-2) 
}
