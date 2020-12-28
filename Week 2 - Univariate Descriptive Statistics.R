#Code to load SDS library and import AnimalData dataframe

library(SDSFoundations)
AnimalData <- AnimalData

#Code to display the sex of animals in a table or bar plot
table(AnimalData$Sex)
plot(AnimalData$Sex)

#Code to add title and axis labels to the above plot
plot(AnimalData$Sex, main='Animal Sex', xlab='sex', ylab='Number')

#Code to make a plot with continuous data about age of intake using a histogram 
hist(AnimalData$Age.Intake)

#Code to split the previous histogram by sex
femaleage <- AnimalData$Age.Intake[AnimalData$Sex == 'Female']
maleage <- AnimalData$Age.Intake[AnimalData$Sex == 'Male']
hist(femaleage,main = 'Histogram of female ages', xlab = 'Age at intake of female animals')
hist(maleage,main = 'Histogram of male ages', xlab = 'Age at intake of male animals')

#Code to pull out an outlier
max(maleage)
which(AnimalData$Age.Intake == 17)
AnimalData[415,]

#Code for measures of average
mean(AnimalData$Age.Intake)
median(AnimalData$Age.Intake)

#Code for measures of spread
sd(AnimalData$Age.Intake)

#Code for five number summary (min, 1st quartile, median, 3rd quartile, max)
fivenum(AnimalData$Age.Intake)

#Code to pull out specific data and variable types
Adopted <- AnimalData[AnimalData$Outcome.Type == 'Adoption',]
Daystoadopt <- Adopted$Days.Shelter
max(AnimalData$Days.Shelter)
which(AnimalData$Days.Shelter==max(Daystoadopt))
AnimalData[425,]

#Code to calculate z-score for the outlier
(211 - mean(Daystoadopt)) / sd(Daystoadopt)

   