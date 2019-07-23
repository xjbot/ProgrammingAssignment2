## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set_value<-function(new_matrix){
    x<<- new_matrix
    m<<- NULL
  }
  get_value<- function() x
  
  set_inverse<- function(inverse_from_outside) m<<- inverse_from_outside
  
  get_inverse<- function() m
  
  list (set_value=set_value,      set_inverse=set_inverse,
        get_value=get_value,      get_inverse=get_inverse)
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  checker<-x$get_inverse()
  if (!is.null(checker)) {
    message('Getting the inverse:(the inverse has already been calculated)')
    return (checker)
  }
  
  the_matrix<-x$get_value()
  the_inverse<- solve(the_matrix)
  x$set_inverse(the_inverse)
  the_inverse
}
