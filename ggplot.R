data("mtcars")
library(ggplot2)
mtcars
ggplot(mtcars,aes(x=hp,y=mpg,col=cyl))+geom_smooth()

# Load the built-in dataset 'trees'
data(trees)

# Subset the dataset without using a package or function
trees_subset_a <- trees[trees$Height > 16 & trees$Girth > 15, ]
trees_subset_a=subset(trees,(trees$Height > 16 & trees$Girth > 15))

print("Subset using base R:")
print(trees_subset_a)

