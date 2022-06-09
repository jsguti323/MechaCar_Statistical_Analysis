# MechaCar Statistical Analysis

## Overview

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

## Study Design: MechaCar vs Competition
