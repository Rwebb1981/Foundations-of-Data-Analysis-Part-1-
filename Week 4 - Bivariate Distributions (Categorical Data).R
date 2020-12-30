#Code to load SDS Foundations library and Austin City Limits dataset
library(SDSFoundations)
acl <- AustinCityLimits

#Code for a small table showing winners of Grammys
table(acl$Grammy)

#Code to assign the table
gtab <- table(acl$Grammy)

#Code to calculate proportions across variables
prop.table(gtab)

#Code to create a contingency and proportion tables of x2 variables
gtab2 <- table(acl$Grammy, acl$Gender)
gtab2
prop.table(gtab2)

#Code to take proportions by either row of column (1=row, 2=column)
prop.table(gtab2,1)
prop.table(gtab2,2)

#Code to create a stacked bar chart 
barplot(gtab2, legend = T, main = 'Gender by Grammy winner', ylab = 'Counts', xlab = 'Gender', beside = T)

#Code to create a mosaic plot
barplot(prop.table(gtab2,2))

#Code to subset the data by artists aged 30 or over 
older <- acl[acl$Age >= 30,]

#Code to create tables of marginal distribution (by genre and gender)
genre <- table(older$Genre)
genre

gender <- table(older$Gender)
gender

#Code to create a contingency table 
twoway <- table(older$Gender, older$Genre)
twoway

#Code to visualise the counts 
barplot(twoway, legend = T, beside = T)

#Code to calculate the probability of each genre being played
prop.table(genre)

#Code to calculate the probability of each genre being played given the artists gender
prop.table(twoway,1)
