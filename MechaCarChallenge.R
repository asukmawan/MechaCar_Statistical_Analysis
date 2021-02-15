library(dplyr)

mecha_table <- read.csv("MechaCar_mpg.csv")
View(mecha_table)

lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD,mecha_table) #create linear model
summary(lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD,mecha_table)) #summarize linear model


