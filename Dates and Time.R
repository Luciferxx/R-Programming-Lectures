# Dates and Times
#Three Date/Time classes are built-in in R, Date, POSIXct, and POSIXlt.
#Date class: This is the class to use if you have only dates, but no times.
#create a Date

dt1<-as.Date("2012-07-22")
dt1

# non-standard formats must be specified:
dt2 <- as.Date("04/20/2011", format = "%m/%d/%Y")
dt2

dt3 <- as.Date("October 6, 2010", format = "%B %d, %Y")
dt3

# see list of format symbols:
# %d	Day of the month (decimal number)
# %m	Month (decimal number)
# %b	Month (abbreviated)
# %B	Month (full name)
# %y	Year (2 digit)
# %Y	Year (4 digit)

# calculations with dates:

#find the difference between dates:
dt1-dt2

difftime(dt1, dt2, units = "weeks")

# Add or Subtract days

dt1+10

dt2-10

# create a vector of dates and find the intervals between them:

three.dates <- as.Date(c("2010-07-22", "2011-04-20", "2012-10-06"))
three.dates

diff(three.dates)


#create a sequence of dates:

six.weeks <- seq(dt1, length = 6, by = "weeks")
six.weeks

six.weeks <- seq(dt1, length = 6, by = "2 weeks")
six.weeks

#see the internal integer representation
#Internally, Date objects are stored as the number of days 
#since January 1, 1970, using negative numbers for earlier dates

unclass(dt1)
as.numeric(dt1)

dt1 - as.Date("1970-01-01")

#POSIXct is used when you have times in your data
# Portable operating System Interface, primarily for UNIX systems

tm1 <- as.POSIXct("2013-07-24 23:55:26")
tm1

#non-standard formats must be specified:
tm2 <- as.POSIXct("25072013 08:32:07", format = "%d%m%Y %H:%M:%S")
tm2

#Specify the Time Zone
tm3 <- as.POSIXct("2010-12-01 11:42:03", tz = "GMT")
tm3

#Calculations with time
# Compare Time

tm2>tm1

#Add or Subtract Seconds
tm1+10

tm1-20

#difference between times
tm2-tm1

#Get the current time (in POSIXct by default)

Sys.time()

#See the internal presentation
unclass(tm1)
as.numeric(tm1)

difftime(tm1, as.POSIXct("1970-01-01 00:00:00", tz = "UCT"), units = "secs")

# POSIXlt
#This class enables easy extraction of specific componants of a time.
# seconds
# minutes
# hours
# day of month (1-31)
# month of the year (0-11)
# years since 1900
# day of the week (0-6 where 0 represents Sunday)
# day of the year (0-365)
# Daylight savings indicator (positive if it is daylight savings)

tm1.lt <- as.POSIXlt("2013-08-24 23:55:26")
tm1.lt

unclass(tm1.lt)# POSIXlt objects are lists

unlist(tm1.lt)

#extract component of a time using $ sign
tm1.lt$sec
tm1.lt$mon
tm1.lt$mday




#truncate or round off the time
trunc(tm1.lt, "days")

trunc(tm1.lt, "min")

trunc(tm1.lt, "hour")


















