# Load the dataset
dataset <- read.csv("~/LPU/R/R 5th sem/Position_Salaries.csv")

# Subset the dataset to only the Level and Salary columns
dataset <- dataset[2:3]

# Check the structure of the dataset
str(dataset)

# Fit a Linear Regression model
lin_reg <- lm(formula = Salary ~ Level, data = dataset)
print(lin_reg)

# Add polynomial features (Level^2, Level^3, Level^4, Level^5)
dataset$Level2 <- dataset$Level^2
dataset$Level3 <- dataset$Level^3
dataset$Level4 <- dataset$Level^4
dataset$Level5 <- dataset$Level^5

# Fit a Polynomial Regression model
poly_reg <- lm(formula = Salary ~ Level + Level2 + Level3 + Level4 + Level5, data = dataset)
print(poly_reg)

# Visualizing Linear Regression results using ggplot2
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary), colour = "red") + # Plot actual data points
  geom_line(aes(x = dataset$Level, y = predict(lin_reg, newdata = dataset)), colour = "blue") + # Plot Linear Regression predictions
  ggtitle("Truth or Bluff (Linear Regression)") +
  xlab("Level") +
  ylab("Salary")

# Visualizing Polynomial Regression results using ggplot2
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary), colour = "red") + # Plot actual data points
  geom_line(aes(x = dataset$Level, y = predict(poly_reg, newdata = dataset)), colour = "green") + # Plot Polynomial Regression predictions
  ggtitle("Truth or Bluff (Polynomial Regression)") +
  xlab("Level") +
  ylab("Salary")

predict(lin_reg,data.frame(Level=6.5))

predict(poly_reg,data.frame(Level=6.5,
                            Level2=6.5^2,
                            Level3=6.5^3,
                            Level4=6.5^4,
                            Level5=6.5^5))
