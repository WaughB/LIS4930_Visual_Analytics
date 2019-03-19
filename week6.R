# Brett Waugh
# 13 February 2019
# week6.R
# Introduction to Open Source R - R Studio

# Basic Pie graph
mypie <- c(40,30,20,10)
mypie

pie(mypie)

# Better pie graph
mycolors <- c("red", "blue", "green")
pie(mypie, col=mycolors)

# Basic Bar chart
x <- c(40, 30, 20, 10)
x

barplot(x)

# Bar chart with labels
names(x) <- c("Red", "Blue", "Green", "Brown")
x

barplot(x)

# Bar chart with labels and colors
mycolors <- c("red", "blue", "green", "brown")

barplot(x, col=mycolors)

# Basic iris bar chart
avgSLen <- mean(iris$Sepal.Length)
avgSWid <- mean(iris$Sepal.Width)
avgPLen <- mean(iris$Petal.Length)
avgPWid <- mean(iris$Petal.Width)

averageIris <- c(avgSLen, avgSWid, avgPLen, avgPWid)

irisLabels <- c("Sepal Length", "Sepal Width", "Petal Length", "Petal Width")

names(averageIris) <- c(irisLabels)

irisColors <- c("blue", "green", "red", "yellow")

barplot(averageIris, col=irisColors)

# More advanced Iris dot plot
ggplot(iris, aes(x=iris$Sepal.Width, y=iris$Sepal.Length, col=iris$Species)) + geom_point()


# Final Iris line graph 
ggplot(iris, aes(x=iris$Sepal.Width, y=iris$Sepal.Length, col=iris$Species)) + geom_point()

