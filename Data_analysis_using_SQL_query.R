library(readxl)
d=read_excel("/Users/nileshranjansahu/Downloads/insurance.xls")
library(sqldf)
sqldf("select * from d limit 10")
sqldf("select age,sex as gender from d limit 10")
sqldf("select age,sex,region from d where region='southeast' limit 10")
sqldf("select *  from d where sex like 'm%'limit 10")
sqldf("select region,smoker from d where charges==(select max(charges) from d)")
a=sqldf("select age from d")
head(a)
str(d)
summary(d)
x= matrix(c(1,2,3,4),nrow = 3,ncol = 4,byrow = TRUE)
x
y=apply(x,1,sum)
y
z=apply(x,2,sum)
z
a=list(a=c(8,9,7,5),b=data.frame(x=1:5,y=c(5,1,0,2,3)))
a
lapply(a,sum)
sapply(1:4,sqrt)
sapply(1:4,sqrt)
#sapply 2nd eg
out<-numeric(10)
for (i in 1:10) {
  out[i]<-i^2
}
out