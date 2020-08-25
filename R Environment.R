#R Environment 
#Environment can be thought of as a collection of 
#objects (functions, variables etc.).
#An environment is created when we first use the R interpreter.
#Any variable we define, is now in this environment.
#The top level environment available to us at the R command 
#prompt is the global environment called R_GlobalEnv.

environment() # to get the current environment

.GlobalEnv

ls() # to get the list of variables in current environment

# Cascading of Environments

f <- function(f_x){
  g <- function(g_x){
    print("Inside g")
    print(environment())
    print(ls())
  }
  g(5)
  print("Inside f")
  print(environment())
  print(ls())
}
f(7)
#An environment has a frame, which has all the objects defined, 
#and a pointer to the enclosing (parent) environment.


