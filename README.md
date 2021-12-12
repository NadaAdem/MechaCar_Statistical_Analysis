# MechaCar Analysis - AutosRUs using R
## Project Overview
The purpose of this project is to identify which variables can predict the MPG of a car prototype, "MechaCar", for the fictional company AutosRUs. Summary statistics are generated and t-tests are performed for individual manufacturing lots. Finally, a study is designed to compare MechaCar to the competition. R and tidyverse are used to accomplish this analysis.



## Linear Regression to Predict MPG

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/lm.png )
![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/summary.png )

 mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)
 
 From the above output ,the following conclusions can be made:
 
 - Vehicle Length and Ground Clearance are statistically significant. These variables provide a non-random amount of variance to the MPG values in the dataset.
 
 - The high significance level of the intercept implies that might be other factors that are significant to MPG. Since all available variables in this dataset were already passed in this regression, it can be inferred that additional research and data are necessary to uncover any unknown significant variables.
 

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

- Manufacturing Lot 1 T-Test

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/testlot1.png)

- Manufacturing Lot 2 T-Test

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/testlot2.png)

- Manufacturing Lot 3 T-Test

![image](https://github.com/NadaAdem/MechaCar_Statistical_Analysis/blob/main/Resources/testlot3.png)


## Study Design: MechaCar vs Competition







