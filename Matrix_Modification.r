# Defining the column and row names.  
row_names = c("row1", "row2", "row3", "row4")  
col_names = c("col1", "col2", "col3")  
  
R <- matrix(c(5:16), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))   
print("Matrix before modification ====================================================")
print(R) 
print("#Assigning value 20 to the element at 3d roe and 2nd column ")
R[3,2]<-20  
print("Matrix after modification ====================================================")
print(R)  
