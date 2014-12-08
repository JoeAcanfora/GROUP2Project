# Joe Acanfora
# 12/5/2014
# CMDA
# Project

setwd("/Users/joeacanfora/Desktop/Virginia Tech/CMDA/Repo/GROUP2Project/Final_Project")
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

write.csv(dataset4, file = "SmallerVehicleData.csv")

SmallerVehicleData <- read.csv("SmallerVehicleData.csv", header=TRUE, sep=",")

#determine if we can drop electric vehicles
#average cab driver goes 200 miles per shift
#determine the range of the given electric vehicles
unique(SmallerVehicleData$fuelType)
electricVehicles = SmallerVehicleData[SmallerVehicleData$fuelType == "Electricity",]
longRangeE = electricVehicles[electricVehicles$range > 200, ]
# the only electric vehicles with sufficent range are luxury vehicles (Tesla)

unique(SmallerVehicleData$make)
#eliminate luxury vehicles
noLux = SmallerVehicleData[SmallerVehicleData$make != "Jaguar", ]
noLux = noLux[noLux$make != "Aston Martin", ]
noLux = noLux[noLux$make != "Audi", ]
noLux = noLux[noLux$make != "BMW", ]
noLux = noLux[noLux$make != "Lexus", ]
noLux = noLux[noLux$make != "MINI", ]
noLux = noLux[noLux$make != "Porsche", ]
noLux = noLux[noLux$make != "Acura", ]
noLux = noLux[noLux$make != "Maserati", ]
noLux = noLux[noLux$make != "Mercedes-Benz", ]
noLux = noLux[noLux$make != "Saab", ]
noLux = noLux[noLux$make != "Bentley", ]
noLux = noLux[noLux$make != "Infiniti", ]
noLux = noLux[noLux$make != "Ferrari", ]
noLux = noLux[noLux$make != "Rolls-Royce", ]
noLux = noLux[noLux$make != "Land Rover", ]
noLux = noLux[noLux$make != "Alfa Romeo", ]
noLux = noLux[noLux$make != "Lotus", ]
noLux = noLux[noLux$make != "Tesla", ]

#Eliminating Vehicles who do not have enough space
#Sport Utility Vehicle - 4WD
#Special Purpose Vehicle 2WD
#Mini Compact Cars
#Compact Cars
#Sub Compact Cars
#Small Station Wagons
#Standard Pickup Trucks 2WD
#Standard Pickup Trucks 4WD
#Small Pickup Trucks 2WD
#Small Pickup Trucks 4WD
#Vans, Cargo Type
#Vans, Passenger Type
vClass = noLux[noLux$VClass != "Sport Utility Vehicle - 4WD", ]
vClass = vClass[vClass$VClass != "Special Purpose Vehicle 2WD", ]
vClass = vClass[vClass$VClass != "Minicompact Cars", ]
vClass = vClass[vClass$VClass != "Compact Cars", ]
vClass = vClass[vClass$VClass != "Subcompact Cars", ]
vClass = vClass[vClass$VClass != "Small Station Wagons", ]
vClass = vClass[vClass$VClass != "Standard Pickup Trucks 2WD", ]
vClass = vClass[vClass$VClass != "Standard Pickup Trucks 4WD", ]
vClass = vClass[vClass$VClass != "Small Pickup Trucks 2WD", ]
vClass = vClass[vClass$VClass != "Small Pickup Trucks 4WD", ]
vClass = vClass[vClass$VClass != "Vans, Cargo Type", ]
vClass = vClass[vClass$VClass != "Vans, Passenger Type", ]

write.csv(vClass, file = "checkDriveType.csv")

#drive type
frontWheel = vClass[vClass$drive == "Front-Wheel Drive", ]
cheapGas = frontWheel[frontWheel$fuelType == "Regular", ]

cheapGas = subset(cheapGas, select = -charge120)
cheapGas = subset(cheapGas, select = -charge240)

write.csv(cheapGas , file = "checkCylinder.csv")

smallBlock = cheapGas[cheapGas$cylinders != 6, ]
smallBlock = smallBlock[smallBlock$cylinders != 8, ]

auto = smallBlock[smallBlock$trany != "Manual 5-spd", ]
auto = auto[auto$trany != "Manual 6-spd", ]
auto = auto[auto$trany != "Manual(M5)", ]

newer = auto[auto$year > 2011, ]

newer = subset(newer, select = -fuelCostA08)
newer = subset(newer, select = -combE)
newer = subset(newer, select = -cityUF)
newer = subset(newer, select = -cityE)
newer = subset(newer, select = -cityCD)
newer = subset(newer, select = -cityA08)

cheaper = newer[newer$youSaveSpend > 0, ]

write.csv(cheaper, file = "getting close.csv")

hybrids = cheaper[cheaper$atvType == "Hybrid", ]
regular = cheaper[cheaper$atvType != "Hyrbid", ]

write.csv(hybrids, file = "hybrids.csv")


regular = subset(regular, select = -range)
regular = subset(regular, select = -rangeCity)
regular = subset(regular, select = -rangeCityA)
regular = subset(regular, select = -rangeHwy)
regular = subset(regular, select = -rangeHwyA)
regular = subset(regular, select = -guzzler)
regular = regular[regular$atvType == "", ]

write.csv(regular, file = "regular.csv")

vans = regular[regular$VClass == "Mini Vans", ]



