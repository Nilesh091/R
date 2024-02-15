#Creating two vectors of different lengths  
vec1 <-c(1,3,5)  
vec2 <-c(10,11,12,13,14,15)  
  
#Initializing names for rows, columns and matrices  
col_names <- c("Col1","Col2","Col3")  
row_names <- c("Row1","Row2","Row3")  
matrix_names <- c("Matrix1","Matrix2")  
  
#Taking the vectors as input to the array   
res <- array(c(vec1,vec2),dim=c(3,3,2),dimnames=list(row_names,col_names,matrix_names))  
print(res)  
