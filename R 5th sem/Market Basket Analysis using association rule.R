# Apriori algo
library(arules)
data("Adult")
rules1 = apriori(Adult,parameter=list(supp=0.3,conf=0.9,target="rules"))
rules2 = apriori(Adult,parameter=list(supp=0.4,conf=0.9,target="rules"))
rules3 = apriori(Adult,parameter=list(supp=0.5,conf=0.9,target="rules"))
summary(rules1)
summary(rules2)
summary(rules3)
# Number of rule are secreasing on increase in support
########################################################################
rules1 = apriori(Adult,parameter=list(supp=0.5,conf=0.7,target="rules"))
rules2 = apriori(Adult,parameter=list(supp=0.5,conf=0.8,target="rules"))
rules3 = apriori(Adult,parameter=list(supp=0.5,conf=0.9,target="rules"))
summary(rules1)
summary(rules2)
summary(rules3)
# Number of rule are secreasing on increase in confidence
#######################################################################
inspect(rules)# It gives the list of all significent association rules
              # Some of them are shown below
#######################################################################
rules4 = apriori(Adult,parameter=list(supp=0.9,conf=0.9,target="rules"))
summary(rules4)
rules5 = apriori(Adult,parameter=list(supp=0.8,conf=0.9,target="rules"))
summary(rules5)
# the below statement is technically not correct because confidence can't be less then support
rules6 = apriori(Adult,parameter=list(supp=0.9,conf=0.8,target="rules"))
summary(rules6)
# from the above results we can say that when supp and conf both are equal to .9 rhe number of rules are minimum
########################################################################
