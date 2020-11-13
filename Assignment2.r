#Assignment 2
#BIS 244
#Sam Striz

library(tidyverse)

us_states <- read_csv("covid-19-data/us-states.csv")
view(us_states)
paData <- us_states %>% filter(state=="Pennsylvania")
view(paData)


paData <- mutate(paData, adj_deaths = deaths)
w <- length(paData$date)

for (i in 1:w)
{
    if (as.character(paData$date[i])=="2020-04-21")
    {
      paData$adj_deaths[i] <- (paData$deaths[i] - 282)
    }
    else if (as.character(paData$date[i])=="2020-04-22")
    {
      paData$adj_deaths[i] <- (paData$deaths[i] - 297)
    }
  }

sum(paData$adj_deaths)

