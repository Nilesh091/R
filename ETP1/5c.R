v=c(1,2,3,3,4,4,2,3,3)
x=readline("gove an integer")
xm=as.integer(x)
count=0
for(i in v){
  if(i==xm){
    count=count+1
  }
}
count
