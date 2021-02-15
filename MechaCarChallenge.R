library(dplyr)

mecha_table <- read.csv("MechaCar_mpg.csv") #import csv

# Linear Regression for MPG
lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD,mecha_table) #create linear model
summary(lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD,mecha_table)) #summarize linear model


# Summary stats on PSI
psi_table <- read.csv("Suspension_Coil.csv") #import csv
total_summary <- psi_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Summary stats grouped by lot
lot_summary <- psi_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


# t-test for PSI 
t.test(psi_table$PSI, mu = 1500)

# t-test for PSI for Lot 1
t.test(subset(psi_table, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)

# t-test for PSI for Lot 2
t.test(subset(psi_table, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)

# t-test for PSI for Lot 3
t.test(subset(psi_table, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)