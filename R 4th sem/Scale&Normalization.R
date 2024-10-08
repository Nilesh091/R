set.seed(123)
data=data.frame(data.frame(age=rnorm(5,50,8),weight=rnorm(5,80,10)))
data=as.data.frame(scale(data))
data


set.seed(123)
data=data.frame(data.frame(age=rnorm(5,50,8),weight=rnorm(5,80,10)))
data=as.data.frame(sapply(data,function(x)(x-min(x)/(max(x)-min(x)))))
data