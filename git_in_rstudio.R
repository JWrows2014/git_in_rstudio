# This script demonstrates versioning using Git in R Studio.

# Load data
data(mtcars)

# Load tidyverse
library(tidyverse)

# Get average mpg by for each cylinder
mtcars %>% group_by(cyl) %>% summarise(mean_mpg=mean(mpg))

# Look at distribution of mpg by cylinder using box plot
ggplot(mtcars, aes(x=as.factor(cyl), y=mpg))+geom_boxplot()+xlab("number of cylinders")
