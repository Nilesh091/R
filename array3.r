#Creating two vectors of different lengths  
vec1 <-c(1,3,5)  
vec2 <-c(10,11,12,13,14,15)  
  
#Taking the vectors as input to the array1   
res1 <- array(c(vec1,vec2),dim=c(3,3,1))  
print(res1)  
  
#Creating two vectors of different lengths  
vec1 <-c(8,4,7)  
vec2 <-c(16,73,48,46,36,73)  
  
#Taking the vectors as input to the array2   
res2 <- array(c(vec1,vec2),dim=c(3,3,1))  
print(res2)  
  
#Creating matrices from these arrays  
mat1 <- res1[,,1]  
mat2 <- res2[,,1]  
res3 <- mat1+mat2  
print(res3)  
