setwd('D:/Practical/VIT/DS R')

# Add Library
library("ggplot2")
library("plotrix")

# Read csv file
country <-c('USA', 'India', 'England', 'France', 'Germany' )
count <-c(34, 5, 15, 12, 25)
perc <-round(count/sum(count)* 100, 2)
labels <-paste(country, perc,'%')
pie(count, labels = labels,radius =1,main = "Pie Chart", 
    col =hcl.colors (n = 5, palette = "viridis"),
                  border = 'gray')
dev.off()
#par(mar = c(1, 1, 1, 1)) 
pie3D(count, labels = labels,radius =3,main = "Pie Chart", 
      col =hcl.colors (n = 5, palette = "viridis"),
      border = 'gray')
legend("topright", legend = labels, fill = hcl.colors(n = 5, palette = "viridis"), 
       border = 'gray', bty = "n", cex = 0.8)
