# Scope of a Variable
#Global variables are those variables which exists throughout 
#the execution of a program. 
#It can be changed and accessed from any part of the program.
# Local variables are those variables which exist only within a certain 
#part of a program like a function, and is released when the function call ends.

# outer_func <- function(){
#   b <- 20
#   inner_func <- function(){
#     c <- 30
#   }
# }
# a <- 10

#Accessing Global Variables
#To make assignments to global variables, superassignment operator,
#<<-, is used.


outer_func <- function(){
  inner_func <- function(){
    a <<- 30
    print(a)
  }
  inner_func()
  print(a)
}
outer_func()
print(a)


