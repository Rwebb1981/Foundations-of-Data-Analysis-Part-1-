#How to load library
library(SDSFoundations)

#Code to load 'Bike Data' file
BikeData <- BikeData

#Code to get mean average of 'distance variable'
mean(BikeData$distance)

#Code to get table of cycling frequency
table(BikeData$cyc_freq)

#Code to index within a dataframe (i.e. 2nd row 5th column)
BikeData[2,5]
