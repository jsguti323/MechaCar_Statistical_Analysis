# Download the dplyr library
library(dplyr)

# Read in mpg csv file as data frame.
MechaCar_df <- read.csv(file = 'MechaCar_mpg.csv', check.names=F, stringsAsFactors =F)

# Perform linear regression.
mpg_lm = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)
print(mpg_lm)

# Determine p-vale and r-squared value for linear regression model.
summary(mpg_lm)

# Read in suspension coil csv file.
coils_tables <- read.csv(file = 'Suspension_Coil.csv', check.names=F, stringsAsFactors =F)

# Get Summary Statistics for PSI Column.
coils_summary <- coils_tables  %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Group each manufacturing lot by summary statistics.
lot_summary <- coils_tables %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')




