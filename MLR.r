setwd("D:/R")
t1=read.csv("Toy_sales_csv.csv")

#MLR----
print("--MLR--")
l2<-lm(Unitsales~Price+Adexp+Promexp,t1)
s2=summary(l2)
print(s2)
df=data.frame(Price=c(9.1,8.1),Adexp=c(52,50),Promexp=c(61,60))
pred2=predict(l2,df)
df1<-cbind(df,pred2)
print(df1)
