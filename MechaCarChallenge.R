
library(dplyr) 
?read.csv(mechacar_mpg.csv)
summary(lm ~ MechaCar_mpg(vehicle_lenght, vehicle_weight, spoiler_angle, ground_clearance, AWD, mpg)) #summarize linear model

?read.csv(susension_coil)
x <- c(Suspension_Coil) #data set
mean.results = mean(x) #calculate mean
print(mean.results)


median.result = median(x) # calculate median
> print (median.result)

mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode.result = mode(x) # calculate mode 
print(mode.result)

variance.result = var(x) # calculate variance
print (variance.result)

sd.result = sqrt(var(x)) # calculate standard deviation
print (sd.result)
