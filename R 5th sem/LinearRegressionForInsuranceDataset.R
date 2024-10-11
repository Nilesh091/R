insurance=read.csv("~/LPU/R/R 5th sem/insurance.csv")
str(insurance)
str(insurance$charges)
hist(insurance$charges)
table(insurance$region)
plot=cor(insurance[c("age","bmi","children","charges")])
corrplot(plot,method = "number")
age=insurance$age
charge=insurance$charges
relation=lm(charge~age)
summary(relation)

a=data.frame(age=40)
result=predict(relation,a)
print(result)


pairs(insurance[c("age","bmi","children","charges")])
install.packages("psych")
library(psych)
pairs.panels(insurance[c("age","bmi","children","charges")])
#Multi linear Coorelation
model=lm(charges~age +children+bmi +sex +smoker +region , data = insurance)
ins_pred=predict(model,insurance)
model
summary(model)
