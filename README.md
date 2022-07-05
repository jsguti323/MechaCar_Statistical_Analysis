# MechaCar Statistical Analysis

## Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. We will review the production data and design a linear model that predicts the mpg of MechaCar prototypes using several variables. Next, we will analyze the weight capacities of multiple suspension coils that were tested to determine if the manufacturing process is consistent across production lots. T-tests will then be performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean. Finally, we will design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

## Linear Regression to Predict MPG
![summary_mpg_lm](https://user-images.githubusercontent.com/99751636/172273184-78f19d17-dde0-4c7e-8416-8ce1be6cd94a.png)

* The intercept, vehcicle length and ground clearance proved to provide a non-random effect on our mpg values in the data set, as they had p-values < 0.05.
* The slope of the model would not be equal to zero, as the analysis shows that there were indpendent variables that had a significant effect on the dependent variable.
* The R-squared value for this model was 0.7149. This means the mmodel would correctly predict the mpg of MechaCar 71.49% of the time, which would be considered as effective.

## Summary Statistics on Suspension Coils

#### Suspsnesion Coils Summary
![Coils_Summary_Stats](https://user-images.githubusercontent.com/99751636/172922849-dd3e4679-e189-4f11-9b62-b2cd5afa1fb4.png)

#### Manufacturing Lots Summaries
![Lot_Summary_Stats](https://user-images.githubusercontent.com/99751636/172922932-8359002a-5641-4d7e-a0df-4929697a8345.png)

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. We can see that for the overall data we have across the 3 maufacturing lot, the variance is 62.29psi, which is less than 100psi and therefore within compliance. 
* After subsetting the data and grouping by manufacturing lot, we can see that Lot 1 has a variance of 0.98 PSI and Lot 2 has a variance of 7.47 PSI, both of which are well below the 100 psi variance limit. 
* It's the variance from Lot 3 that skews the data, as Lot 3 has a variance of 170.29 psi, well above the 100 psi variance limit. 

## T-Tests on Suspension Coils

### Null Hypothesis
PSI across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch.

#### All Lots vs the Population
![All_Lots_Ttest](https://user-images.githubusercontent.com/99751636/172924692-dda1aa04-e53d-46f4-9fd4-ae3e45e324da.png)

* All Lots P-Value = 0.06, which is greater than the critical value 0.05
* We fail to reject the null hypothesis.

#### Lot 1 vs the Population
![Lot1_Ttest](https://user-images.githubusercontent.com/99751636/172924745-fa00087c-aa25-49bc-bde2-acb0b2c197b3.png)

* Lot 1 P-Value = 1.00, which is greater than the critical value 0.05
* We fail to reject the null hypothesis.

#### Lot 2 vs the Population
![Lot2_Test](https://user-images.githubusercontent.com/99751636/172924844-f50e6d11-d0c3-4725-bab5-3b18227df0b6.png)

* Lot 2 P-Value = 0.61, which is greater than the critical value 0.05
* We fail to reject the null hypothesis.

#### Lot 3 vs the Population
![Lot3_Ttest](https://user-images.githubusercontent.com/99751636/172924909-cb39e0e0-7118-432f-9fd0-2e8e3dd191a1.png)

* Lot 3 P-Value = 0.06, which is less than the critical value 0.05
* We reject the null hypothesis
* The mean PSI in Lot 3 is statistically significantly different than the overall population mean of 1500 PSI.

## Study Design: MechaCar vs Competition

In this study, we will compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
* Performance Metrics: MPG, Maintenance Cost, and Horsepower
* Null Hypothesis: There is not a statistical difference in the performance of a vehicle based on if it's manufcatured by MechaCar or its competiton.
* We will use an ANOVA test to measure the statistical difference. We are comparing several categorical dependent variables to a single continuous independent variable (manufacturer, {MPG, HP, etc.}) so ANOVA testing is appropriate.
* Findings: if the p-value in any given ANOVA test is less than the critical value of 0.05, then there would be a signficant difference in that study's metric of interest based on the car manufacturer. 

