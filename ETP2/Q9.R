arr=array(NA,dim = c(10,10))
for(i in 1:10){
  for(j in 1:10){
    arr[i,j]=i*j
  }
}

rownames(arr)=c(1:10)
colnames(arr)=c(1:10)
arr