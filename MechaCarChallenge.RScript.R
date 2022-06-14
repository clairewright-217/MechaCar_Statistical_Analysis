library(dplyr)

# DELIVERABLE 1 
# Read MechaCar_mpg.csv
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

# Perform multiple linear regression to see how all measurements potentially impact mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_df)
lm_mechacar = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_df)

# Determine p=value and r-squared value of linear regression model
summary(lm_mechacar)


# DELIVERABLE 2

susp_coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F )

total_summary <- summarize(susp_coil_df, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- susp_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# DELIVERABLE 3

# first plotting the PSI distribution to make sure I don't need to transform it using log or something similar
plt <- ggplot(susp_coil_df, aes(PSI))
plt + geom_density()

# T-Test to determine if PSA across all manufacturing lots are statistically different from the pop. mean of 1500 PSI
t.test(susp_coil_df$PSI, mu=1500)


# NEED HELP
# T-Test to determine if PSA of each manufacturing lot is statistically different from the pop. mean of 1500 PSI
t.test(subset(susp_coil_df,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)



