setwd("D:/R")
t1=read.csv("Toy_sales_csv.csv")
#SLR----
l1<- lm(Unitsales~Price,t1)
s1=summary(l1)
print(s1)
#pval least => most signifant variable (x1); Pval<0.05, significant change, Reject Null Hypothesis 
library(ggplot2)
p1<-ggplot(t1,aes(Price,Unitsales))+geom_point()+geom_smooth(method="lm",formula=y~x,col="red",se=F)
print(p1)
#geomsmooth linear model
pred=predict(l1)
print(pred)
e<-t1$Unitsales-pred
print(e)
