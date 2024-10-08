a=c(12,3,45)
class(a)
typeof(a)
a<- 4:-10
a
a= seq(1,4,by=0.5)
a
a=seq(1,5,length.out=6)
a
d= as.character("65")
d

#logical values 
g=12>11
h=12<11
print(g)
h
class(g)
class(h) 
#vector operation
# Access elements in a vector
v=c("Subham"=22,"Arpita"=23,"vaisali"=24)
v
v[1]
v["vaisali"]
a=1:6
a
a[c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE)]
b=c("Ella","Liam","Sophia","Jackson","Olivia","Aiden")
b
# concatination of two vectors
r<-c(b,a)
r
c=7:12
a+c
c-a
c/a
c%%a

#logical index vector
# b=c("Ella","Liam","Sophia","Jackson","Olivia","Aiden")
n=c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE)
b[n]
#duplicate indexing
b[c(1,2,3,3,4)]
#Range indexing 
b[1:3]

#out of order indexing
b[c(2,1,3)]

names(b)=c(1:6)
b
b[4]