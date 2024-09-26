a=readline()
n=as.integer(a)
for(i in 1:n){
  for(j in 0:(n-i)){
  cat(" ")
  }
  for(k in 1:i){
    cat("*")
  }
  cat('\n')
}
