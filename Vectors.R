#Vectors
# Combine c()Function
A<- c(3,4,5,6)
A
is.numeric(A) # numeric means both integer and double
is.integer(A)
is.double(A)
V1<- c(1L,2L,3L,4L)
is.numeric(V1)
V2<-c("A", "45","B56")
V3<-c(7,"B","C")
V3 # Number is converted to character by R
is.character(V3)

#Other Ways to create Vector
# Sequence Seq()is like :
seq(1,15)
1:15
#Seq() with step size
seq(1,15,3)

# Replicate rep()function
rep(3,50)
rep("A",5)
X<-c(2,5)
d<-rep(X,10)

# How to access the members of vector individually
# Using the [] bracket
V<-c(1,4,67,89,3,45)
V[1]
V[2]
V[-1]
V[-3]
V[1:4]
V[3:6]
V[-2:-4]
V[c(1:4)]

# Vector arithmatic
V1<-c(1,2,3,4,5,6)
V2<-c(7,8,9,10,11,12)
V1+V2
V1-V2
V1*V2
V1/V2
V1>V2
# Recycling of Vectors
# performing operations on vectors of different length
V1<-c(1,2,3)
V2<-c(1,2,3,4,5,6,7,8,9)
V1+V2 # it will recycle the smaller vector but the condition is larger vector should be the multiple of smaller vector

V1<-c(1,2,3)
V2<-c(1,2,3,4,5,6,7,8,9,10)
X<-V1+V2 # here addition is perfomed with warning





