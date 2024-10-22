dataset=read.csv("~/LPU/R/R 5th sem/Position_Salaries.csv")
#View(dataset)
dataset=dataset[2:3]
str(dataset)
lin_reg=lm(formula = Salary~.,data = dataset)
lin_reg
#Filtering polynomial Regression to the dataset
dataset$Level2=dataset$Level^2
dataset$Level3=dataset$Level^3
dataset$Level4=dataset$Level^4
dataset$Level5=dataset$Level^5
poly_reg=lm(formula = Salary~.,data = dataset)
library(ggplot2)
ggplot()+
  geom_point(aes(x=dataset$Level,y=dataset$Salary),colour = "red")+
  geom_line(aes(x=dataset$Level,y= predict(lin_reg,newdata = data_test)),colour="blue")+
  ggtitle("Truth or Bluff(Linear Regression)")+
  xlab("Level")+
  ylab("Salary")


