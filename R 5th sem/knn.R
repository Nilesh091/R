#installed.packages("class")
wdbc=read.table("~/LPU/R/R 5th sem/wisc_bc_data.csv",sep = ',',header=TRUE)
View(wdbc)
wdbc=wdbc[,-1] #dropping 1st column as its just unique id of a patient
#now we have the required data as the next column is about cancerous or non cncerous
data_norm = function(x){((x- min(x))/(max(x)-min(x)))}
wbcd_norm <- as.data.frame(lapply(wdbc[2:31], data_norm))
#lapply used for fulldataset
View(wbcd_norm)
summary(wdbc[,2:5])#all rows and column start from 3 till 6
summary(wdbc[,1:4]) #start from 2 till 5
summary(wdbc[,1:8])
#summary(wdbc_norm[,1:4])
summary(wbcd_norm[])
wdbc_train = wbcd_norm[1:450,]

wdbc_test = wbcd_norm[451:569,]

library(class)
wdbc_pred = knn(wdbc_train, wdbc_test, wdbc[1:450,1], k=21)


cm=table(wdbc_pred,wdbc[451:569,1])

a=sum(cm[1],cm[4])
accuracy=(a/sum(cm))
print(paste('Accuracy = ',accuracy*100))
