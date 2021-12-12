
#Use the library() function to load the dplyr package.
library(dplyr)

#Use the library() function to load the tidyverse  package.``
library(tidyverse)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#Perform linear regression using the lm() 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg)

#Using the summary() function, 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg))


#import and read in the Suspension_Coil.csv file as a table.
susp_coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)


#creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- susp_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 

#4. Create a lot_summary2 dataframe using the group_by() and the summarize() functions to group each manufacturing lot.
lot_summary2 <-  susp_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')


#box plot: PSI 
plt1<-ggplot(susp_coil, aes(y=PSI))#import dataset into ggplot2
plt1+geom_boxplot()#add boxplot

#box plot :PSI each indicdiual lot 
plt2 <-ggplot(susp_coil,aes(x=Manufacturing_Lot,y=PSI))#import dataset into ggplot2
plt2+geom_boxplot()


### CHALLENGE 15: DELIVERABLE 3

#Use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(susp_coil$PSI,mu=1500)

#Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(susp_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(susp_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(susp_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)





