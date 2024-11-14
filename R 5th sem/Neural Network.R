# Load required libraries
library(neuralnet) # For Neural Network
library(caret) # For data partitioning and performance metrics

# Load the iris dataset
data(iris)

# Convert Species to a numeric format for neural network
iris$Species <- as.numeric(factor(iris$Species))

# Set seed for reproducibility
set.seed(123)

# Split the data into training (70%) and testing (30%) sets
trainIndex <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]

# Train the Neural Network model
# Define the formula for the neural network
nn_formula <- Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width

# Train the neural network
nn_model <- neuralnet(nn_formula, data = trainData, hidden = c(5), linear.output = FALSE)

# Plot the neural network
plot(nn_model)

# Prepare the test set for predictions
test_predictions <- predict(nn_model, newdata = testData)

# Convert predictions to class labels
predicted_classes <- apply(test_predictions, 1, which.max)

# Create a confusion matrix to evaluate model performance
confusion_matrix <- table(Predicted = predicted_classes, Actual = testData$Species)

# Calculate accuracy
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)

# Output the results
cat("Confusion Matrix:\n")
print(confusion_matrix)
cat("Accuracy of Neural Network model:", accuracy, "\n")

