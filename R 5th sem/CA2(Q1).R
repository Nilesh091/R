data=read.csv("~/LPU/R/R 5th sem/titanic_data.csv")
#View(data)
library(caTools)
split=sample.split(data,SplitRatio = 0.8)
training=subset(data,split == TRUE)
testing=subset(data,split == FALSE)


library(e1071)
model = naiveBayes(Survived ~ ., data = training)
pred = predict(nb_model, testing)
cm=table(pred,testing$Survived)
cm
Accuracy=(sum(diag(cm))/sum(cm))*100
accuracy

#Decision Tree
library(rpart)
library(rpart.plot)
model=rpart(Survived ~.,training,method="class")
rpart.plot(model)
