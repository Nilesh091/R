install.packages("rpart")
library(rpart)
# Load the iris dataset
data(iris)

# Check the first few rows
head(iris)
# Build a classification tree
tree_model <- rpart(Species ~ ., data = iris, method = "class")
install.packages("rpart.plot")
library(rpart.plot)
# Plot the decision tree
rpart.plot(tree_model)


# Predict on the training data
predictions <- predict(tree_model, iris, type = "class")

# View the predictions
head(predictions)

# Create a confusion matrix
tab=table(Predicted = predictions, Actual = iris$Species)
tab
accuracy=(sum(diag(tab))/sum(tab))*100
accuracy
