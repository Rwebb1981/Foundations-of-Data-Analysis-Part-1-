#Code to load SDS library and import BullRiders dataframe

library(SDSFoundations)
BullRiders <- BullRiders

#Code to plot 'years pro' vs 'buckouts'.

plot(BullRiders$YearsPro, BullRiders$BuckOuts14, main = 'Plot of years vs buckouts', xlab = 'Years Pro', ylab = 'Buckouts')

#Code to draw a linear model line of best fit on the chart
abline(lm(BullRiders$BuckOuts14 ~ BullRiders$YearsPro))

#Code to run the same as above but using events vs buckouts
plot(BullRiders$Events14, BullRiders$BuckOuts14, main = 'Plot of events vs buckouts', xlab = 'Events', ylab = 'Buckouts')
abline(lm(BullRiders$BuckOuts14 ~ BullRiders$Events14))

#Code to calculate correlation between 'years pro' vs 'buckouts'.
cor(BullRiders$YearsPro, BullRiders$BuckOuts14)

#Code to ask for a corrlation matrix of 'YearsPro', 'Events14' and 'BuckOuts 14'. 
myvars <- c('YearsPro', 'Events14', 'BuckOuts14')
cor(BullRiders[,myvars])
