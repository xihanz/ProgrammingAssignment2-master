## Put comments here that give an overall description of what your
## functions do
## This two functions can cache the inverse of a matrix and no need to 
caculate the inverse of matrix repeatedly if the it has been caculated before.

## Write a short comment describing this function
## makeCacheMatrix is a function which can cache the inverse matrix 
for the input matrix.The first function is to set a matrix and the second one
is to get the matrix.Thirdly,function setn is to set the inverse of matrix
and the final function getn is to get the inverse of matrix.
makeCacheMatrix <- function(x = matrix()) {n<-NULL
set<-function(y){
x<<-y
 n<<-NULL
}
get<-function()
x
setn<-function(solve)
n<<-solve
getn<-function()n
list(set=set,get=get,setn=setn,getn=getn)
}


## Write a short comment describing this function
##cacheSolve function is to check if the inverse of matrix has been
computed. If so,it will get the value from the function get it from the
makeCacheMatrix function and print "getting cached data",if not,it will compute
the inverse of matrix and cache it in the makeCacheMatrix function

cacheSolve <- function(x, ...) {n<-x$getn()
if(!is.null(n)){
message("getting cached data")
return(n)
}
data<-x$get()
n<-solve(data,...)
x$setn(n)
n

        ## Return a matrix that is the inverse of 'x'
}
