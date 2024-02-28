#getwd()
#setwd('D:/R')
l=26
m=8
n=2003
c(l,m,n)
p<- c(5,8,9,13,21,29,33,78,65,88,90,95,60)
p[1]
p[-1]
q<-p[c(1,3,5,7)]

#Int & operators----
c="HEllo" #ChAr
a=45
b=50 + 2i #Complex
c=80L #Integer not Numeric
d=a+b
#Vectors & Scalers----
a<-1:10 #Vector since multiple values
b<- 2 #Scaler
p<- c(5,8,10,20,34,55) #Concatenate fn 
q<-p[c(1,3,5,7)]#Indexing using Concatenate
q<- seq(2,10,3) #2 5 8
r<- rep(2,4) # 2 2 2 2 
s<- rep(q,2) #2 5 8 2 5 8
#Indexing starts from 1
length(p)
s<-p[-5]#Drops 5th element
#p[p>70] OR  p[which (p>70)] OR p[p>70]#[1] 78 88 90 95
t=p[p>60 & p<90] #multi conditional #FOr index display
p[p>70]=0 #Modify Vector
#Manipulate Vector----
min(p)
max(p)
sort(p, decreasing= TRUE)
mean(p)
sd(p)
#Plotting----
read.csv("rcsv.csv")
 library(ggplot2)
 p=ggplot()

p=ggplot(iris,aes(Sepal.Length,Species))
 p=ggplot(iris,aes(Species,Sepal.Length))+geom_boxplot()
 ggplot(iris,aes(Species,Sepal.Length,fill=Species))+geom_boxplot()
 ggplot(iris,aes(Species,Sepal.Length,fill=Species))+geom_boxplot(outlier.colour = "red",outlier.shape = 4)
 ggplot(iris,aes(Species,Sepal.Length,fill=Species))+geom_boxplot(outlier.colour = "red",outlier.shape = 4, outlier.size = 4)+theme(legend.position = "none")
 ggplot(iris,aes(Species,Sepal.Length,fill=Species))+geom_boxplot(outlier.colour = "red",outlier.shape = 4, outlier.size = 4)+theme(legend.position = "none")+labs(title = "Boxplot", x="sepallength", y="species")
ggplot(iris,aes(Sepal.Length,Species,fill=Species))+geom_boxplot(outlier.colour = "red",outlier.shape = 4, outlier.size = 4)+theme(legend.position = "none")+labs(title = "Boxplot", x="sepallength", y="species")+coord_flip()
#DataFrame has various DataTypes in rows and colm while Matrix has only one data type
 #Boxplot is univariate
 #Scatter is bivariate
 #If x inc, y dec i.e -ve correlation -1 => 0;(-1 is strongly correlated i.e closely filled)
 #If x inc, y inc i.e -ve correlation 1 => 0;(1 is strongly correlated i.e losely filled)
 #If x is independent of y i.e No correlation  0;
 
