# MechaCar Analysis - AutosRUs using R

## Project Overview

The purpose of this project is using R for AutosRUs company  has newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress.The data analytics team to review the production data for insights and  predict  that may help the manufacturing . Summary statistics are generated and t-tests are performed for individual manufacturing lots. Finally, a study is designed to compare MechaCar to the competition.

## Linear Regression to Predict MPG

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/lm.png )
![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/summary.png )

 mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)
 
 From the above output ,the following conclusions can be made:
 
- The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.

- The p-Value for this model, p-Value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.

- This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model does predict mpg of MechaCar prototypes effectively.
 

## Summary Statistics on Suspension Coils

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/d4.png )

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/d3.png )

When looking at the entire population of the production lot, the variance of the coils is 62.29 PSI, which is well within the 100 PSI variance requirement.

Similarly, but significantly more consistent, Lot 1 and Lot 2 are well within the 100 PSI variance requirement; with variances of 0.98 and 7.47 respectively. However, it is Lot 3 that is showing much larger variance in performance and consistency, with a variance of 170.29. It is Lot 3 that is disproportionately causing the variance at the full lot level.

- boxplot illustrates the differences between the lots:

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/plot2.png)


## T-Tests on Suspension Coils

-  T-Test Across All Manufacturing Lots

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/test.png)

In the t-test above, it is found that the mean across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch.

- Manufacturing Lot 1 T-Test

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/testlot1.png)

Manufacturing Lot 1 has a p-value of 1, which means that the mean of Manufacturing Lot 1 is identical to the population mean of 1,500. Therefore we fail to reject the null hypothesis, there is no statistical difference from the population mean.

- Manufacturing Lot 2 T-Test

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/testlot2.png)

Manufacturing Lot 2 has a p-value of 0.61, therefore we fail to reject the null hypothesis. There is no statistical difference between Manufacturing Lot 2 and the population mean of 1,500.

- Manufacturing Lot 3 T-Test

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/testlot3.png)

Manufacturing Lot 3 has a p-value of 0.04, therefore we reject the null hypothesis. This means Manufacturing Lot 3 is statistically different from from the population mean of 1,500 pounds per square inch.


## Study Design: MechaCar vs Competition

### Metrics

To quantify how "MechaCar" may perform against the competition, a statistical study of metrics that maximize consumer utility can be performed. In Economics, utility represents how much usefulness or enjoyment a consumer can obtain from consumption of a good or service. In this project, the metrics that might affect the utility of a vehicle are:

- Safety Feature Rating: Independent Variable
- Current Price (Selling): Dependent Variable
- Drive Package : Independent Variable
- Engine (Electric, Hybrid, Gasoline / Conventional): Independent Variable
- Resale Value: Independent Variable
- Average Annual Cost of ownership (Maintenance): Independent Variable
- MPG (Gasoline Efficiency): Independent Variable

### The null hypothesis and alternative hypothesis for this proposed study are as follows:

- Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors for its genre.
- Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors for its genre.



### Statistical Tests

A multiple linear regression would be used to determine the factors that have the highest correlation/predictability with the list selling price (dependent variable); which combination has the greatest impact on price (it may be all of them!)


After gathering the necessary data for the metrics listed above, Multiple Linear Regressions would be used to identify the statistically significant variables that affect sales of similar vehicles. The performace of MechaCar in these important categories will be compared to the mean performace of competitors through the analysis of variance (ANOVA) test.

If it is found that MechaCar would have high consumer utility and would perform well when positioned against competing vehicles, it is recommended to manufacture MechaCar. Otherwise, if the null hypothesis is rejected, it is not recommend to manufacture MechaCar.


