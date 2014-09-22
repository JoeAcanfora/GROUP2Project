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
summary(vehicleData$comb08U)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#0.000   0.000   0.000   3.151   0.000 124.400 
summary(vehicleData$combA08)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#0.000   0.000   0.000   0.497   0.000 117.000 
summary(vehicleData$combA08U)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#0.000   0.000   0.000   0.497   0.000 117.000 
summary(vehicleData$combE)
#Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
#0.0000   0.0000   0.0000   0.1138   0.0000 121.0000 
summary(vehicleData$combinedCD)
#Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
#0.000000 0.000000 0.000000 0.000324 0.000000 4.800000 
summary(vehicleData$combinedUF)
#Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
#0.0000000 0.0000000 0.0000000 0.0003412 0.0000000 0.8340000 
summary(vehicleData$cylinders)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
#  2.000   4.000   6.000   5.744   6.000  16.000      71 
summary(vehicleData$drive)
#2-Wheel Drive              4-Wheel Drive 
#1189                        507                        768 
#4-Wheel or All-Wheel Drive            All-Wheel Drive          Front-Wheel Drive 
#6648                       1444                      12504 
#Part-time 4-Wheel Drive           Rear-Wheel Drive 
#112                      12236 
summary(vehicleData$engId)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#0       0     309    9455    4820   69100 
summary(vehicleData$eng_dscr)
#(FFS) 
#14690                         8827 
#SIDI               (FFS) CA model 
#2089                          926 
#(FFS)      (MPFI)                   (FFS,TRBO) 
#734                          666 
#FFV               (350 V8) (FFS) 
#572                          411 
#(GUZZLER)  (FFS)                         SOHC 
#366                          354 
#(NO-CAT)                    FLEX-FUEL 
#238                          198 
#GUZZLER            (FFS)      (SPFI) 
#195                          194 
#SIDI; FFV (GUZZLER)  (FFS)      (MPFI) 
#181                          122 
#(350 V8)                     CA model 
#120                          113 
#(350 V8) (FFS)  (MPFI)                    (GM-CHEV) 
#106                          102 
#DOHC       (FFS)                     (DIESEL) 
#96                           95 
#PR              (GUZZLER) (FFS) 
#91                           84 
#(FFS,TRBO) CA model                         DOHC 
#81                           79 
#SOHC       (FFS)        DOHC TURBO (FFS,TRBO) 
#78                           76 
#V-6             (305)      (FFS) 
#75                           71 
#(DIESEL) CA model                   (CAL)(FFS) 
#71                           67 
#(DSL,TRBO)             SOHC-4     (FFS) 
#60                           50 
#HEV             (GM-CHEV)  (FFS) 
#49                           46 
#(CALIF)             (DOHC)     (FFS) 
#45                           44 
#(GUZZLER)                     DOHC-IL4 
#42                           42 
#(305)        (GUZZLER)  (FFS,TRBO) 
#40                           40 
#(SOHC)     (FFS)                          LM7 
#39                           38 
#(DSL,TRBO) (NO-CAT)         (FFS) fuel injection 
#37                           37 
#SOHC-4 2WD (FFS)                          FFS 
#37                           34 
#VTEC             (4A-FE)    (FFS) 
#33                           32 
#(FFS)      (S-CHARGE)             SOHC-4 4WD (FFS) 
#32                           32 
#(350 V8) (DIESEL)      (350 V8) (FFS) CA model 
#31                           30 
#(FFS) 2 barrel carb            (FFS,TRBO) (MPFI) 
#29                           29 
#(POLICE)   (FFS)                   SIDI & PFI 
#28                           28 
#V6             (307)      (FFS) 
#28                           27 
#SOHC-VTEC          (MPFI)     (NO-CAT) 
#27                           26 
#B235R                    DOHC-VTEC 
#26                           25 
#(DSL,TRBO) (MPFI)          (DSL,TRBO) CA model 
#24                           24 
#4V           (GM-CHEV) CA model 
#24                           23 
#PHEV             (3S-FE)    (FFS) 
#23                           21 
#(GM-OLDS)  (FFS)            (DIESEL) (NO-CAT) 
#21                           20 
#(FFS)      (GUZZLER)                 (FFS) (MPFI) 
#20                           20 
#GAS 330                           I4 
#20                           20 
#4-VALVE             (16-VALVE) (FFS) 
#19                           18 
#MOTORSPORT                       SPORTS 
#18                           18 
#(CALIF)    (FFS,TRBO)             (VTEC)     (FFS) 
#17                           17 
#L410MT2 SIDI; with Stop-Start Option 
#17                           17 
#(121)      (FFS) (GUZZLER)  (FFS,TRBO) (MPFI) 
#16                           16 
#(GUZZLER) CA model                       (MPFI) 
#16                           16 
#4 VALVE                        B235E 
#16                           16 
#DOHC-T/C                          L-4 
#16                           16 
#(DOHC)     (FFS,TRBO)    (GM-CHEV)  (FFS) CA model 
#15                           15 
#(122)      (FFS)             (16VALVES) (FFS) 
#14                           14 
#2-VALVE                      390-540 
#14                           14 
#B205R                      (Other) 
#14                         1468 
summary(vehicleData$feScore)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#-1.0000 -1.0000 -1.0000 -0.3924 -1.0000 10.0000 
summary(vehicleData$fuelCost08)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#500    2350    2750    2864    3250    8150 
summary(vehicleData$fuelCostA08)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#0.0     0.0     0.0   141.4     0.0  5700.0 
summary(vehicleData$fuelType)
#CNG                      Diesel 
#59                        1054 
#Electricity             Gasoline or E85 
#68                        1088 
#Gasoline or natural gas         Gasoline or propane 
#18                           8 
#Midgrade                     Premium 
#48                        8923 
#Premium and Electricity  Premium Gas or Electricity 
#5                          10 
#Premium or E85                     Regular 
#99                       24018 
#Regular Gas and Electricity 
#10 
summary(vehicleData$fuelType1)
#Diesel       Electricity Midgrade Gasoline       Natural Gas 
#1054                68                48                59 
#Premium Gasoline  Regular Gasoline 
#9037             25142 
summary(vehicleData$ghgScore)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#-1.0000 -1.0000 -1.0000 -0.3941 -1.0000 10.0000 
summary(vehicleData$ghgScoreA)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#-1.0000 -1.0000 -1.0000 -0.9471 -1.0000  8.0000 
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


# Visualization 
year <- vehicleData$year
uniqueYears <- unique(year, incomparables = FALSE, mode="list")
yearList <- as.list(year)
highwayMileage <- vehicleData$highway08
highwayMileageByYear <- aggregate(highwayMileage, by = yearList, FUN = "mean")
