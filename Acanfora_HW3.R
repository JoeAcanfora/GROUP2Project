# Joe Acanfora
# 8/27/2014
# CMDA
# Homework 3

setwd("C://Users//Joe//Documents//~Virginia Tech//Computer Science//CDMA 3654//hw3")
vehicleData <- read.csv("vehicles.csv", header=TRUE, sep=",")

#numeric variables
# 0 barrels08
summary(vehicleData$barrels08)
    #    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    #0.05989 14.96000 17.34000 17.72000 20.59000 47.07000 
# 1 barrelsA08
summary(vehicleData$barrelsA08)
    #   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    # 0.0000  0.0000  0.0000  0.2081  0.0000 18.3000 
# 2 charge120
summary(vehicleData$charge120)
    #Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    #0       0       0       0       0       0 
# 3 charge240
summary(vehicleData$charge240)
    #Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    #0.00000  0.00000  0.00000  0.01035  0.00000 12.00000 
# 4 city08
summary(vehicleData$city08)
    #  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    #6.00   15.00   17.00   17.64   20.00  138.00 
# 5 city08U
summary(vehicleData$city08U)
    #    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    #0.000   0.000   0.000   2.788   0.000 138.300 
# 6 cityA08
summary(vehicleData$cityA08)
  #    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
  #0.0000   0.0000   0.0000   0.4389   0.0000 127.0000 
# 7 cityA08U
summary(vehicleData$cityA08U)
    #    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    #0.0000   0.0000   0.0000   0.2321   0.0000 127.1000 
# 8 cityCD
summary(vehicleData$cityCD)
    #    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    #0.000000 0.000000 0.000000 0.000391 0.000000 5.350000
# 9 cityE
summary(vehicleData$cityE)
    #    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    #0.0000   0.0000   0.0000   0.1085   0.0000 122.0000 
# 10 cityUF
summary(vehicleData$cityUF)
    #     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
    #0.0000000 0.0000000 0.0000000 0.0003527 0.0000000 0.8490000 
# 11 co2
summary(vehicleData$co2)
    #Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    #-1.00   -1.00   -1.00   38.59   -1.00  847.00 
# 12 co2A
summary(vehicleData$co2A)
    #   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    #-1.0    -1.0    -1.0     4.1    -1.0   719.0 
# 13 co2TailpipeAGpm
summary(vehicleData$co2TailpipeAGpm)
    #   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    #0.00    0.00    0.00   17.31    0.00  719.00 
# 14 co2TailpipeGpm
summary(vehicleData$co2TailpipeGpm)
    #Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    #0.0   404.0   467.7   478.6   555.4  1270.0 
# 15 comb08
summary(vehicleData$comb08)
    #   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    #7.00   16.00   19.00   19.87   22.00  124.00 
# 16 comb08U
# 17 combA08
# 18 combA08U
# 19 combE
# 20 combinedCD
# 13 combinedUF
# 14 cylinders
# 15 displ
# 16 drive
# 17 engId
# 18 eng_dscr
# 19 feScore
# 20 fuelCost08
# 21 fuelCostA08
# 22 fuelType
# 23 fuelType1
# 24 ghgScore
# 25 ghgScoreA
# 26 highway08
# 27 highway08U
# 28 highwayA08
# 29 highwayA08U
# 30 highwayCD
# 31 highwayE
# 32 highwayUF
# 33 hlv
# 34 hpv
# 35 id
# 36 lv2
# 37 lv4
# 38 pv2
# 39 pv4
# 40 range
# 41 rangeCity
# 42 rangeCityA
# 43 rangeHwy
# 44 rangeHwyA
# 45 UCity
# 46 UCityA
# 47 UHighway
# 48 UHighwayA
# 49 year
# 50 youSaveSpend

# non-numeric 
# 1 make
# 2 model
# 3 mpgData
# 4 phevBlend
# 5 trany
# 6 guzzler - incomplete the blank data should be F or false
# 7 trans_scr - incomplete
# 8 tCharger - incomplete the blank data should be F or false
# 9 sCharger - incomplete the blank data should be F or false
# 10 atvType - incomplete the blank data should be "gas" or "standard"
# 11 fuelType2 - incomplete
# 12 rangeA - incomplete
# 13 evMotor - incomplete
# 14 mfrCode - incomplete




