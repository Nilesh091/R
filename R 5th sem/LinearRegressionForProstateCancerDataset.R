dataset = read.csv("~/LPU/R/R 5th sem/Prostate_cancer 1.csv")
#View(dataset)
plot=cor(dataset[3:10])
library(corrplot)
corrplot(plot,method = "number")

#According to plotting the highly coorelated values are area and perimeter
area=dataset$area
per=dataset$perimeter
model=lm(area~per)

summary(model)


a=data.frame(per=200)
result=predict(model,a)
print(result)