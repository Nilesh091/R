# Creating a list containing a vector, a matrix and a list.  
list_data <- list(c("Shubham","Nishka","Gunjan"), matrix(c(40,80,60,70,90,80), nrow = 2),  
   list("BCA","MCA","B.tech"))  
  
# Giving names to the elements in the list.  
names(list_data) <- c("Students", "Marks", "Course")  
  
# Show the list.  
print(list_data)  
