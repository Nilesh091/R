install.packages("TTR")
a=read.csv("/Users/nileshranjansahu/Downloads/500510 1.csv")
head(a)
b=data.frame(
  Trdate=as.Date(a$Date,format="%d-%b-%y"),
  HighPrice=a$High.Price,
  LowPrice=a$Low.Price,
  closePrice=a$Close.Price,
  volume=a$No.of.Shares,
  spCloseOpen=a$Spread.Close.Open
)
c=b[order(b$Trdate,decreasing = FALSE),]
rownames(c)=c(1:nrow(b))
str(c)
head(c)
c
######################################################################################
input<-read.csv("/Users/nileshranjansahu/Downloads/500510 1.csv")
View(input)
head(input)
datadf<-data.frame(TrDate=as.Date(input$Date,format = "%d-%b-%Y"),
                   HigherPrice=input$High.Price,LowerPrice=input$Low.Price
                   ,closePrice=input$Close.Price,volume=input$No.of.Shares,
                   spClosenopen=input$Spread.Close.Open)
abc<-datadf[order(datadf$TrDate,decreasing = F),]
rownames(abc)<-c(1:nrow(datadf))
str(abc)
head(abc)
abc$TrDate<-as.character(abc$TrDate,format="%d-%d-%y")
head(abc)
tail(abc)
print(paste("number of trading days in the dataset= ",nrow(abc)))

#module A1
#Techinal Analysis: Simple Moving Average,SMA
library(TTR)
sma<-SMA(abc$closePrice,n=20)
xyz<-data.frame(TrDate=abc$TrDate,ClosePrice=abc$closePrice,volume=abc$volume,sma)
head(xyz,24)