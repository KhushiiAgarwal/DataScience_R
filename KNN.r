#SetData----
setwd("D:/R")
f1=read.csv("wbc_csv.csv")
#Shuffle----
set.seed(123)#Same o/p for various machines. Reduces randomness 
#Number can be random
f1=f1[sample(nrow(f1)),]
#Normalization---- 
#Normal formula :1-min(a)/[max(a)-min(a)] 
n<- function(f){
  (f-min(f))/(max(f)-min(f))
}
#fr_new=f1[,3:32] #Loop function gives o/p in form of list
f1_norm<-as.data.frame(lapply(f1[,3:32],n))
print(f1_norm)
#Train-Test Split----
f1_train<-f1_norm[1:469,]
f1_test<-f1_norm[470:569,]
flab_train<-f1[1:469,2]
flab_test<-f1[470:569,2]
#KNN----
library(class)
#knn(Training data w/o class label, test data w/o class label, train data class label only,k val )
p<-knn(f1_train,f1_test,flab_train,k=7)
t1<-table(actual=flab_test,predicted=p)
#Performance Parameter----
acc<-sum(diag(t1))/sum(t1)#95%
cat("\nAccuracy is",acc)
sen<-t1[2,2]/sum(t1[2,])#91%
cat("\nSensitivity is",sen)
spec<-t1[1,1]/sum(t1[1,])#98%
cat("\nSpecificity is",spec)
pre<-t1[2,2]/sum(t1[,2])#97#
cat("\nPrecision is",pre)
