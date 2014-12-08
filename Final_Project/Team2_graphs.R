# Jae Choi
# Team 2
# Final Presentation

# Load csv
vehicleData <- read.csv("vehicles.csv", header=TRUE, sep=",")

# Aggregate fuel type vs city mpg
plotFrame <- aggregate(city08 ~ fuelType, vehicleData, FUN = "mean")
plot(plotFrame$fuelType, plotFrame$city08)
title(main="Mean City Mileage By Fuel Type", font.main=4)
lines(plotFrame$fuelType, plotFrame$city08)
# Order aggregate 
table <- plotFrame[order(-plotFrame$city08) , ]

# Aggregate fuel type vs city mpg
plotFrame1 <- aggregate(city08 ~ drive, vehicleData, FUN = "mean")
plot(plotFrame1$drive, plotFrame1$city08)
title(main="Mean City Mileage By Drive", font.main=4)
lines(plotFrame1$drive, plotFrame1$city08)
# order aggregate
table2 <- plotFrame1[order(-plotFrame1$city08), ]

# Aggregate tranny vs city mpg
plotFrame2 <- aggregate(city08 ~ trany, vehicleData, FUN = "mean")
plot(plotFrame2$trany, plotFrame2$city08)
title(main="Mean City Mileage By Tranny", font.main=4)
lines(plotFrame2$trany, plotFrame2$city08)
# Order aggregate
table3 <- plotFrame2[order(-plotFrame2$city08), ]