# Creating a list containing a vector, a matrix and a list.  
list_data <- list(c("Shubham","Arpita","Nishka"), matrix(c(40,80,60,70,90,80), nrow = 2),  
   list("BCA","MCA","B.tech"))  
  
# Giving names to the elements in the list.  
names(list_data) <- c("Student", "Marks", "Course")  
  
# Adding element at the end of the list.  
list_data[4] <- "Moradabad"  
print(list_data[4])  
  
# Removing the last element.  
list_data[4] <- NULL  
  
# Printing the 4th Element.  
print(list_data[4])  

print("The whole list before updation ====================================================")

print(list_data)
  
# # Updating the 3rd Element.  
list_data[3] <- "Masters of computer applications"  
# print(list_data[3])  

print("The whole list after updation ====================================================")
print(list_data)