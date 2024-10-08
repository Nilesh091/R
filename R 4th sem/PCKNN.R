#Data Collection
data<-read.csv("~/LPU/R/R 5th sem/Prostate_cancer 1.csv")
#View(data)
#Manage and Explore
a<-data[2:10]
#View(a)
#str(a)
#summary(a)
#preprocessing
#using normalization
b<-function(x){((x-min(x))/(max(x)-min(x)))} 
c<-as.data.frame(lapply(data[3:10],b))
#View(c)

data_main<-data.frame(diagnosis_result=a$diagnosis_result,c)
#View(data_main)
#Test and Train
library(caTools)
e<-sample.split(data_main,SplitRatio = 0.70)
train_e<-subset(data_main,e==TRUE)
test_e<-subset(data_main,e==FALSE)
#View(train_e)
#View(test_e)
train_e
#now we have to create 4 variable
p<-train_e[,2:9]
#View(p)

q<-test_e[,2:9]
#View(q)
r<-train_e[,1]
#View(r)
s<-test_e[,1]
#View(s)

#Models
library(class)
d_prediction<-knn(p,q,r,k=3)

#performance measure
z<-table(d_prediction,s)
View(z)
a1<-z[1]+z[4]
a2<-sum(z)
accuracy=(a1/a2)*100
accuracy