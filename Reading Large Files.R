#Reading Large Tables

#1.Calculate the RAM is available for storage

#2.colClasses - specify the class of columns
?read.table()

#If colClasses is not specified, then all the columns 
#will be scanned to determine the class of the data in a column

#colClasses is used to load data more quickly in R
#Unless colClasses is specified, all columns are read as character columns 
#and then converted using type.convert() to logical, integer, numeric, 
#complex or (depending on as.is) factor as appropriate.

# Considerations before reading large files
# 1. Memory currently available
# 2. Type of Operating System
# 3. 32-bit or 64-bit OS
# 4. Number of applications in use
# 5. Number of users currently logged in

#If you have a dataframe with 1,500,000 rows 	and 120 columns, 
#all of which are numeric data. 
#How much memory is required to store this data frame?

# 1,500,000 *120 * 8 bytes/numeric
# 1440000000 bytes
# 1440000000/2power20 bytes/MB
# 1,373.29 /210GB
# 1.34 MB

#Approximately twice this amount of RAM i.e.2.68 GB will be required.





