matrix1=matrix(1:16,nrow = 4)
matrix2=matrix(17:32,nrow = 4)
arr=array(c(matrix1,matrix2),dim=c(4,4,2))
arr[,,2][2,]
arr[,,2][3,]
for(i in 1:4){
  print(arr[,,2][i,][3])
}
