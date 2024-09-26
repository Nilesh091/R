# # Scatter plot
# a<-Orange[c('age','circumference')]
# png(file="plot.png")
# plot(x=a$age, y= a$circumference,xlab="Age",ylab="Circumference",main="Age VS Circumference",col.lab="darkgreen",col.main="darkgreen",col.axis="darkgreen")
# dev.off()
# png(file="plotMatrixusingPairs.png")
# pairs(~age+circumference,data=Orange,col.axis="darkgreen")
# dev.off()
x=c(1,2,3,4,5,6,7,8,12,3,4,12,15)
png(file="boxplot.png")
boxplot(x,xlab="Boxplot",ylab="Age",col.axis="darkgreen",col.lab="darkgreen")

# dev.off()

# a=mtcars
# # x
# png(file="MPGvsWt.png")
# plot(x=a$mpg, y= a$wt,xlab="MPG",ylab="WT",main="Mpg VS WT",col.lab="yellow",col.main="red",col.axis="darkgreen")
# # creating the floor function f(x)
# f = function(x) {
#   floor(x)
# }
# # specifying the domain of f(x)
# x = seq(-5, 5, length.out = 100) # x contains 100 points between -5 and 5
# # plotting f(x)
# png(file="stairgraph.png")
# plot(x, f(x), type = 's') # 's' for stairs plot
# dev.off()
my_col=c("#993333","#FFCC33","#003399")
png (file="Pairs.png")
pairs(iris[1:4],pch=19,cex=0.5,col=my_col[iris$Species],lower.panel=NULL)
