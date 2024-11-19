data=read.csv("~/LPU/R/R 5th sem/Candidate.csv")
View(data)
dataset=data[3:4]
?hclust
dendrogram=hclust(d=dist(dataset,method = 'euclidean'))
plot(dendrogram,
     main=paste('dendrogram'),
     xlab="consumer",
     ylab="euclidean distance")
#fitting heirarchical clustering to dataset
hc=hclust(d=dist(dataset, method = 'euclidean'))
y_hc=cutree(hc,2)
library(cluster)
clusplot(dataset,
         y_hc,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste("cluster of consumer"),
         xlab="annual income",
         ylab = "Spending Score")
data_n=data.frame(dataset,y_hc)
View(data_n)
