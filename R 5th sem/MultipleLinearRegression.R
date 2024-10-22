dataset=read.csv("~/LPU/R/R 5th sem/50_Startups.csv")
str(dataset)
View(dataset)
#checking for null values
sum(is.na(dataset))
#handling categorical data
dataset$State=factor(dataset$State,levels=c('New York','Florida',
                                          'California'),labels=c(1,2,3))
View(dataset)
cor(dataset[c("R.D.Spend","Administration","Marketing.Spend")])
library(caTools)
#splitting the dataset
split<-sample.split(dataset$Profit,SplitRatio = 0.80)
training_set<-subset(dataset,split=="TRUE")
test_set<-subset(dataset,split=="FALSE")
#fitting multiple linear regression model
regressor<-lm(formula=Profit~R.D.Spend+Administration+Marketing.Spend,data=training_set)
y_pre<-predict(regressor,new=test_set)
y_pre


a=cor(training_set[c("R.D.Spend","Administration","Marketing.Spend")])
library(psych)
pairs(training_set[c("R.D.Spend","Administration","Marketing.Spend")])
pairs.panels(training_set[c("R.D.Spend","Administration","Marketing.Spend")])
library(corrplot)
corrplot(a,method="number")
corrplot(a, type="upper")
summary(regressor)


a1=cor(test_set[c("R.D.Spend","Administration","Marketing.Spend")])
library(psych)
pairs(test_set[c("R.D.Spend","Administration","Marketing.Spend")])
pairs.panels(test_set[c("R.D.Spend","Administration","Marketing.Spend")])
library(corrplot)
corrplot(a1, method="number")
corrplot(a1, type="upper")
summary(regressor)



a2=cor(dataset[c("R.D.Spend","Administration","Marketing.Spend")])
library(psych)
pairs(dataset[c("R.D.Spend","Administration","Marketing.Spend")])
pairs.panels(dataset[c("R.D.Spend","Administration","Marketing.Spend")])
library(corrplot)
corrplot(a2, method="number")
corrplot(a2, type="upper")
summary(regressor)

