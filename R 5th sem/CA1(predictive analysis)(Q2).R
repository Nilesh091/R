data=read.csv("~/Downloads/insurance (1).csv")
#View(data)


na_values <- sum(is.na(data))
cat("Total number of NA values:", na_values, "\n")


na_locations <- which(is.na(data), arr.ind = TRUE)
print(na_locations)  



cleaned_data <- data[complete.cases(data),]


cat("Rows before cleaning:", nrow(data), "\n")
cat("no. of Rows after cleaning:", nrow(cleaned_data), "\n")

# Apply scale to independent variables (age, bmi, charges)
insurance_data_clean$age <- scale(cleaned_data$age)
insurance_data_clean$bmi <- scale(cleaned_data$bmi)
insurance_data_clean$charges <- scale(cleaned_data$charges)

# Check summary to confirm scaling
summary(cleaned_data[, c("age", "bmi", "charges")])



