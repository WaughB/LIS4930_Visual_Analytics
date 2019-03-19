# Brett Waugh
# 11 March 2019
# week10.R
# Time Series and Visualization

# Required libraries. 
require(ggplot2)

# Look at data. 
nhtemp

# Convert to dataframe and add column names. 
df <- data.frame(seq(1912, 1971), nhtemp)

colnames(df) <- c("Year", "Temperature")

# Plot the graph. 
ggplot(df, aes(x=Year, y=Temperature)) + 
  geom_point() + 
  geom_line() +
  geom_smooth(method='lm')