#Accessing elements using index
# Creating a list containing a vector, a matrix and a list.  
list_data <- list(c("Shubham","Arpita","Nishka"), matrix(c(40,80,60,70,90,80), nrow = 2),  
   list("BCA","MCA","B.tech"))  
# Accessing the first element of the list.  
print(list_data[1])  
  
# Accessing the third element. The third element is also a list, so all its elements will be printed.  
print(list_data[3])  