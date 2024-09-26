
  

# Load the dataset (adjust the file path accordingly)
data <- read.csv("~/LPU/R/R 5th sem/Prostate_cancer 1.csv", stringsAsFactors = FALSE)

# Inspect the structure of the dataset
str(data)

# Convert diagnosis_result to a factor (classification target)
data$diagnosis_result <- factor(data$diagnosis_result)

# View the distribution of the target variable
table(data$diagnosis_result)
# Remove the 'id' column
data <- data[ , -which(names(data) == "id")]

# Create training and testing sets (use 75% for training)
set.seed(123)  # For reproducibility
train_indices <- sample(1:nrow(data), 0.75 * nrow(data))

# Split the data
train_data <- data[train_indices, ]
test_data <- data[-train_indices, ]

# Separate features and labels
train_labels <- train_data$diagnosis_result
test_labels <- test_data$diagnosis_result

train_data <- train_data[, -which(names(train_data) == "diagnosis_result")]
test_data <- test_data[, -which(names(test_data) == "diagnosis_result")]

# Check proportions of labels in training and testing sets
prop.table(table(train_labels))
prop.table(table(test_labels))

# Scale the numerical features
train_data_scaled <- scale(train_data)
test_data_scaled <- scale(test_data)

# Load the e1071 package for Naive Bayes
library(e1071)

# Train the Naive Bayes model
classifier <- naiveBayes(train_data_scaled, train_labels)

# Predict on the test set
test_pred <- predict(classifier, test_data_scaled)


# Load gmodels for CrossTable
library(gmodels)

# Confusion matrix to compare predictions with actual labels
CrossTable(test_pred, test_labels, prop.chisq = FALSE, prop.t = FALSE, dnn = c('Predicted', 'Actual'))


# Train the model with Laplace smoothing
classifier_laplace <- naiveBayes(train_data_scaled, train_labels, laplace = 1)

# Predict again with the improved model
test_pred_laplace <- predict(classifier_laplace, test_data_scaled)

# Evaluate the improved model
CrossTable(test_pred_laplace, test_labels, prop.chisq = FALSE, prop.t = FALSE, dnn = c('Predicted', 'Actual'))


cat("Using NaiveBayse: ",((6+10)/(6+10+8+1)))
#cat("Using Knn: ",prostateCancerUsingKnn)
