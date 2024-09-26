# K-Nearest Neighbors (K-NN)

# Importing the dataset
dataset = read.csv("~/LPU/R/R 5th sem/Social_Network_Ads.csv")
View(dataset)
dataset = dataset[3:5]

# Encoding the target feature as factor
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

# Fitting K-NN to the Training set and Predicting the Test set results
library(class)
y_pred = knn(train = training_set[, -3],
             test = test_set[, -3],
             cl = training_set[, 3],
             k = 5)

# Making the Confusion Matrix
cm = table(test_set[, 3], y_pred)
cm
a1=cm[1]+cm[4]
a2=sum(cm)
accuracy=a1/a2
accuracy
