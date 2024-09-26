install.packages("class")
library(class)
data=read.csv("~/LPU/R/R 5th sem/wisc_bc_data.csv")
View(data)
data=data[,-1]#dropping first column  as it is only unique  id is it is not needed
norm1=function(x){((x-min(x))/(max(x)-min(x)))}

