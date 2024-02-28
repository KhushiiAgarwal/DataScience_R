#Lib----
library(ggplot2)
library("dslabs")
#Boxplot----
bp=ggplot(iris,aes(Sepal.Length,Species,fill=Species))+geom_boxplot(outlier.colour = "red",outlier.shape = 4, outlier.size = 4)+theme(legend.position = "none")+labs(title = "Boxplot", x="sepallength", y="species")+coord_flip()
print(bp)
#ScatterPlot----
sp= ggplot(murders,aes(population/(10^5),total,label=abb))+geom_point(aes(col=region))+scale_x_log10()+scale_y_log10()+geom_text(size=2,nudge_x = 0.03)+labs(title = "SCATTERPLOT", x="POPULATION", y="TOTAL")
print(sp)
