result=data.frame(id=c(1,2,3,4),name=c("Jhon","Max","Tom","Jack"),marks=seq(20,35,5),section=c("A","B","A","B"))
store<-result
store
id<-store$id
marks<-store$marks
section<-factor(store$section,labels=c("Section A","Section B"))
section
mean_marks<-tapply(marks,section,mean)
mean_marks
mapply(rep, 1:4, 4:1)

mapply(rep, times = 1:4, x = 4:1)

mapply(rep, times = 1:4, MoreArgs = list(x = 42))

mapply(function(x, y) seq_len(x) + y,
       c(a =  1, b = 2, c = 3),  # names from first
       c(A = 10, B = 0, C = -10))

#word <- function(C, k) paste(rep.int(C, k), collapse = "")
#utils::str(mapply(word, LETTERS[1:6], 6:1, SIMPLIFY = FALSE))
x=c(1,2,3,NA,NA)
is.na(x)
x=c(1,2,3,NA,NA)
d=is.na(x)
x[!d]
df<-data.frame(c1=1:8,c2=factor(c("B","A","B","A","C","A","c","B")))
df[4,1]<-df[6,2]<-NA
df
