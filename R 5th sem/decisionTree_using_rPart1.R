library(rpart)
library(rpart.plot)
set.seed(123)
s=sample(nrow(iris),100)
iris_train=iris[s,]
iris_test=iris[-s,]
iris_decisiomn_tree_model=rpart(Species ~.,iris_train,method="class")
plot(iris_decisiomn_tree_model)
text(iris_decisiomn_tree_model)
rpart.plot(iris_decisiomn_tree_model)
?rpart.plot
rpart.plot(iris_decisiomn_tree_model,type = 5,extra = 103)
iris_predict=predict(iris_decisiomn_tree_model,iris_test,type="class")
iris_predict_table=table(iris_test[,5],iris_predict)
iris_predict_table
iris_performance=(sum(diag(iris_predict_table))/sum(iris_predict_table))*100
iris_performance
