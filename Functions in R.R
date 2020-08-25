# Homework: Switch()function  in R 

# Functions in R
# Syntax

# func_name <- function (argument) {
#   statement
# }

#Example

pow <- function(x, y) {
  # function to print x raised to the power y
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}
pow(4,3)
# The argument matching of formal argument to the actual arguments 
#takes place in positional order.

# named Arguments
# While Calling using named arguments, 
#order of actual arguments doesn't matter
pow(x=4,y=7)
pow(y=7,x=3)

# we can use named and unnamed arguments in single call
pow(4,y=7)
pow(7,x=3)

# Default value to argument

pow <- function(x, y=4) {
  # function to print x raised to the power y
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}

pow(3)

#Return value from a function
#Syntax: return(expression)

check <- function(x) {
  if (x > 0) {
    result <- "Positive"
  }
  else if (x < 0) {
    result <- "Negative"
  }
  else {
    result <- "Zero"
  }
  return(result)
}
check(5)

# Functions without return
#If there are no explicit returns from a function, the value 
#of the last evaluated expression is returned automatically in R.

check <- function(x) {
  if (x > 0) {
    result <- "Positive"
  }
  else if (x < 0) {
    result <- "Negative"
  }
  else {
    result <- "Zero"
  }
   result
}
check(5)

#Multiple returns

# If we want to return multiple values in R, 
# we can use a list (or other objects) and return it.

multi_return <- function() {
  my_list <- list("color" = "red", "size" = 20, "shape" = "round")
  return(my_list) 
}

a<-multi_return()
a$color
a$shape

#Homework: Try it for vector and share your experience
#Make a simple Calculator using function













