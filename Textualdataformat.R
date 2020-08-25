#Textual data Format

#dput() & dump()

#used to create more descriptive presentation of R Object
#The dump() and dput() functions are useful because the resulting textual format
#is edit-able, and in the case of corruption, potentially recoverable.

y<-data.frame(a=1,b="a",c=5)
y
dput(y)# o/p is in the form of R code and preserves metadata

dput(y,file="Y.R")# sends dput()O/p to a file
new.y<-dget("Y.r")
new.y

#dump()is used on multiple R objects
#Multiple objects can pe deparsed using dump()and can be recovered using source()
x<-"Dump"
Y<-data.frame(a=1L,b="a")
dump(c("x","Y"),file="data.R")
rm(x,Y)
X<-source("data.R")
X
str(Y)

#Connections



