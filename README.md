## MechaCar_Statistical_Analysis
# Overview
In this project, we will analyze different summary statistics and regression models for the company AutoRUs using the R program.
# Purpose
We have been tasked with creating a complete retrospective analysis, analytical verification, validation of automatic specifications, and study designs of future product testing for the company AutosRUs. We will use data analytics using R to complete thorough, and clear, statistical testing for AutosRUs.
# Linear Regression to Predict MPG
For the following analysis we performed a multiple linear regression model on our dataset for MechaCars' mpg (miles-per-gallon). When we performed a summary, the a results are as shown below:
![image](https://user-images.githubusercontent.com/89948353/153784041-24828686-3427-4870-8af6-0663777d4000.png)
# Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
What we have found in our analysis is that, the Intercept, vehicle length, and ground clearance are unlikely to create random variance to the mpg values.

# Is the slope of the linear model considered to be zero? Why or why not?
From our analysis we can determine that our linear model would not be considered zero. There are definitely variables that are not there by random chance. Our r square is .72 and shows that 70% of our variability is explained by our variables and our p value of 5.35e-11 is well below our .05 significance level. This shows that there is some correlation, and that our slope is not zero.

# Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
From the analysis we can see that this linear model can efficiently predict mpg. Our r squared is .72 which is a high significant level. We can look at some of our independent variables and know that they will effectively predict mpg of MechaCar prototypes.

# Summary Statistics on Suspension Coils
# The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
# We completed statistical summaries on the manufacturing lots and they are listed below:
![image](https://user-images.githubusercontent.com/89948353/153784082-92219aa5-510f-42a0-bb94-532b15a9f73b.png)
![image](https://user-images.githubusercontent.com/89948353/153784090-961f0131-b79d-4cef-8fbd-416dbe6cd308.png)
As shown our variance for all the manufacturing lots in total meets the predetermined design specifications with a variance no larger than 62.3. The variance for lot 1 and lot 2 meet specifications with variance of .98 and 7.4 respectively. Lot 3 needs more modifications with a variance of 170.3 which is far over the required design specifications.
# T-Tests on Suspension Coils
For the One Sample t-test we performed this on the PSI of suspension coils to determine if there is statistical difference between the population mean and the sample mean. The results for our T-test are listed below:
# T-test on total PSI 
![image](https://user-images.githubusercontent.com/89948353/153784116-2a4a048a-806e-40c2-aac8-79d07248bceb.png)
# T-test on Lot 1 PSI 
![image](https://user-images.githubusercontent.com/89948353/153784157-fde73871-07ad-48ba-9fd3-ad356cae3d58.png)
# T-test on Lot 2 PSI
![image](https://user-images.githubusercontent.com/89948353/153784180-8bfa404f-60ba-440b-bb2c-7f4de7675c83.png)
# T-test on Lot 3 PSI
![image](https://user-images.githubusercontent.com/89948353/153784263-0284e9d1-2596-4e26-bec2-ea96d2d0131e.png)

For total suspension coils it shows the true mean of 1498.78 is not equal to 1500. However, our p-value is .06 which is above the level of significance of .05. Therefore we are unable to reject the null hypothesis. The t-test shows that the sample and the population are statistically similar. We also completed the t-testing for each  of the manufacturing lots. For suspension coils PSI for lot 1, the true mean of 1500 and our p-value is 1, which is above .05. Due to this we can see that there is some statistical similarity. Lot 2 shows similar as it has a mean of 1500.2 and a p value of .6 which is above .05, showing statistical similarity. Lot 3 shows a mean of 1496.14 which is not equal to 1500. Our p-value is .04168 which is below .05. We can reject our null hypothesis; the population and sample means are not statistically similar. There should be modification to the sample for Lot 3 to get a more representative sample.
# Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating. 
We could definitely perform more analysis to understand mpg based on vehicle weight and spoiler angle. We could test this using the Anova test to hopefully find that the null Hypothesis is that means for all groups will be equal. I believe these metrics will show that there is a statistical difference in mpg based on weight and spoiler angle. We would need to pull the data table for MechaCar_mpg and take subsets for the columns mpg, vehicle_weight and spoiler_angle. Once the ANOVA test has been run we will be able to compare the Pr(>F) column for each variable to our significance level of .05. We can then compare the two to see if each metric has statistical significance on mpg and see if this shows a difference in efficiency of the MechaCar prototypes.


