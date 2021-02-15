library(dplyr)

mecha_table <- read.csv("MechaCar_mpg.csv")
View(mecha_table)

lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD,mecha_table) #create linear model
summary(lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD,mecha_table)) #summarize linear model


# Summary stats on PSI
psi_table <- read.csv("Suspension_Coil.csv")
total_summary <- psi_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Summary stats grouped by lot
lot_summary <- psi_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
