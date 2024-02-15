# Creating the data frame.  
emp.data<- data.frame(  
employee_id = c (1:5),   
employee_name = c("Shubham","Arpita","Nishka","Gunjan","Sumit"),  
sal = c(623.3,915.2,611.0,729.0,843.25),   
  
starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
      "2015-03-27")), 
#stringsAsFactors = TRUE  
)  
# Printing the data frame.            
print(emp.data)  
# (as.Date) function is used to convert to the date datatype
