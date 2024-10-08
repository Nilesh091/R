
data=c("Shubham", "Nishka", "Arpita" , "Shubham", "Sumit",  "Nishka" , "Shubham" ,"Sumit"  , "Arpita" )


for (x in data) {
  cat(x," ")
}

a=list()
for(i in 1:5){
  a[i]<-i
}
print(a)
mat=matrix(data=seq(10,21,by=1),nrow=6,ncol=2)
for(i in 1:nrow(mat)){
  for(j in 1:ncol(mat)){
    print(paste("mat[",i,",",j,"]=",mat[i,j]))
  }
}
print(mat)
for(i in 1:5){
  for(j in 1:i){
    cat("*"," ")
  }
  cat("\n")
}

fruit=list(Basket=c("Rambutan",
                    "Dragonfruit",
                    "Fig",
                    "Pomegranate",
                    "Starfruit",
                    "Kiwi"))
for(i in fruit){
  print(i)
}

a=1
repeat{
  print("Hello")
  if(a>=5){
    break
  }
  a=a+1
}

v=c("Hello","world")
a=1
repeat{
  print(v)
  if(a==5){
    break
  }
  a=a+1
}
for(i in c(2,4,6,8)){
  for(j in c(1,3)){
    if(i==6){
      break
    }
    print(i)
  }
}

x=switch(
  3,
  "q",
  "w",
  "e",
  "r",
  "t",
  "y"
)
print(x)
a=1
b=2
x=switch(
  a+b,
  "q",
  "w",
  "e",
  "r",
  "t",
  "y"
)
print(x)

y="18"
x=switch(
  y,
  "18"="q",
  "19"="w",
  "20"="e"
  
)
print(x)

x="2"
y="1"
a=switch(
  paste(x,y,sep=""),
  "9"="hello n",
  "21"="hello r",
  "12"="Hello s"
)
print(a)

a=c(23,45,54,76,112)
print(a[1])