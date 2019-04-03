# Brett Waugh
# 2 April 2019
# week13.R
# Animations in R

# Required libraries
require(animation)
require(ggplot2)

# Look at data. 
sunspot.year

# Create dataframe and adjust the labels. 
df <- as.data.frame(sunspot.year)
df$Year <- seq(from=1700, to=1988)
names(df) <- c("Sunspot", "Year")

# Start of animation. 
saveGIF({
  for (i in 1:289) 
    {
    ani.options(interval=.01)
    itdf <- df[1:i,]
    plot(x=itdf$Year, y=itdf$Sunspot, xlim = c(1700, 1988), ylim = c(0,200), pch =18, main="Sunspots through the Years", sub = "1700 to 1988")
    }
  })