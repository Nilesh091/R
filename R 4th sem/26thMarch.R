d=data.frame(c=1:8,c2=factor(c("b","c","a","b","a","c","a","c")))
d[4,1]=d[6,2]=NA
levels(d$c2)
#d
library(visdat)
na.exclude(d)
data <- data.frame(
  ID = c(1, NA, 3),  # Sample ID values
  Name = c(NA, "Emma", NA),  # Sample names
  Age = c(25, NA, 28)  # Sample ages
)
vis_miss(data)
Sys.Date()
Sys.time()
Sys.timezone()
Sys.getlocale()
library(dplyr)
#?dplyr
#select(data)
library("readxl")

d<-read_excel("/Users/nileshranjansahu/R/insurance.xls")
library(dplyr)
View(airquality)
air=airquality
str(air)
filter(air,Temp>70&Month==6)
air=mutate(air,Convert=(Temp-32)*5/9)
help("airquality")
summarise(air,"Mean"=mean(Temp,na.rm=T))
library(dplyr)
library(datasets)
View(airquality)
air=airquality
str(air)
filter(air,Temp>70 & Month==6)
air=mutate(air,TEMPINC=(Temp-32)*5/9);
help("airquality")
summarise(air,"Mean"=mean(Temp,na.rm=T))
summarise(group_by(air,Month),mean(Temp,na.rm=T))
count(air,Day)
sample(0:150,250)
str(iris)

View(iris)
df = iris
str(iris)
df %>% select(Sepal.Length,Petal.length,Species)%>%
  filter(Species == "setosa" & Petal.Length > 1.4 & Sepal.Width > 3.5)
df %>% filter(Species == "setosa" & Petal.Length > 1.4 & Sepal.Width > 3.5)%>%
  mutate(SL = Sepal.Width)%>%
  select(Sepal.Length,Petal.Length,Species,SL)