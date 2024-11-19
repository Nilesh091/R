data=read.csv("~/LPU/R/R 5th sem/social.csv")
data=data[3:5]
View(data)
data$Purchased=factor(data$Purchased,levels = c(0,1))
library(caTools)
set.seed(123)
split=sample.split(data$Purchased,SplitRatio = .75)
train=subset(data,split==TRUE)
test=subset(data,split==FALSE)
train[-3]=scale(train[-3])
test[-3]=scale(test[-3])
library(e1071)
?svm
classifier=svm(formula = Purchased ~ .,
               data=train,
               type='C-classification',
               kernel='linear')
y_pred=predict(classifier,test[-3])
cm=table(test[,3],y_pred)
cm
tab1=cm
error=1 - (sum(diag(tab1))/sum(tab1))
accuracy=(sum(diag(tab1))/sum(tab1))*100
accuracy
precision=tab1[1]/(tab1[1]+tab1[2])
precision
recall=tab1[1]/(tab1[1]+tab1[3])
recall
f1=(2*precision*recall)/(precision+recall)
f1

#plotting
set=train
# Setting up a grid for plotting the training data
x1 <- seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
x2 <- seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)

# Creating a grid set from x1 and x2
grid_set <- expand.grid(x1 = x1, x2 = x2)
colnames(grid_set) <- c('Age', 'EstimatedSalary')

# Predicting outcomes for each point in the grid set
y_grid <- predict(classifier, newdata = grid_set)

# Plotting the training set with decision boundaries
plot(set[, -3], main = 'SVM (Training set)', xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(x1), ylim = range(x2))

# Adding decision boundary contours to the plot
contour(x1, x2, matrix(as.numeric(y_grid), length(x1), length(x2)), add = TRUE)
points(grid_set,pch='.',col=ifelse(y_grid==1,'coral','aquamarine'))
points(set,pch=21,bg=ifelse(set[,3]==1,'green4','red3'))



set=test
# Setting up a grid for plotting the training data
x1 <- seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
x2 <- seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)

# Creating a grid set from x1 and x2
grid_set <- expand.grid(x1 = x1, x2 = x2)
colnames(grid_set) <- c('Age', 'EstimatedSalary')

# Predicting outcomes for each point in the grid set
y_grid <- predict(classifier, newdata = grid_set)

# Plotting the training set with decision boundaries
plot(set[, -3], main = 'SVM (Training set)', xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(x1), ylim = range(x2))

# Adding decision boundary contours to the plot
contour(x1, x2, matrix(as.numeric(y_grid), length(x1), length(x2)), add = TRUE)

points(grid_set,pch='.',col=ifelse(y_grid==1,'coral','aquamarine'))
points(set,pch=21,bg=ifelse(set[,3]==1,'green4','red3'))
