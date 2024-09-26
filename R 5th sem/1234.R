install.packages("rpart")
library("rpart")
data("iris")
View(iris)
str(iris)

indexes=sample(150,110)
indexes
iris_train = iris[indexes]
iris_train = iris[indexes,]
View(iris_train)

- 