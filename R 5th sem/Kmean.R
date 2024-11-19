data=read.csv("~/LPU/R/R 5th sem/Candidate.csv")
View(data)
dataset=data[3:4]
set.seed(123)
wcss=vector()
for(i in 1:10)wcss[i]=sum(kmeans(dataset,i)$withinss)
plot(1:10,
     wcss,type='b',
     main=paste("the elbow method"),
     xlab="number of cluster",
     ylab="wcss")
set.seed(29)
kmeans=kmeans(dataset,centers = 2)
kmeans
ymean=kmeans$cluster
cm=table(data$Exam.Type,ymean)
accuracy=sum(diag(cm))/sum(cm)
accuracy
library(cluster)
clusplot(dataset,ymean,lines = 0,shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = ("Cluster of consumer")
         )

