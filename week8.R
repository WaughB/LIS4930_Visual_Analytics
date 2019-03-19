# Brett Waugh
# 22 February 2019
# week8.R
# Correlation Analysis and ggplot2

# Necessary library.
library(ggplot2)

# Look at the data.
mtcars

summary(mtcars)

# Linear regression for number of cylinders and miles per gallon. 
ggplot(mtcars, aes(x=cyl, y=mpg)) + geom_point() + geom_smooth(level=0.95, method='lm')
