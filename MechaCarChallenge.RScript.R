# Download the dplyr library
library(dplyr)

# Read in csv file as data frame.
MechaCar_df <- read.csv(file = 'MechaCar_mpg.csv', check.names=F, stringsAsFactors =F)

# Perform linear regression.
mpg_lm = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)
print(mpg_lm)

# Determine p-vale and r-squared value for linear regression model.
summary(mpg_lm)