#Factors
#Factors are the data objects which are used to categorize the data 
#and store it as levels. 
#They can store both strings and integers.
#Factors are created using the factor () function by taking a vector as input.

## Create a vector as input.
data <- c("East","West","East","North","North","East","West","West","West","East","North")

print(data)
print(is.factor(data))

# Apply the factor function.
#?factor()
factor_data <- factor(data)

print(factor_data)
levels(factor_data)
nlevels(factor_data)
print(is.factor(factor_data))

#Change the order of levels
data <- c("East","West","East","North","North","East","West",
          "West","West","East","North")
# Create the factors
factor_data <- factor(data)
print(factor_data)

# Apply the factor function with required order of the level.
new_order_data <- factor(factor_data,levels = c("East","West","North"))
print(new_order_data)

#Generating factor levels
#By gl(n,k,labels)function
#n is a integer giving the number of levels.
#k is a integer giving the number of replications.
#labels is a vector of labels for the resulting factor levels.
v <- gl(3, 4, labels = c("Tampa", "Seattle","Boston"))
print(v)

# Another Example
food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
levels(food)
nlevels(food)
min(food)# Doesn't work
food <- factor(food, levels = c("low", "medium", "high"), ordered = TRUE)
food
levels(food)
X<-min(food)
max(food)




