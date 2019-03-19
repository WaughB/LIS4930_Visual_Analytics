# Brett Waugh
# 17 February 2019
# Visual Distribution Analysis
# week7.R

library(ggplot2)

ggplot(mtcars, aes(x=mpg, y=hp, col=cyl)) + geom_point()