setwd("D:/ R")
f1=read.csv("knn1_csv.csv")
ed=sqrt((f1$x-3)**2+(f1$y-2)**2)
f1=cbind(f1,ed)
print(f1)
f1_sort=f1[order(f1$ed),]# sorting w.r.t euclidean dist values
#order sorts index value not entire dataframe

#NN----
cat("Class of P for NN is:",f1_sort[1,4])

#KNN, where K=5----
dfx=f1_sort[1:5,]
s1<-sum(dfx$class==1)
s2<-sum(dfx$class==2)
s3<-sum(dfx$class==3)
if(s1>s2 & s1>s3)
  cat("\nClass of P for K=5 is ",1)
if(s2>s1 & s2>s3)
  cat("\nClass of P for K=5 is ",2)
if(s3>s2 & s3>s1)
  cat("\nClass of P for K=5 is ",3)

#rNN where r=1.45----
df2=f1_sort[f1_sort$ed<1.45,]
d1<-sum(df2$class==1)
d2<-sum(df2$class==2)
d3<-sum(df2$class==3)
if(d1>d2 & d1>d3)
  cat("\nClass of P for r=1.45 is ",1)
if(d2>d1 & d2>d3)
  cat("\nClass of P for r=1.45 is ",2)
if(d3>d2 & d3>d1)
  cat("\nClass of P for r=1.45 is ",3)
