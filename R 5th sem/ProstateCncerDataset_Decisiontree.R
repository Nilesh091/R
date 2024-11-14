library(rpart)
library(rpart.plot)
library(caTools)
dataset = read.csv("~/LPU/R/R 5th sem/Prostate_cancer 1.csv")
set.seed(123)
library(caTools)
split=sample.split(dataset,SplitRatio =0.70)
train_split=subset(dataset,split==TRUE)
test_split=subset(dataset,split==FALSE)
# Train the decision tree model
decision_tree_model = rpart(diagnosis_result ~ radius + texture + perimeter + area + smoothness + compactness + symmetry + fractal_dimension,
                            data = train_split, method = "class")
# Basic plot with text
plot(decision_tree_model)
text(decision_tree_model)

# Enhanced plot using rpart.plot
rpart.plot(decision_tree_model)

# Enhanced plot with more options (type = 5, extra = 103)
rpart.plot(decision_tree_model, type = 5, extra = 103)

# Predict on the test data
data_predict = predict(decision_tree_model, test_split, type = "class")
data_predict
# Create a confusion matrix
data_predict_table = table(test_split$diagnosis_result, data_predict)

# Print the confusion matrix
print(data_predict_table)

# Calculate the accuracy of the model
accuracy = (sum(diag(data_predict_table)) / sum(data_predict_table)) * 100
print(accuracy)
