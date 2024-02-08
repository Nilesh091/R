#Accessing elements using names
# Creating a list containing a vector, a matrix and a list.  
list_data <- list(c("Shubham","Arpita","Nishka"), matrix(c(40,80,60,70,90,80), nrow = 2),list("BCA","MCA","B.tech"))  
# Giving names to the elements in the list.  
names(list_data) <- c("Student", "Marks", "Course")  
# Accessing the first element of the list.  
print(list_data["Student"])  
print(list_data$Marks)  
print(list_data)  
