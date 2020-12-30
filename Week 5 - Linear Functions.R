#Code to load the SDS Foundations library and World Record dataset
library(SDSFoundations)
WR <- WorldRecords

#Code to create a new dataframe containing only the mens 800m data
mens800 <- WR[WR$Event == 'Mens 800m',]

#Code to run a linear regression analysis
linFit(mens800$Year, mens800$Record)

#Code to change the markers in the graph from black squares to unfilled black circles
plot(mens800$Year, mens800$Record)
abline(lm(mens800$Record ~ mens800$Year))

