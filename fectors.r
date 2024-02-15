# music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

# music_genre
# Creating a vector as input.  
data <- c("Shubham","Nishka","Arpita","Nishka","Shubham","Sumit","Nishka","Shubham","Sumit","Arpita","Sumit")  
  
print(data)  
print(is.factor(data))  
  
# Applying the factor function.  
factor_data<- factor(data)  
  
print(factor_data)  
print(is.factor(factor_data))  


# Creating a vector as input.  
data <- c("Shubham","Nishka","Arpita","Nishka","Shubham","Sumit","Nishka","Shubham","Sumit","Arpita","Sumit")  
  
# Applying the factor function.  
factor_data<- factor(data)  
  
#Printing all elements of factor  
print(factor_data)  
  
#Accessing 4th element of factor  
print(factor_data[4])  
  
#Accessing 5th and 7th element  
print(factor_data[c(5,7)])  
  
#Accessing all elemcent except 4th one  
print(factor_data[-4])  
  
#Accessing elements using logical vector  
print(factor_data[c(TRUE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,TRUE)])  
