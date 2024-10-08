a = matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3,byrow = TRUE)
print(a)


r_n = c("Row_1","Row_2","Row_3")
c_n = c("Column_1","Column_2","Column_3","Column_4")
b = matrix(c(5:16),nrow = 3,ncol = 4,dimnames = list(r_n,c_n))
print(b)