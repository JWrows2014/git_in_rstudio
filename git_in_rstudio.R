# This script demonstrates versioning using Git in R Studio.

# Load data
data(mtcars)

# Load tidyverse
library(tidyverse)

# Get average mpg by for each cylinder
mtcars %>% group_by(cyl) %>% summarise(mean_mpg=mean(mpg))

# Correlation between displacement and quarter mile time
ggplot(mtcars, aes(x=hp,y=qsec))+geom_point()

# Get average quarter mile time by cylinder
mtcars %>% group_by(cyl) %>% summarise(mean_qsec=mean(qsec))
