# This script demonstrates versioning using Git in R Studio.

# Load data
data(mtcars)

# Load tidyverse
library(tidyverse)

# Get average mpg by for each cylinder
mtcars %>% group_by(cyl) %>% summarise(mean_mpg=mean(mpg))

# Look at distribution of mpg by cylinder using box plot
ggplot(mtcars, aes(x=as.factor(cyl), y=mpg))+geom_boxplot()+xlab("number of cylinders")

# Correlation between mpg and quarter mile time
ggplot(mtcars, aes(x=mpg,y=qsec))+geom_point()

# Correlation between displacement and quarter mile time
ggplot(mtcars, aes(x=hp,y=qsec))+geom_point()