a=read.csv("~/Downloads/Twitter Dataset.csv")
str(a)
gt=a
View(gt)
gt=tolower(gt)
gt[1:5]
gt=gsub("rt","",gt)
gt=gsub("@\\w+","",gt)
gt=gsub("[[:punct:]]","",gt)
gt=gsub("http\\w+","",gt)
gt=gsub("[|\t]{2,}","",gt)
View(gt)
library(tm)#text Mining
library(NLP)

