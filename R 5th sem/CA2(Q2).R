data=cars
#View(data)
corelation=cor(data[c("speed","dist")])
library(corrplot)
corrplot(corelation,method = "number")
library(caTools)
split=sample.split(data,SplitRatio = 0.8)
training=subset(data,split == TRUE)
testing=subset(data,split == FALSE)

#Finding Correlation in training Dataset
corelation=cor(training[c("speed","dist")])
corrplot(corelation,method = "number")

print("Correlation Between Speed And Stopping Distance")
print(corelation)


#finding Relationship between Speed and Stopping distance
sd=training$dist
sp=training$speed
relation=lm(sd~sp)
summary(relation)
df=data.frame(sp=24)
result=predict(relation,df)
result




