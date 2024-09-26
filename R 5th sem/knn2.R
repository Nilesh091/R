#data collection
data=data.frame(
  ca1 <- c(20,20,20,20,20,20,30,15,10,15,10,30,30,10,10,30,15,20,20,15),
  ca2 <- c(15,20,15,15,10,20,30,20,20,15,10,20,20,30,20,10,10,20,30,30),
  grade=c('a','b','b','a','a','b','a','b','a','a','b','a','b','a','a','b','a','b','a','a')
)
#data exploration
View(data)
str(data)
summary(data)

install.packages("caTools")
library(caTools)
split=sample.split(data,SplitRatio = 0.70)
train_split=subset(data,split==TRUE)
test_split=subset(data,split==FALSE)
View(train_split)
train_v=train_split[,1:2]
test_v=test_split[,1:2]
train_n=train_split[,3]
test_n=test_split[,3]

library(class)
y_pred=knn(train_v,test_v,train_n,k=3)
cm=table(test_n,y_pred)
View(cm)

#type casting is the part of preprocessesing

install.packages("caret")
library(ggplot2)
library(lattice)
library(caret)


data$grade=factor(data$grade)
y_pred=factor(y_pred)
test_n=factor(test_n)
cm1=confusionMatrix(test_n,y_pred)
cm1

