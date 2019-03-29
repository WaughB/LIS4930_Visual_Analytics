# Brett Waugh
# 18 March 2019
# extraAssignment_2.R
# More visualizations for Extra Assignment data. 

# Libraries required. 
require(readr)
require(ggplot2)

# Loading the data. 
Extra_Assignment_select <- read_csv("LIS4930_Visual_Analytics/data/Extra_Assignment_select.csv", col_types = cols(`Date of manuscript` = col_date(format = "%m/%d/%Y")))

# Total graphs by year. Data seems to suggest that more graphs are being used in scholarly papers. 
ggplot(Extra_Assignment_select, aes(x=Extra_Assignment_select$`Date of manuscript`, y=Extra_Assignment_select$`Number of graphs`)) + 
  geom_line() +
  labs(x = "Time", y = "Number of Graphs", title = "Total Number of Graphs Used in Scholarly Papers (1996-2016)", caption = "based on data from: https://usflearn.instructure.com/courses/1320596/files/75473842/download")

# Linear model look at data the number of graphs used by year. Data seems to suggest that more graphs are being used in scholarly papers. 
ggplot(Extra_Assignment_select, aes(x=Extra_Assignment_select$`Date of manuscript`, y=Extra_Assignment_select$`Number of graphs`)) + 
  geom_smooth() +
  labs(x = "Time", y = "Number of Graphs", title = "Total Number of Graphs Used in Scholarly Papers (1996-2016)", caption = "based on data from: https://usflearn.instructure.com/courses/1320596/files/75473842/download")

# Create a dataframe for the graphs and their associated counts. 
graphs <- data.frame(graphType=c("LineGraph", "Scatter", "QQ", "Box", "Dot", "Bar", "Other"), count=c(Extra_Assignment_select$`Line graph`, Extra_Assignment_select$Scatter, Extra_Assignment_select$`Q-Q`, Extra_Assignment_select$Box, Extra_Assignment_select$Dot, Extra_Assignment_select$Bar, Extra_Assignment_select$Other))

# Create a graph showing the distribution of each graph type. 
ggplot(graphs, aes(x=graphType, y=count, col=graphType)) + 
  geom_boxplot() +
  labs(x = "Graph Type", y = "Number of Graphs", title = "Distribution of Graphs Used (1996-2016)", caption = "based on data from: https://usflearn.instructure.com/courses/1320596/files/75473842/download")

# Create a bar chart for the distribution of the graphs. 
ggplot(graphs, aes(x=graphType, y=count, fill=graphType))+
  geom_bar(width = 1, stat = "identity") +
  labs(x = "Graph Type", y = "Number of Graphs", title = "Comparison of Graph Types Used in Scholarly Papers (1996-2016)", caption = "based on data from: https://usflearn.instructure.com/courses/1320596/files/75473842/download")