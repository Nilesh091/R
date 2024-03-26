r=read.csv("/Users/nileshranjansahu/R/Book1.csv")
print(is.data.frame(r))
print(ncol(r))
print(nrow(r))
print(r)

library(readxl)
d=read_excel("/Users/nileshranjansahu/Downloads/12212739.xlsx")
View(d)

d2=read.csv(file.choose())
#View(d2)
library(sqldf)
sqldf("select Year,Industry_aggregation_NZSIOC from d2 where Industry_aggregation_NZSIOC = 'Level 1'" )

