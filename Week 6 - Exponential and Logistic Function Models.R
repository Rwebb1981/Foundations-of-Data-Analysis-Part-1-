#Code to load the World Bank dataset
library(SDSFoundations)
world <- WorldBankData

#Code to pull out a subset of data by UK (2000-2009)
gbr <- world[world$Country.Code == 'GBR',]
gbr2000 <- gbr[gbr$year >= 2000 & gbr$year < 2010,]

#Code to start time variable at zero (at present it runs from 2000-2009)
time <- gbr2000$year - 2000

#Code to create a vector containing the number of motor vehicles from each of these years
mv <- gbr2000$motor.vehicles

#Code to create a scatter plot to show number of changes over years
plot(time,mv)

#Code to fit linear, exponential and logistic models to the data
linFit(time,mv)
logisticFit(time,mv)
expFit(time,mv)

#Code to fit linear, logistic and exponential models to the data 
tripleFit(time,mv)

#Code to predict what car number of would be like after 12 years using linear, exponential and logistic models
linFitPred(time,mv,12)
logisticFitPred(time,mv,12)
expFitPred(time,mv,12)
