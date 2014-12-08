getwd()
setwd("C:/Users/JeffM/Desktop/Data analytics/R_folder/In Class")

library(gdata)
library(ggplot2)

mydata <- read.csv("SmallVehicleData.csv", header=TRUE, sep=",")



#Rule out trucks, by looking at passenger size
#Graph Y axis by passenger size, X being vehicle Class
#VClass: Small Pickup Trucks, Standard Pickup Trucks, 
#mydata[mydata&Vclass == mydata
?aggregate
mydata$newData <- mydata$pv2 + mydata$hpv + mydata$pv4 
mydata2 <- mydata[mydata$newData != 0,]
plotFrame <- aggregate(newData ~ VClass, mydata2, FUN = "median")
?plot
?barplot
#custdata2 <- subset(plotFrame, (plotFrame$newData > 0 & plotFrame$VClass))
#barplot(plotFrame$VClass, plotFrame$newData, xlab="abc", ylab="abc")


plot(plotFrame$VClass, plotFrame$newData)
?title
?par
#par cex.axis
#par(cex.axis = .1)
par(cex.axis = .7, las = 2)
title(main="Vehicle class vs Person space in hatchbacks", font.main=4)
?lines
lines(plotFrame$vClass, plotFrame$newdata)

