setwd('D:/Practical/VIT/DS R')
#case1----
h1=read.csv("Hypothesis_csv1.csv")
#Mean, std dev, Std Error, pnorm, if null hypothesis is true
m1=mean(h1$Life_Hrs)
cat("\n Mean is:",m1)
n1=nrow(h1)
sd1=sd(h1$Life_Hrs)
cat("\n Std Deviation is:",sd1)
se1=sd1/sqrt(50)
cat("\n Std Error is:",se1)
p1=pnorm(m1,10000,se1)
cat("\n Pnorm is:",p1)
if(p1<0.05){
  cat("\n Null hypothesis is rejected for 0.05")
}else
{
  cat("\n Null hypothesis is NOT rejected for 0.05")
  
}
if(p1<0.01){
  cat("\n Null hypothesis again is rejected for 0.01")
}else
{
  cat("\n Null hypothesis can NOT be rejected for 0.01")
  
}
