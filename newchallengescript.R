library(tidyverse)



# csv file.
mechacar_data <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)

mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_data)

# p-value and r-squared
summary(mecha_lm)

suspention_data <- read.csv("Suspension_coil.csv",stringsAsFactors = F,check.names = F)
total_summery <- suspention_data %>% summarize(mean = mean(PSI),median = median(PSI),variance=var(PSI),SD=sd(PSI))
print(total_summery)

lot_summary <- suspention_data %>%
  group_by(Manufacturing_Lot) %>%
  summarize(mean = mean(PSI),median = median(PSI),variance=var(PSI),SD=sd(PSI))

t.test(suspention_data$PSI,mu=1500)
t.test(subset(suspention_data,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(suspention_data,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(suspention_data,Manufacturing_Lot=="Lot3")$PSI,mu=1500)