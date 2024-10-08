# Data Collection
dataset = read.csv("~/LPU/R/R 5th sem/Prostate_cancer 1.csv")

# Manage and explore the dataset
# View(dataset)

# Preprocessing
data = dataset[, 2:10]  # Features from columns 2 to 10

# Normalization function
normalize = function(x) { (x - min(x)) / (max(x) - min(x)) }

# Apply normalization to the columns 3 to 10
b <- as.data.frame(lapply(dataset[3:10], normalize))

# Combine the diagnosis_result with normalized data (ensure it's categorical)
data_u = data.frame(diagnosis_result = as.factor(dataset$diagnosis_result), b)

# View the processed data (optional)
# View(data_u)

# Train and test split
library(caTools)
set.seed(123)  # For reproducibility
split = sample.split(data_u$diagnosis_result, SplitRatio = 0.70)

train_split = subset(data_u, split == TRUE)
test_split = subset(data_u, split == FALSE)

# View the split datasets (optional)
# View(train_split)
# View(test_split)

# Train the C5.0 model
library(C50)
tree = C5.0(diagnosis_result ~ ., data = train_split, trials = 12)
ypride=predict(tree,test_split)
# View the model summary
cm=table(ypride,test_split$diagnosis_result)
a=sum(diag(cm))
b=sum(cm)
accuracy=(a/b)*100
cat("C5.0 Accuracy: ",accuracy)



tree = rpart(diagnosis_result ~ ., data = train_split, method = "class")
ypride=predict(tree,test_split,type = "class")
# View the model summary
cm=table(ypride,test_split$diagnosis_result)
a=sum(diag(cm))
b=sum(cm)
accuracy1=(a/b)*100
cat("rpatr Accuracy: ",accuracy1)

