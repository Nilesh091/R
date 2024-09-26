#Q1
a=readline()
n=as.integer(a)
n1=n
arm=0
while (n1>0) {
  arm=arm+((n1%%10)^3)
  n1=as.integer(n1/10)
}
if(arm==n){
  print("The given number is an Armstrong Number")
}else{
  print("The given number is not an Armstrong Number")
}
#Q2
df=data.frame(
  Name=c("ABC","XYZ","RTY"),
  Age=c(27,29,34),
  City=c("JAL","PGH","DEL")
)
newDF=data.frame(
  Name=c("NIL"),
  Age=c(20),
  City=c("GUR")
)
Combined_df=rbind(df,newDF)
Combined_df
library("sqldf")
access=sqldf("select * from Combined_df where Name='ABC'")
access
sqldf("update Combined_df set Name='WER' where Name='RTY'")
Combined_df
sqldf("Delete from Combined_df where Name='NIL'")
Combined_df
Combined_df$newCol=c("HR","SDE","Data Analyst","SDE")
Combined_df


