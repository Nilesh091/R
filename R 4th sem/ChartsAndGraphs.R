x=c(1,2,3,4,5,6)
barplot(x,xlab = "MA",ylab = "Count",col = "blue",col.axis="darkgreen",col.lab="darkgreen")


##  PieChart
x=c(1,45,7,8,46,11)
names(x)=c("Algo","Ds","Java","C","C++","Python")
#png(file="piechart.png")
pie(x,labels=names(x),col="yellow",main="Articles on GeeksforGeeks",radius=-1,col.main="darkgreen")
dev.off()

## 3D pie chart
install.packages("plotrix")
library(plotrix)
x=c(23,123,121,45,67,44)
names(x)=c("Algo","Ds","Java","C","C++","Python")
png(file="pie3d.png")
pie3D(x,labels=names(x),col="yellow",main="Articles on GeeksforGeeks",radius=-1,col.main="darkgreen")

x=c(12,13,14,61,34,54,76,45,23,54,23,54,23,34,12,54,76)
png(filename = "hist.png")
hist(x,main = "Hist",xlab = "values",col.lab="darkgreen",col.main="darkgreen")
