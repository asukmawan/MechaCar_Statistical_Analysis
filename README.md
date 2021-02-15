# MechaCar_Statistical_Analysis

AutosRUs' newest prototype, the MechaCar, is having production issues that is halting the manufacturing team's progress. The production data is available for review, and the goal of this analysis is to provide insights that could help the manufacturing team.


## Linear Regression to Predict Miles per Gallon (MPG)
Fifty prototypes were produced using multiple design specs to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. 

Using Linear Regression, we can attempt to design a linear model with our data to help us predict the MPG of MechaCar prototypes.

### Figure 1 - Linear Regression Model with Multiple Metrics on MPG
<img src="Resources/fig1.png"></img>


Looking at the above variable/coefficients, the following provided a non-random amount of variance to the mpg values showing p-values smaller than a significance level of 0.05:
- Intercept - 5.08 x 10<sup>-8</sup>
- Vehicle Length - 2.60 x 10<sup>-12</sup>
- Ground Clearance - 5.21 x 10<sup>-8</sup>

Our hypothesis test for our Linear Regression model would be as follows:

- H<sub>0</sub> : The slope of the linear model is zero, or m = 0
- H<sub>a</sub> : The slope of the linear model is not zero, or m ≠ 0

Since we have independent variables such as Vehicle Length and Ground Clearance deemed to have significant effect on MPG, we cannot reject the null hypothesis and cannot consider the slope of the linear model being zero. This would indicate these variables have significant impact on MPG

Lastly, our r-square value which will tell us whether our linear model will effectively predict MPG of MechaCar prototypes not was determined to be 0.7149. This would mean that our model explains 71.49% of the variability of our data around its mean.

## Summary Statistics on Suspension Coils

Along with prototype data, MechaCar suspension coil data showing their weight capacities in the form of PSI values and the lots those coils were part of is available. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

Checking the summary statistics of this data will help us determine of the manufacturing process is consistent across production lots.

### Figure 2 - Total Summary Statistics on Suspension Coil PSI
<img src="Resources/fig2.png"></img>

Looking at the variance across all lots in the suspension coil PSIs, we can see a variance of 62.29 PSI, which does fall within the design specifications tolerance. 

### Figure 3 - Summary Statistics on Suspension Coil PSI by Lot
<img src="Resources/fig3.png"></img>

But looking into individual lots, Lot 3 exceeds 100 PSI which is beyond acceptable variances. Therefore the manufacturing team should access more recent production as to why coils produced during Lot 3 is not up to specifications, as well as highlight those vehicle ID's with suspension coils from Lot 3.

## T-Tests on Suspension Coils

The population mean for the MechaCar suspension coils manufactured is 1,500 pounds per square inch. By using Student's t-Test, we can determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

 ### Figure 4 - PSI Across All Manufacturing Lots
<img src="Resources/fig4.png"></img>

 ### Figure 5 - PSI Across Lot 1
<img src="Resources/fig5.png"></img>

 ### Figure 6 - PSI Across Lot 2
<img src="Resources/fig6.png"></img>

 ### Figure 7 - PSI Across Lot 3
<img src="Resources/fig7.png"></img>

Using a standard significance level of 0.05, only one out of the four t-test that was ran showed a p-value where we would be able to reject our null hypothesis - Lot 3. 

The PSI across all Lots, as well as Lots 1-2 showed a p-values greater than 0.05, which evidence shows that their means are statistically similar to the population mean of 1,500

Because Lot 3 shows a lower p-value compared to our significance level, we should accept the alternative hypothesis that this lot does not fall within our confidence level of PSI, and should be inspected. 

The suspicion that there is an issue with Lot 3 is cemented here as not only did our t-test show there is a statistical difference in means with the population, but we also saw variances in our summary statistics as well. 

## Study Design: MechaCar vs Competition

To quantify how MechaCar performs against the competition, one metric we can use to compare performance is to fuel efficiency. We've already touched on Miles per Gallon in this analysis, and the factors that would . This study would highlight the fuel efficiency of MechaCar to its competitors through comparison of their average Miles Per Gallon 

So we want to show that the current MPG of the MechaCar is better than the average MPG of its car class across car models sold in North America. In other words, we want to prove that the MechaCar has a MPG greater than the average MPG of its class. 

We will design our hypothesis test as follows:

- H<sub>0</sub> : The mean MPG for MechaCar equals to the national average of cars in its class
- H<sub>a</sub> : The mean MPG for MechaCar is > the national average of cars in its class


This hypothesis will require a one-tailed test, as we only interested in detecting a directional difference. We will also utilize a two-sample t-test as we want to see if there is a statistical difference between the distribution means from two samples - MechaCar and the national average.

From our prototype MechaCar data, our mean MPG across our 50 cars resulted in 45.13 miles per gallon.

### Figure 8 - Average MPG on MechaCar Prototypes
<img src="Resources/fig8.png"></img>

One challenge we may face is our population size for our MechaCar is the small sample size. But what would be required for this study is more samples as well as MPG data from all the different cars available for sale in North America. This is what's required for us to compare the means of our two samples.

