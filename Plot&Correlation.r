#Data Import----
setwd("D:/Practical/VIT/DS R/DataSET")
datacsv=read.csv("HA_csv.csv")
#Pre-processing ----
cat("Original no of rows:",nrow(datacsv))
datacsv=subset(datacsv,(Value<8.75))
cat("\nAfter removal of outliers, total rows left",nrow(datacsv))
datacsv<-datacsv[,-c(4,6,7)]
#datacsv['Côte d’Ivoire']=Cote deIvoire
#datacsv['Türkiye']=Turkiye
#datacsv['Curaçao']=Curacao
cat("\nTotal col left",ncol(datacsv),"\n")

#Plot----
library(ggplot2)
pl1<-ggplot(datacsv,aes(Country,Value))+geom_bar(stat="identity", fill="blue")+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
print(pl1)
plx<-ggplot(datacsv,aes(Year,Value))+geom_point()
print(plx)
datax=subset(datacsv,(Year==2010))
pl2<-ggplot(datax,aes(Country,Value))+geom_bar(stat="identity", fill="Red")+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
print(pl2)


#Correlation & Plotting it----
cat("\nCorrelation Values")
corr=cor(datacsv$Region_Code,datacsv$Value,method="pearson")
cat("\nCorrelation b/w region code(Country) & value:",corr)
corry=cor(datacsv$Year,datacsv$Value,method="pearson")
cat("\nCorrelation b/w region Year & value:",corry)
pairs(~Region_Code+Value+Year, data=datacsv)
