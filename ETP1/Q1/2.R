vector=c(13,23,11,43,21,33,21,32,33,23,76,55,45,56,33,43)
sortedvector=sort(unique(vector),decreasing = TRUE)
if(length(sortedvector)<3){
  print("vector doesnot contain 3 element")
}else{
  print(sortedvector[3])
}