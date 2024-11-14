# arules= Association rules
library(arules)
data=read.csv("~/LPU/R/R 5th sem/groceries.csv")
data=read.transactions("~/LPU/R/R 5th sem/groceries.csv",sep = ",")
summary(data)
View(data)
inspect(data[1:5])
itemFrequency(data[,1:3])
itemFrequencyPlot(data,support=0.1)
itemFrequencyPlot(data,topN=20)


apriori(data)
g_rules=apriori(data,parameter = list(support=0.006,confidence=0.25,minlen=2))
g_rules
summary(g_rules)
inspect(g_rules[1:3])

inspect(sort(g_rules,by="lift")[1:5])
berryrules=subset(g_rules,items %in% "berries")
inspect(berryrules)

write(g_rules,file = "~/LPU/R/R 5th sem/groceriesrules.csv",sep=",",quote=TRUE,row.names=FALSE)
g_rules_df=as(g_rules,"data.frame")
str(g_rules_df)
