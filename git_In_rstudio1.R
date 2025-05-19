data("ToothGrowth")
library(tidyverse)
ggplot(ToothGrowth, aes(x=as.factor(dose), y=len, color=supp))+geom_boxplot()
