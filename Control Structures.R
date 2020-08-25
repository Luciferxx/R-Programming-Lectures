# Control structures R
# if statement

# if (test_expression) {
#   statement
# }
a<-5
if(a > 0){
  print("Positive number")
}

# if-else statement
# if (test_expression) {
#   statement1
# } else {
#   statement2
# }

# x <- 75
# if(x > 0){
#   print("Non-negative number")
# } else {
#   print("Negative number")
# }

# # Another way

# x <- -5
# y <- if(x > 0) 5 else 6
# y
# 
# #if-else Ladder/Nested if-else
# # if ( test_expression1) {
# #   statement1
# # } else if ( test_expression2) {
# #   statement2
# # } else if ( test_expression3) {
# #   statement3
# # } else {
# #   statement4
# # }
# x <- 7
# if (x < 0) {
#   print("Negative number")
# } else if (x > 0) {
#   print("Positive number")
# } else
#   print("Zero")

# While loop
#while (test_expression)
# {
#   statement
#   }

# i <- 1
# while (i < 6) {
#   print(i)
#   i = i+1
# }

# For loop
#Syntax
# for (val in sequence)
# {
#   statement
# }
# x <- c(2,5,3,9,8,11,6)
# count <- 0
# for (val in x) {
#   if(val %% 2 == 0)  count = count+1
# }
#  print(count)

# Break statement
# A break statement is used inside a loop (repeat, for, while) 
# to stop the iterations and flow the control outside of the loop.
# In a nested looping situation, where there is a loop inside another loop, 
# this statement exits from the innermost loop that is being evaluated.
# if (test_expression) {
#   break
# }

# x <- 1:5
# for (val in x) {
#   if (val == 3){
#     break
#   }
#   print(val)
# }

# Next Statement
# A next statement is useful when we want to skip the current iteration of a loop 
# without terminating it. On encountering next, the R parser skips further 
# evaluation and starts next iteration of the loop.
 
# if (test_condition) {
#   next
# }

# x <- 1:5
# for (val in x) {
#   if (val == 3){
#     next
#   }
#   print(val)
# }

# Repeat Loop
# A repeat loop is used to iterate over a block of code multiple number of times.
# There is no condition check in repeat loop to exit the loop.
# We must ourselves put a condition explicitly inside the body of the loop and 
# use the break statement to exit the loop. Failing to do so will result into an 
# infinite loop.

# repeat {
#   statement
#}
# 
# x <- 1
# repeat {
#   print(x)
#   x = x+1
#   if (x == 6){
#   break
#   }
#  }

# Find the factorial of a number




