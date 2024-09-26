df=data.frame(
  x=c(1,2,NA,NA,3),
  y=c("a",NA,"b","c",NA)
)
remove_NA=df[!is.na(df)]
remove_NA
