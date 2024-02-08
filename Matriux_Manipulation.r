# Defining the column and row names.  
row_names = c("row1", "row2", "row3", "row4")  
col_names = c("col1", "col2", "col3")  
#Creating matrix   
R <- matrix(c(5:16), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))  
print(R)  
  
#Accessing element present on 3rd row and 2nd column  
print(R[3,2])  
  
#Accessing element present in 3rd row  
print(R[3,])  
  
#Accessing element present in 2nd column  
print(R[,2])  
