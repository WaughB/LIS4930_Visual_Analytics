# Brett Waugh
# 18 March 2019
# week11.R
# Professor Edward R. Tufte, Data Visualization
# Data taken from Professor Tufte's website: http://motioninsocial.com/tufte/#introduction

# The code from the website, as is. 
library(ggplot2)
library(ggExtra)
library(ggthemes)
p <- ggplot(faithful, aes(waiting, eruptions)) + geom_point() + theme_tufte(ticks=F) +
  theme(axis.title=element_blank(), axis.text=element_blank())
ggMarginal(p, type = "boxplot", size=10, fill="transparent")