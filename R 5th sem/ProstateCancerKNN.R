#data Collection
dataset = read.csv("~/LPU/R/R 5th sem/Prostate_cancer 1.csv")
#manage and explore dataset
View(dataset)
#preprocessing
data=dataset[,2:10]
#View(data)
#str(data)
#summary(data)

#normalization
a= function(x){((x- min(x))/(max(x)-min(x)))}
b<- as.data.frame(lapply(dataset[3:10], a))
#View(b)
data_u=data.frame(data$diagnosis_result,b)
View(data_u)
#train and test
#install.packages("caTools")
library(caTools)
split=sample.split(data_u,SplitRatio =0.70)
train_split=subset(data_u,split==TRUE)
test_split=subset(data_u,split==FALSE)
View(train_split)
View(test_split)

train_v=train_split[,2:9] #1var
test_v=test_split[,2:9]  #2var
train_n=train_split[,1] # 3var
test_n=test_split[,1]  # 4var

library(class)

y_pred=knn(train_v,test_v,train_n,k=10)
cm=table(test_n,y_pred) 
cm
a1=cm[1]+cm[4]
a2=sum(cm)
accuracy=(a1/a2)*100
accuracy
