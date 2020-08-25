# Reading Tabular Data in R
#The formats which are supported by R are CSV, JSON, Excel, Text, XML, etc.
#The most common functions which are used for reading tabular data into R are:- 
#read.table(), read.csv(), fromJSON() and read.xlxs()

# Reading Tabular data from Text file
?read.table()
X<-read.table("sample.txt")
X<-read.table("sample.txt",header=F, nrows = 2)
X<-read.table("sample.txt",header=T, nrows = 2)
X

#read.csv()function
#read.csv()is used for data where commas are used as separators
#and periods are used as decimals
# read.csv() specifies that header to be equal to true.
?read.csv()
#read.csv2()is for data where semicolons are used as separators 
#and commas are used as decimals.
?read.csv2()

#read.xlsx()
#read the contents of an Excel worksheet into a R data frame.
#install.packages("xlsx")
#library(xlsx)
X<-read.xlsx("Toyota.xlsx",1) # 1 represents the sheet number

#A JSON file is a file that stores simple data structures and 
#objects in JavaScript Object Notation (JSON) format, 
#which is a standard data interchange format. 
#It is primarily used for transmitting data between a web application and a server.

#Reading data from JSON File
# fromJSON() function is used to convert JSON data to R objects.
#install.packages("rjson")
#library(rjson)
fromJSON(file="File Name")

#read.delim()
?read.delim2()
