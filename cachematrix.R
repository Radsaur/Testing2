## Put comments here that give an overall description of what your
## functions do
#First, the function initializes two objects - a matrix and a variable 
#then it sets x and makes sure that m is zero
# after that it sets getters-setters. for set() the value inv comes from
#the global environment. also set() is used to input new variables i.e.
#for changing makeChaseMatrix once it has been created.
#finally it creates a list

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL 
  set <- function(y){
    x<<-y
    m<<-NULL}
  get<- function()x
  setinv<- function(inv)m<<-inv
  getint<- function()m
  list(set=set, get=get,
       setinv=setinv,
       getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<- x$getinv
  if (is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m<- solve(data, ...)
  x$setinv(m)

  }
