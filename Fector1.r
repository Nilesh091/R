data=c("Shubham", "Nishka", "Arpita" , "Shubham", "Sumit",  "Nishka" , "Shubham" ,"Sumit"  , "Arpita" )
d=factor(data)
print(d)
d[4]="Shubham"
print(d)
# d[5]="Nilesh"
# print(d)
# We cant modify data which is not present ti lebel
# Creating a vector as input.  
data <- c("Shubham","Nishka","Arpita","Nishka","Shubham")  
  
# Applying the factor function.  
factor_data<- factor(data)  
  
#Printing all elements of factor  
print(factor_data)  
  
#Change 4th element of factor with sumit  
factor_data[4] <-"Arpita"  
print(factor_data)  
  
#change 4th element of factor with "Gunjan"  
# factor_data[4] <- "Gunjan"    # cannot assign values outside levels  
# print(factor_data)  
  
#Adding the value to the level  
levels(factor_data) <- c(levels(factor_data),"Gunjan")#Adding new level  
factor_data[4] <- "Gunjan"  
print(factor_data)  