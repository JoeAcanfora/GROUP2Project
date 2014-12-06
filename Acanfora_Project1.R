# Joe Acanfora
# 12/5/2014
# CMDA
# Project

setwd("//Users//joeacanfora//Desktop//Virginia Tech//CMDA//GROUP2Project-master")
vehicleData <- read.csv("vehicles.csv", header=TRUE, sep=",")

dataset <- vehicleData[vehicleData$year >= 2005,] # drop vehicles before 2005
dataset2 <- dataset[dataset$VClass != "Two Seaters",] #drop two seaters


dataset3 <- dataset2[dataset2$fuelType != "CNG",] #drop natural gas vehicles

dataset4 <- subset(dataset3, select = -trans_dscr) #drop column
dataset4 <- subset(dataset4, select = -id) #drop column
dataset4 <- subset(dataset4, select = -mfrCode) #drop column
dataset4 <- subset(dataset4, select = -lv2) #drop column
dataset4 <- subset(dataset4, select = -co2TailpipeGpm) #drop column
dataset4 <- subset(dataset4, select = -ghgScore) #drop column
dataset4 <- subset(dataset4, select = -ghgScoreA) #drop column
dataset4 <- subset(dataset4, select = -displ) #drop column
dataset4 <- dataset4[dataset4$sCharger != "S",] #drop supercharged vehicles
dataset4 <- subset(dataset4, select = -highway08)
dataset4 <- subset(dataset4, select = -highway08U)
dataset4 <- subset(dataset4, select = -highwayA08)
dataset4 <- subset(dataset4, select = -highwayA08U)
dataset4 <- subset(dataset4, select = -highwayCD)
dataset4 <- subset(dataset4, select = -highwayE)
dataset4 <- subset(dataset4, select = -highwayUF)
dataset4 <- subset(dataset4, select = -barrels08)
dataset4 <- subset(dataset4, select = -barrelsA08)
dataset4 <- subset(dataset4, select = -city08U)
dataset4 <- subset(dataset4, select = -cityA08U)
dataset4 <- subset(dataset4, select = -co2)
dataset4 <- subset(dataset4, select = -co2A)
dataset4 <- subset(dataset4, select = -co2TailpipeAGpm)
dataset4 <- subset(dataset4, select = -comb08)
dataset4 <- subset(dataset4, select = -comb08U)
dataset4 <- subset(dataset4, select = -combA08)
dataset4 <- subset(dataset4, select = -combA08U)
dataset4 <- subset(dataset4, select = -combinedUF)
dataset4 <- subset(dataset4, select = -combinedCD)
dataset4 <- subset(dataset4, select = -feScore)
dataset4 <- subset(dataset4, select = -engId)
dataset4 <- subset(dataset4, select = -eng_dscr)
dataset4 <- subset(dataset4, select = -UHighway)
dataset4 <- subset(dataset4, select = -UHighwayA)
dataset4 <- subset(dataset4, select = -row.names)
dataset4 <- subset(dataset4, select = -hpv)

write.csv(dataset4, file = "SmallVehicleData.csv")



