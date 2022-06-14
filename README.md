# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

In this deliverable, data was collected on 50 different prototypes of a new manufactured car named the MechaCar to see which variables can predict the miles per gallon performance (mpg) of the car. For this statistical analysis, I am assuming a significance level of 0.05%. The independent variables in this experiment are the vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD (All Wheel Drive), while the dependant variable is MPG. 

!(MechaCar Linear Regression Summary)[linear_reg_summary.png]

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

After running a multiple linear regression analysis including all of the independent variables in the dataset, **the vehicle length, ground clearance, and the (Incercept) p-values** of the model were all close to zero, and therefore are well below the signifance level of 0.05%. This means that vehicle length and ground clearance appear to have a statistically significant impact on the mpg of the prototype vehicles, and there is sufficient evidence to reject the null hypothesis for these variables. The incercept value is also statistically significant, meaning that some sort of scaling or transforming of the independent variables might be necessary to predict the corresponding mpg values. 

Vehicle weight, spoiler angle, and AWD had p-values greater than this analysis's significance level threshold; we cannot reject the null hypothesis for these variables on their mpg impact on the MechaCar prototpes. 

- Is the slope of the linear model considered to be zero? Why or why not?

No, the slope is not considered to be zero for this linear model. This is because the Multiple R-squared value is 0.7149, which means there is a greater than 50% chance that the independent variables in this model can help predict the value of the dependant variable, mpg. Also the p-value of this model is 5.35e-11, which is almost zero, and therefore much lower than the 0.05% significance level. This means that as independent variable values are plotted along the x axis and the corresponding mpg values (dependent variable) are plotted on the y axis, the slope of the line according to the linear regression model will not be zero, instead the slope will represent a statistically significant correlation of the data in the plot. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

This linear model can be considered somewhat reliable in predicting mpg values, but it's not a great fit either. There are three independent variables that do not appear to be statistically correlated to mpg that are included in this model (vehicle weight, spoiler angle, AWD), so that's an indicator that this model is overfitting the data and might not work as well to predict additional data outside of this dataset. 


## Summary Statistics on Suspension Coils

!(Total Summary)[Total_Summary.png]

!(Lot Summary)[Lot_Summary.png]


- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

According to the summary statistics of the suspension coil's PSI across all of the MechaCar prototypes, the cars in Lot 1 and Lot 2 have a variance lower than 100 pounds per square inch, but the cars in Lot 3 have a variance of 170.3 lb/sq in, which exceeds the design specifications. 

The variance of the susension coils across all of the prototypes is 62.3 lb/sq in, so technically the total dataset meets the criteria of <100 lb/sq in in PSI variance. However, the prototypes in Lot 3 should be flagged since their PSI variance far exceeds the design criteria.



## T-Tests on Suspension Coils

STILL NEED TO FIGURE OUT SUBSET T-TEST IN DELIVERABLE 3

## Study Design: MechaCar vs Competition

We want to know perceived customer satisfaction between the MechaCar vehicle against its top competitor on the market. To do this, we will compare survey results collected from drivers of the MechaCar versus other comparable vehicles. 

- What metric or metrics are you going to test?

The metric we are collecting is a star ranking from drivers about the vehicle they drove, either the MechaCar or its top competitor. The survey will ask drivers to rank their overall satisfaction with the vehicle they drove based on a 5 star scale (1 is lowest satisfaction and 5 is highest satisfaction). Therefore, the survey data is categorical because each driver's survey response can be bucketed into 5 categories, which are 1-5 stars. 

- What is the null hypothesis or alternative hypothesis?

**Null Hypothesis:** There is no statistical difference between the Mean Star Rating of the MechaCar versus the Mean Star Rating of the top vehicle competitor.

**Alternative Hypothesis:** There is a statistical difference between the Mean Star Rating of the MechaCar versus the Mean Star Rating of the top vehicle competitor.

- What statistical test would you use to test the hypothesis? And why?
I would use a Chi-Squared Test to determine of there is a difference in the categorical frequencies between the customer star ratings of the two vehicles being compared. I'd use this test because both the dependent (MechaCar ratings) and independent (top competitor ratings) variables are categorical. 

- What data is needed to run the statistical test?
Two unique survey response datasets are needed, one which includes star ratings from drivers who tested out the MechaCar, and another which has the star ratings from drivers who tested the competition vehicle. The chi-squared test requires that there is at least one observation for every unique possible value in the dataset, so these datasets would have to be big enough to include occurances of 1 stars through 5 stars from those who completed the survey. Also, at least 80% of all unique values need to have 5 or more observations, so the absolute minimum dataset size would be 21 survey responses only assuming that four of the star categories got 5 votes and the remaining star category got 1 vote. Most likely the sample size would need to be much larger. 




