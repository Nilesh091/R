# Creating the data frame.  
emp.data<- data.frame(  
employee_id = c (1:5),   
employee_name = c("Shubham","Arpita","Nishka","Gunjan","Sumit"),  
sal = c(623.3,515.2,611.0,729.0,843.25),   
  
starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
      "2015-03-27")),  
stringsAsFactors = FALSE  
)  
# Extracting 2nd and 3rd row corresponding to the 1st and 4th column      
final <- emp.data[c(2,3),c(1,4)]  
print(final)  
