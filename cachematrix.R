## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

z <- dim(x)  #Check dimension of inputted values
 
  #if matrix not square quit function
  if( z[1] != z[2])  
    {
    message("Inputted value not a square matrix")
    message("Function will not execute")
    return()
    }
  
  I <- NULL  #initialize I (used to hold inverse)
  
  #set <- function(y)   #Set data...not sure why this is needed
  #  {
  #  x <<- y
  #  I <<- NULL
  #  }
  
  get <- function()   #get data
    {
    x
    }
  
  setinv <- function(inv) #set inverse I
    {
    I <<- inv
    }
  
  getinv <- function() #Returns inverse I
    {
    I 
    }
  
  list ( get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         I <- x$getinv() #Get inverse if it exist
  
  #  If I not NULL, use cached I
  if( !is.null(I))
    {
    message("getting cached inverse")
    return(I)
    }
  
  data <- x$get()  #  Get Data
  I <- solve(data,...)  # compute inverse
  x$setinv(I)  # Set inverse in cache
  
}
