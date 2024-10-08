# Load necessary library
library(tidyverse)

# Import the CSV file
survey_data <- read.csv("path/to/your/survey_data.csv")

# Inspect the first few rows
head(survey_data)
# Check for missing values in the dataset
summary(survey_data)
# Replace missing values with the mean for numeric columns
numeric_cols <- sapply(survey_data, is.numeric)
survey_data[numeric_cols] <- lapply(survey_data[numeric_cols], function(x) {
  x[is.na(x)] <- mean(x, na.rm = TRUE)
  return(x)
})

# Replace missing values with the median for numeric columns
survey_data[numeric_cols] <- lapply(survey_data[numeric_cols], function(x) {
  x[is.na(x)] <- median(x, na.rm = TRUE)
  return(x)
})
# Replace missing values with the mode for categorical columns
mode_replace <- function(x) {
  tbl <- table(x)
  most_frequent <- as.numeric(names(tbl[tbl == max(tbl)]))
  x[is.na(x)] <- most_frequent
  return(x)
}

categorical_cols <- sapply(survey_data, is.factor)
survey_data[categorical_cols] <- lapply(survey_data[categorical_cols], mode_replace)

