#Dataframe
# Create the vectors for data frame.
height <- c(132,151,162,139,166,147,122,202)
weight <- c(48,49,66,53,67,52,40,70)
gender <- c("male","male","female","female","male","female","male","male")

# Create the data frame.
#?data.frame()
input_data <- data.frame(height ,weight,gender)
str(input_data) #Structure of dataframe
input_data <- data.frame(height ,weight,gender,stringsAsFactors = T)
str(input_data) #Structure of dataframe
print(input_data)
typeof(input_data)#Dataframe is a special case of List()
class(input_data)
names(input_data)
ncol(input_data)
nrow(input_data)
length(input_data)#returns length of the list, same as ncol()
str(input_data) #Structure of dataframe
head(input_data,n=3)
tail(input_data,n=3)

#change the name of the columns in dataframe
#homework




# Understanding $ Sign
input_data$height[1]
input_data$ height[2:5]

# Operations on Dataframe
#Subsetting
input_data[4:6,]
input_data[,1:3]
input_data[c(4,6),]
input_data[1,] # No need for drop=F
is.data.frame(input_data[1,])
input_data[,1,drop=F]
is.data.frame(input_data[,1])
input_data[,1,drop=F]
is.data.frame(input_data[,1,drop=F])

# Multiply/Add/Subtract/divide
input_data$height*input_data$weight # just as example

#Add a column using cbind()
cbind(input_data,xyz=c("a","b"))
head(input_data)

# Add a column
head(input_data)
input_data$abc=input_data$height*input_data$weight
head(input_data)
input_data$abc<-1:4# Recycling works here but only in case of multiples
head(input_data)

# Remove a column
input_data$abc<-NULL
head(input_data)


#Adding a row to Data Frame using rbind()
rbind(input_data,list(6,78,"male"))
input_data[9,]<-NULL
input_data[-5,]

# Modifying a component in Data frame
input_data[1,1]<-178
input_data[1,input_data$height[1]]<-178 #another way of writing
input_data

# Merging Data Frames
#join Data frames by a common column
# Create 1st Data Frame
Empname<-c("A","B","C","D","E")
Empid<-c(1,2,3,4,5)
Empsal<-c(234889,567255,78899,44246,67858)
df1<-data.frame(Empname,Empid,Empsal)

# Create 2nd Data Frame
Empname1=c("AB","BC","CD","DE","EF")
Empid1<-c(11,12,13,14,15)
Empsal1<-c(4556,567354,4446,67858,23466)
df2<-data.frame(Empname1,Empid1,Empsal1)

#Merging Data Frames using merge()
Df3<- merge(df1,df2,by.x="Empid",by.y = "Empid1", all.x = T,all.y = T)
Df3

#Merging Data Frames using dplyr library
#install.packages("dplyr")
library(dplyr)

#Left_join()
Df4<- left_join(df1,df2,by=c("Empid"="Empid1"))
Df4

#right_join()
Df5<- right_join(df1,df2,by=c("Empid"="Empid1"))
Df5

# Filtering a Data frame
# To view only specific rows
Filter<-Df3$Empid>5
Filter
Df3[Filter,] #Displays only TRUE Values
Df3[Df3$Empid>5,]
Df3[Df3$Empid>5 & Empsal1>10000,]
Df3[Df3$Empid==5,]










