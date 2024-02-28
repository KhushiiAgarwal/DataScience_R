setwd('D:/R Programming') # Set correct path
#Germination Data set----
g1=read.csv("germination_csv.csv")
cat("\n\nGermination Dataset")
mng1=mean(g1$germinated[g1$Box=="Uncovered" & g1$water_amt== 4])#mean(g1[which(g1$Box=="Uncovered" & g1$water_amt== 4),]$germinated)
cat("\nMean of germinated seeds for given condn:",mng1)
mdg1=median(g1$germinated[g1$Box=="Covered"])
cat("\nMedian of germinated seeds for covered:",mdg1)
