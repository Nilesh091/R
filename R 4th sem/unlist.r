# Creating lists.  
list1 <- list(10:20)  
print(list1)  
  
list2 <-list(5:14)  
print(list2)  
  
# Converting the lists to vectors.  
v1 <- unlist(list1)  
v2 <- unlist(list2)  
  
print(v1)  
print(v2)  
  
#adding the vectors  
result <- v1+v2  
print(result)  