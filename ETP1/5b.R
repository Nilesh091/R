data(iris)
d=subset(iris , iris$Petal.Width>=1.0 & iris$Petal.Width<=2.0)
#d=iris
sp=unique(d$Species)
sp