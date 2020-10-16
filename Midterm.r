#Sam Striz

#install.packages("gapminder")
library(tidyverse)
library(scales)
library(gapminder)
library(dplyr)


covidData <- read.csv("data.csv")
Country7 <- c("Canada", "France", "United_Kingdom", "United_States_of_America", "Italy", "Germany", "Japan")
countries <- covidData[covidData$countriesAndTerritories %in% Country7,]
countries <- mutate(countries, realDate = (day + month * 30))

view(countries)

p <- ggplot(data = countries, 
            mapping = aes(x = realDate,
                             y = cases,
                             color=countriesAndTerritories))
p + geom_line() + scale_x_continuous(breaks=c(60.0, 150.0, 210.0, 300.0), labels = c("Feb", "May", "Jul", "Oct")) +
    labs(title = "G7 COVID-19 Case Counts", x = "", y = "New Cases per Day",
       subtitle = "by Sam Striz as of 2020-16-03",
       caption = "Data: NY ECDC Times")

