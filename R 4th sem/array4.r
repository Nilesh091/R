#Creating two vectors of different lengths  
vec1 <-c(1,3,5)  
vec2 <-c(10,11,12,13,14,15)  
  
#Taking the vectors as input to the array1   
res1 <- array(c(vec1,vec2),dim=c(3,3,2))  
print(res1)  
  
#using apply function   
result <- apply(res1,c(1),sum)  
print (result)