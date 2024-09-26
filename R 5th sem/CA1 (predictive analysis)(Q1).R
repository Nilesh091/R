
#install.packages("class")
#install.packages("caret")
#install.packages("dplyr")
library(class)
library(caret)
library(dplyr)



insurance_data <- read.csv("~/Downloads/insurance (1).csv")

head(insurance_data)
summary(insurance_data)

insurance_data <- data[complete.cases(insurance_data),]
normalize<-function(x){
  return (x-min(x))/(max(x)-min(x))
}

insurance_data$age <- normalize(insurance_data$age)
insurance_data$bmi <- normalize(insurance_data$bmi)
insurance_data$charges <- normalize(insurance_data$charges)

library(caTools)

splitted_data=sample.split(insurance_data,SplitRatio = 0.70)
train_data=subset(insurance_data,splitted_data==TRUE)
test_data=subset(insurance_data,splitted_data==FALSE)


train_features <- train_data[, c("age", "bmi", "charges")]
train_labels <- train_data$region
test_features <- test_data[, c("age","bmi","charges")]
test_labels <- test_data$region

ypride=knn(train_features,test_features,train_labels,k=5)
cm=table(test_labels,ypride)
cm
a1=sum(diag(cm))
a2=sum(cm)
accuracy=(a1/a2)*100
accuracy
