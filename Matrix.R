# Matrix is required in R when we want to work in 2-Dimensions.
# Matrix also like vectors in R contain elements of same type

# Create a Matrix
# matrix()function
? matrix() # to open help
data<-1:20
data
X<- matrix(data ,4 ,5, byrow=FALSE)
X
X[3,4]
X[,]
X[,2]
X[2,]
Y<-matrix(data,4,5,byrow=TRUE) # data is populated by row now
Y
Y[2,5]

# By Using rbind() function
r1<- c("I", "am","happy","as")
r2<- c("What","a","day!")
r3<- c(7,8,9)
R<-rbind(r1,r2,r3)
R
R1<-rbind(r1,r2,39)
R1

# using cbind()
c1<- 1:7
c2<- -4:-10
C<-cbind(c1,c2)
C
c3<- -4:-8
C1<- cbind(c1,c3)
C1# Recycling Example

# Matrix Operations
data1<-2:21
X<- matrix(data1 ,4 ,5, byrow=FALSE)
X
data2<-5:24
Y<-matrix(data2,4,5,byrow=F)
Y

# Addition
sum<-X+Y
print(sum)

# Subtraction
difference <-X-Y
difference

# Multiplication elements by elements
Multilication<-4*X
Multilication
Mul<- X*Y
Mul
# Matrix Multiplication
data1<-2:21
X<- matrix(data1 ,4 ,5, byrow=FALSE)
X
data2<-5:24
Y<-matrix(data2,5,4,byrow=F)
Y

mul1<-X %*% Y
mul1

# Divison
Divison<-X/4
data1<-2:21
X<- matrix(data1 ,4 ,5, byrow=FALSE)
X
data2<-5:24
Y<-matrix(data2,4,5,byrow=F)
Y
Divison
Div<- X/Y
Div

#Transpose
X
t(X)
diag(X)# Retuens a vector containing principle diagonal element
x<-c(1,2,3,4)
diag(x)# Creates diagonal matrix

# Eigen Values of Square  Matrix
x<- 1:16
d1<-matrix(x,4,4,byrow=F)
# Eigen values
y<-eigen(d1)
y $values
y$vec

# Inverse of a square matrix
# solve(A)

# Naming Dimensions
# In R row and Columns can be named
# Named Vector 
V<-6:10
V
names(V)
names(V)<-c("a","b","c","d","e")
names(V)
V
names(V)<-c("a","b","c","d",7) # 7 is converted to character
names(V)
V
V["d"]
V["c"]

# clear names
names(V)<- NULL
V

#Named Matrix
# Naming Rows and Columns
temp<-rep(c("a","b","aA"), times=3)
temp

temp1<-rep(c("a","b","aA"), each=3)
temp1
M<-matrix(temp1,3,3,byrow = F)
M
rownames(M)
rownames(M)<-c("x","Y","Z")
rownames(M)
colnames(M)
colnames(M)<- c("I","am","Happy")
colnames(M)
M
M["Y","am"]
M[Y,"am"] # without double quotes , it gives errors

# clear rownames
rownames(M)<- NULL
M
# clear Colnames
colnames(M)<- NULL
M

# Matrix Subsetting
#Creating subsets of matrix
A<-c(1,2,3,4,5,67,8,09)
B<-c(6,34,56,78,90,21,3,1)
C<-c("a","b","c","d","e","f","g","h")
D<-c("q","c","f","h","i","k","l","p")
M<-rbind(A,B,C,D)
M
colnames(M)<- c(1:8)
rownames(M)<-c("A","B","C","D")
M
M[,3:5]
M[2:4,]
M[2:3,6:8]
is.matrix(M)
X<-M[1,]
X
#typeof(X)
is.matrix(X)
is.vector(X)
Y<-M[1, ,drop=F]# If we want output as matrix always
Y
is.matrix(Y)
Z<-M[1,5]
Z
is.matrix(Z)
is.vector(Z)
Z<-M[1,5,drop=F]
Z
is.matrix(Z)




