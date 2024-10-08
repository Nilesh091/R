#Arranging elements sequentially by row.  
P <- matrix(c(5:16), nrow = 4, byrow = TRUE)  
print(P)  
# Arranging elements sequentially by column.  
Q <- matrix(c(3:14), nrow = 4, byrow = FALSE)  
print(Q)  
  
# # Defining the column and row names.  
row_names = c("row1", "row2", "row3", "row4")  
col_names = c("col1", "col2", "col3")  
  
R <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))  
print(R)  
