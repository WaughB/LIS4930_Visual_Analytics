# Brett Waugh
# 17 March 2019
# congressDemo.R
# US Congress Demographics.

# Load required libraries.
require(readr)
require(ggplot2)

####### Load data #######
# Data can be found at: https://theunitedstates.io/congress-legislators/legislators-current.csv 
US_Legislators_2019 <- read_csv("~/Documents/LIS4930_VA/US_Legislators_2019.csv")

####### Tranform the dataset into a dataframe ######
df <- as.data.frame(US_Legislators_2019)

####### Some useful variables ######
# Gender. Female or Male. 
men <- df[which (df$gender=='M'),]
women <- df[which (df$gender=='F'),]

# Party. Democrat, Independant, or Republican.
dem <- df[which (df$party=='Democrat'),]
inde <- df[which (df$party=='Independant'),]
repub <- df[which (df$party=='Republican'),]

# Party. Represenative or Senator.
house <- df[which (df$type=='rep'),]
senate <- df[which (df$type=='sen'),]

##### Party Numbers #####
# Number of Congressman by party. 
ggplot(df, aes(x=party)) + 
  geom_histogram(stat="count") +
  labs(x = "Party", y = "Number of Congressman", title = "Number of Congressman by Party", caption = "based on data from: https://theunitedstates.io/congress-legislators/legislators-current.csv ")

# Number of Senators by party. 
ggplot(senate, aes(x=party)) + 
  geom_histogram(stat="count") +
  labs(x = "Party", y = "Number of Senators", title = "Number of Senators by Party", caption = "based on data from: https://theunitedstates.io/congress-legislators/legislators-current.csv ")

# Number of Representatives by party. 
ggplot(house, aes(x=party)) + 
  geom_histogram(stat="count") +
  labs(x = "Party", y = "Number of Representatives", title = "Number of Representatives by Party", caption = "based on data from: https://theunitedstates.io/congress-legislators/legislators-current.csv ")

###### Age Information #######
# Oldest Congressman.
print("----- Oldest Congressman -----")
df[which.min(df$birthday),c("full_name", "state", "birthday", "party")]
round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(df[which.min(df$birthday),]$birthday), unit="weeks"))/52.25)

# Oldest Senator.
print("----- Oldest Senator -----")
senate[which.min(senate$birthday),c("full_name", "state", "birthday", "party")]
round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(senate[which.min(senate$birthday),]$birthday), unit="weeks"))/52.25)

# Oldest Representative.
print("----- Oldest Representative -----")
house[which.min(house$birthday),c("full_name", "state", "birthday", "party")]
round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(house[which.min(house$birthday),]$birthday), unit="weeks"))/52.25)

# Youngest Congressman.
print("----- Youngest Congressman -----")
df[which.max(df$birthday),c("full_name", "state", "birthday", "party")]
round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(df[which.max(df$birthday),]$birthday), unit="weeks"))/52.25)

# Youngest Senator.
print("----- Youngest Senator -----")
senate[which.max(senate$birthday),c("full_name", "state", "birthday", "party")]
round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(senate[which.max(senate$birthday),]$birthday), unit="weeks"))/52.25)

# Youngest Representative.
print("----- Youngest Repsentative -----")
house[which.max(house$birthday),c("full_name", "state", "birthday", "party")]
round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(house[which.max(house$birthday),]$birthday), unit="weeks"))/52.25)

########################################################

# Average age of Congressman.
cat(paste("Average age of Congress:"), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(mean(df$birthday)), unit="weeks"))/52.25), "\n")

# Average age of Senator.
cat(paste("Average age of Senate:"), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(mean(senate$birthday)), unit="weeks"))/52.25), "\n")

# Average age of Representative.
cat(paste("Average age of the House:"), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(mean(house$birthday)), unit="weeks"))/52.25), "\n")

########################################################

# Average age of a female Congressman.
cat(paste("Average age of a female Congressman."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(mean(women$birthday)), unit="weeks"))/52.25), "\n")

# Average age of a female Senator.
cat(paste("Average age of a female Senator."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(mean(women$birthday[which(women$type=="sen")])), unit="weeks"))/52.25), "\n")

# Average age of a female Representative.
cat(paste("Average age of a female Representative."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(mean(women$birthday[which(women$type=="rep")])), unit="weeks"))/52.25), "\n")

# Average age of a male Congressman.
cat(paste("Average age of a male Congressman."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(mean(men$birthday)), unit="weeks"))/52.25), "\n")

# Average age of a male Senator.
cat(paste("Average age of a male Senator."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(mean(men$birthday[which(men$type=="sen")])), unit="weeks"))/52.25), "\n")

# Average age of a male Representative. 
cat(paste("Average age of a male Representative."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(mean(men$birthday[which(men$type=="rep")])), unit="weeks"))/52.25), "\n")

########################################################

# Median age of a female Congressman.
cat(paste("Average age of a female Congressman."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(median(women$birthday)), unit="weeks"))/52.25), "\n")

# Median age of a female Senator.
cat(paste("Average age of a female Senator."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(median(women$birthday[which(women$type=="sen")])), unit="weeks"))/52.25), "\n")

# Median age of a female Representative.
cat(paste("Average age of a female Representative."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(median(women$birthday[which(women$type=="rep")])), unit="weeks"))/52.25), "\n")

# Median age of a male Congressman.
cat(paste("Average age of a male Congressman."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(median(men$birthday)), unit="weeks"))/52.25), "\n")

# Median age of a male Senator.
cat(paste("Average age of a male Senator."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(median(men$birthday[which(men$type=="sen")])), unit="weeks"))/52.25), "\n")

# Median age of a male Representative. 
cat(paste("Average age of a male Representative."), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(median(men$birthday[which(men$type=="rep")])), unit="weeks"))/52.25), "\n")

########################################################

# Median age of Congress.
cat(paste("Median age of Congress"), +
            round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(median(df$birthday)), unit="weeks"))/52.25), "\n")

# Median age of Senator.
cat(paste("Median age of the Senate"), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(median(senate$birthday)), unit="weeks"))/52.25), "\n")

# Median age of Representative.
cat(paste("Median age of the House"), +
      round(as.numeric(difftime(as.Date(Sys.Date()), as.Date(median(house$birthday)), unit="weeks"))/52.25), "\n")

# Median age of US citizen. Data provided by: https://www.cia.gov/library/publications/the-world-factbook/geos/us.html 
cat("The median age of all US citizens is: 38.2 years.\n")

# Histogram of age by gender. 
ggplot(df, aes(x=birthday, fill=gender)) + geom_histogram(alpha=0.2, position="identity", bins=100) +
  labs(x = "Year", y = "Number of Congressman", col = "Party", title = "Years Congressman were Born by Gender", caption = "based on data from: https://theunitedstates.io/congress-legislators/legislators-current.csv ")

################ Gender information ##############
# Number of women in Congress. 
cat(paste("Number of women in Congress", nrow(women)), "\n")

# Number of women in Senate.
cat(paste("Number of women in the Senate."), nrow(women[which(women$type=="rep"),]), "\n")

# Number of women in House.
cat(paste("Number of women in the House."), nrow(women[which(women$type=="sen"),]), "\n")

# Number of men in Congress. 
cat(paste("Number of men in Congress", nrow(men)), "\n")

# Number of men in Senate.
cat(paste("Number of men in the Senate."), nrow(men[which(men$type=="rep"),]), "\n")

# Number of men in House.
cat(paste("Number of men in the House."), nrow(men[which(men$type=="sen"),]), "\n")

########################################################

# Percentage of women in Congress.
womenInCongress <- nrow(women) / nrow(df)
cat(paste("Percentage of women in Congress:", round(womenInCongress*100)), "%", sep="","\n")

# Percentage of women in the Senate.
womenInSenate <- nrow(women[which(women$type=="sen"),]) / nrow(senate)
cat(paste("Percentage of women in the Senate:", round(womenInSenate*100)), "%", sep="", "\n")

# Percentage of women in the House. 
womenInHouse <- nrow(women[which(women$type=="rep"),]) / nrow(house)
cat(paste("Percentage of women in the House:", round(womenInHouse*100)), "%", sep="", "\n")

# Percentage of women in United States in 2010. Data from: https://www.census.gov/prod/cen2010/briefs/c2010br-03.pdf 
cat("Percentage of women in the United States: 50.8% \n")

# Percentage of men in Congress.
menInCongress <- nrow(men)/nrow(df)
cat(paste("Percentage of men in Congress:", round(menInCongress*100)), "%", sep="", "\n")

# Percentage of men in the Senate.
menInSenate <- nrow(men[which(men$type=="sen"),]) / nrow(senate)
cat(paste("Percentage of men in the Senate:", round(menInSenate*100)), "%", sep="", "\n")

# Percentage of men in the House. 
menInHouse <- nrow(men[which(men$type=="rep"),]) / nrow(house)
cat(paste("Percentage of men in the House:", round(menInHouse*100)), "%", sep="", "\n")

# Percentage of men in United States in 2010. Data from: https://www.census.gov/prod/cen2010/briefs/c2010br-03.pdf 
cat("Percentage of men in the United States: 49.2% \n")

########################################################

# Distribution of genders in Congress. 
ggplot(df, aes(x = gender, fill= gender)) + geom_histogram(stat = "count") +
  labs(x = "Gender", y = "Number of Congressman", col = "Gender", title = "Gender Distribution in Congress", caption = "based on data from: https://theunitedstates.io/congress-legislators/legislators-current.csv ")

# Distribution of genders in Senate.
ggplot(senate, aes(x = gender, fill= gender)) + geom_histogram(stat = "count") +
  labs(x = "Gender", y = "Number of Senators", col = "Gender", title = "Gender Distribution of the Senate", caption = "based on data from: https://theunitedstates.io/congress-legislators/legislators-current.csv ")

# Distribution of genders in House. 
ggplot(house, aes(x = gender, fill= gender)) + geom_histogram(stat = "count") +
  labs(x = "Gender", y = "Number of Representatives", col = "Gender", title = "Gender Distribution of the House", caption = "based on data from: https://theunitedstates.io/congress-legislators/legislators-current.csv ")

########################################################

# Distribution of genders for Democratic Party. 
ggplot(dem, aes(x = gender, fill= gender)) + geom_histogram(stat = "count") +
  labs(x = "Gender", y = "Number of Representatives", title = "Gender Distribution for the Democratic Party", caption = "based on data from: https://theunitedstates.io/congress-legislators/legislators-current.csv ")

# Distribution of genders for Republican Party. 
ggplot(repub, aes(x = gender, fill= gender)) + geom_histogram(stat = "count") +
  labs(x = "Gender", y = "Number of Representatives", title = "Gender Distribution for the Democratic Party", caption = "based on data from: https://theunitedstates.io/congress-legislators/legislators-current.csv ")




