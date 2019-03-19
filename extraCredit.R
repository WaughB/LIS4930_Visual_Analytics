# Brett Waugh
# 15 March 2019
# extraCredit.R
# Extra Credit assignment

# Required libraries
require(readr)
require(ggplot2)

# Load the data.
extraCredit <- read_csv("Documents/LIS4930_VA/extraCredit.csv")

# Create the graph. 
ggplot(extraCredit, aes(x=extraCredit$`Sub-Domains`)) + 
  geom_point(aes(y = extraCredit$`First place`, color = "First")) + 
  geom_point(aes(y = extraCredit$`Second place`, color = "Second")) +
  geom_point(aes(y = extraCredit$`Third place`, color = "Third")) + 
  labs(x = "Sub-Domains", y = "Amount used (%)", color = "Ranking", title = "Rankings of Graphs used in Sub-Domains", caption = "based on data from: https://usflearn.instructure.com/courses/1320596/files/75473842/download")

