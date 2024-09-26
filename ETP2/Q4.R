install.packages("sqldf")
library("sqldf")
data("ChickWeight")
ChickWeight
a=sqldf("SELECT AVG(weight) FROM ChickWeight")
a
count_diet1=sqldf("select sum(Chick) from ChickWeight where Diet=2")
count_diet1
maxWeight=sqldf("select max(weight) from ChickWeight ")
maxWeight
groupbyDiet=sqldf("select sum(Chick),Diet from ChickWeight group by Diet")
groupbyDiet
