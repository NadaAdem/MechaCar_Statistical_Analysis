
#Use the library() function to load the dplyr package.
library(dplyr)

#Use the library() function to load the tidyverse  package.``
library(tidyverse)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#Perform linear regression using the lm() function pass in all six variables of the dataframe
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg)

#Using the summary() function, 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg))