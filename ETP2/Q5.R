library(tidyr)
sales_data=data.frame(
  date=c(14,15,16,17),
  product=c("aam","nibu","kela","doodh"),
  quantity=c(10,12,16,25),
  revenue=c(100,150,80,250)
)
tidyformat=gather(sales_data,key="matrix",value = "value",-date,-product)
tidyformat
spreadfotmat=spread(tidyformat,key = "matrix",value = "value")
spreadfotmat
