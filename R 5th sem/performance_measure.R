data=iris
str(data)
summary(data)
library(caTools)
set.seed(123)
split=sample.split(data$Species, SplitRatio=0.75)
training_set=subset(data, split==TRUE)
test_set=subset(data, split==FALSE)
library(e1071)
?svm
classifier=svm(formula = Species ~ .,
               data=training_set,
               type='C-classification',
               kernel='linear')
y_pred=predict(classifier, newdata = test_set[-5])
plot(classifier, training_set, Petal.Width ~ Petal.Length,
     slice=list(Sepal.Width=3, Sepal.Length=4))
plot(classifier, test_set, Petal.Width ~ Petal.Length,
     slice=list(Sepal.Width=3, Sepal.Length=4))
cm=table(test_set[, 5], y_pred)
cm
tab1=cm
error=1 - (sum(diag(tab1))/sum(tab1))
accuracy=(sum(diag(tab1))/sum(tab1))*100
accuracy
precision=tab1[1]/(tab1[1]+tab1[2])
recall=tab1[1]/(tab1[1]+tab1[3])
f1=(2*precision*recall)/(precision+recall)
