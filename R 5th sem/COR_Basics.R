bank<-read.csv("~/LPU/R/R 5th sem/bankloan.csv")
View(bank)
my_data<-bank[,c(1,3,4,5,6,7,8)]
head(my_data)
cor_mat<-cor(my_data)
print("Correlation Matrix:")
print(cor_mat)
install.packages("corrplot")
library(corrplot)
corrplot(cor_mat,method="circle")
corrplot(cor_mat,method="number")
corrplot(cor_mat,method="pie")


x=c(0.476, 0.876, 0.829, 0.908, 0.650, 0.136, 0.015, 0.855, 0.937, 0.475)
y=c(0.040, 0.163, 0.139, 0.643, 0.362, 0.984, 0.906, 0.610, 0.346, 0.396)

x=c(5.1,5.5,5.8,6.1,6.4,6.7,6.4,6.1,5.1,5.7)
y=c(63,66,69,72,75,78,75,72,69,66)
relation=lm(y~x)
summary(relation)

a=data.frame(x=6.3)
result=predict(relation,a)
print(result)
