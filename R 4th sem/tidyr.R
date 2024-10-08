library(tidyr)
df=data.frame(
  s_no=c(1:10),
  Group.1=c(1,21,32,43,56,13,13,12,12,14),
  Group.2=c(3,23,62,63,96,53,43,42,62,34),
  Group.3=c(5,25,42,83,76,73,63,82,22,994)
)
df
l= df %>% gather(df,"Sno",Group.1:Group.3)
l
s= l %>% separate(df,c("Sno","Group.1"))
s
################################
t1=data.frame(s_no=c(1:8),g1=c(23,434,54,21,56,87,65,234),g2=c(43,554,67,90,87,77,32,12),g3=c(11,20,25,895,246,30,47,82))
t1
l=t1 %>% gather(d,f,g1:g3)
l
sd=l %>% separate(d,c("Allotment","Number"))
sd
#spread
#nest
#unnest
dn=iris
names(dn)
head(dn%>%nest(data=c(Species)))
head(dn%>%unnest(Species))