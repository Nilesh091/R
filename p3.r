number = 1

# while loop to print odd number between 1 to 10
while(number <= 10) {

  # skip iteration if number is even
  if (number %% 2 == 0) {  
    number = number + 1
    next
  }
    
  # print number if odd
  print(number)
    
  # increment number by 1
  number = number + 1  
}