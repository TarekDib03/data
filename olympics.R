library(dplyr)
library(ggplot2)

setwd("/home/hduser/Data")
olympics <- read.csv("olympics.csv", header = T, stringsAsFactors = T)

# Structure of the data frame
str(olympics)

# Transfer year from integer into factor
olympics$Year <- as.factor(as.character(olympics$Year))

# Number 
country <- olympics %>% 
  group_by(Country, Year) %>%
  summarise(Gold=sum(Gold)) %>% 
  arrange(desc(Gold)) %>%
  filter(Country %in% c("China", "Russia", "United States"))


