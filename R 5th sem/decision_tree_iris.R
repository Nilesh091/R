data("iris")
str(iris)
ind=sample(150,110)
#150: The number of samples or rows in the dataset (in this case, the iris dataset contains 150 rows).
#110: The number of samples you want to randomly select.

iris_train=iris[ind,]
iris_test=iris[-ind,]
iris_train_label=iris[ind,5]
iris_test_lable=iris[-ind,5]
install.packages("party")
#target=
library(party)
tree=ctree(Species ~.,iris)
plot(tree,main="Decision Tree for iris")
