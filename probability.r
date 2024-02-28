  setwd('D:/R')
  t1<-read.csv("travelled abroad_csv.csv")
  # Binomial distribution----
  n1<-nrow(t1)
  per1<-100*(sum(t1$Travelledabroad=="Y"))/n1
  cat("percentage of people travelled abroad:",per1)
  p<-per1/100
  cat("\n probability of success:",p)
  k<-0:10
  d1<-dbinom(k,10,p)
  cat("\n probability for n=10 by binomial distribution:", d1)
  plot(k,d1,type="l")
  #the condition for B.D nad N.D is not satisfied hence formulas cannot be used
  #n=100
  k1<-59:100
  d2<-dbinom(k1,100,p)
  pbd1<-sum(d2)
  cat("\n probability of n=100 by binomial distribution: ",pbd1)

  #condition staisfied hence normal distribution can be applied
#  normal distribution----
d3<-dbinom(0:100,100,p)
  plot(0:100, d3 , type="l")
  m<-100*p
  sd1<-sqrt(100*p*(1-p))
  cat("\n Mean is", m)
  cat("\n Std. Deviation is",sd1)
  pnd1<-pnorm(59,m,sd1,lower.tail=F)#to get right side value of the graph
  cat("\n probability for n=100 by normal distribution is", pnd1)
