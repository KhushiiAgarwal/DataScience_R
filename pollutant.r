setwd('D:/R Programming')
#Pollutant Data set----
p1=read.csv("pollutant_csv.csv")
cat("Pollutant dataset\n")
pm6=mean(p1[which(p1$Month == 6),]$Temp)#Month=6, Tempr mean
cat("Mean of Tempr when month=6:",pm6)
np1=nrow(p1)#Total rows/obs
cat("\nTotal obs:",np1)
print("  ")
print(tail(p1,2))#last rows
p47=p1$Ozone[47]#47th row value of Ozone
cat("\n47th row:",p47)
ps1=sum(is.na(p1$Ozone))#Sum of NA values
cat("\nTotal NA obs:",ps1)
pm2=mean(p1$Ozone, na.rm=TRUE)#Mean exclude NA
cat("\nMean excluding NA:",pm2)
pm3=mean(p1[which(p1$Ozone >31 & p1$Temp > 90),]$Solar.R,na.rm=T)# mean of Solar where Ozone>31 && Tempr>90 
cat("\nMean solar:",pm3)
pnx=max(p1[which(p1$Month == 5),]$Ozone,na.rm=TRUE)#Exclude NA values
cat("\nMax Ozone:",pnx)
