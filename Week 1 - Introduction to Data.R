#How to load library
library(SDSFoundations)

#Code to load 'Bike Data' file
BikeData <- BikeData

#Code to get mean average of 'distance variable'
mean(BikeData$distance)

#Code to get table of cycling frequency
table(BikeData$cyc_freq)

#Code to pull out specific data from a dataframe (i.e. 2nd row 5th column)
BikeData[2,5]

#Code to pull out data for a specific column
BikeData[,5]

#Code for counts of categorical variables
table(BikeData$gender)

#Code to create a new object containing females
females <- BikeData[BikeData$gender == 'F',]

#Code to create a new variable based on criteria
femalespeeds <- BikeData$speed[BikeData$gender == 'F']

#Code to print list of variable names
names(BikeData)
