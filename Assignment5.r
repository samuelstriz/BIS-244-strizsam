library(tidyverse)

LT <- read.csv("LT History.csv")
view(LT)

frenchWins <- 0
frenchLosses <- 0
americanWins <- 0
americanLosses <- 0
germanWins <- 0
germanLosses <- 0
russianWins <-0
russianLosses <- 0
britishWins <- 0
britishLosses <- 0
swedishWins <- 0
swedishLosses <- 0
bestTank <- ""
kdPerTank <- -1

for (row in 1:nrow(LT)) {
  nationality <- LT[row, "Nationality"]
  wins <- LT[row, "Wins"]
  losses <- LT[row, "Losses"]
  
  print(paste("Wins ", wins, " Losses ", losses, " Nationality ", nationality))
  
  if ((wins/losses) > kdPerTank)
  {
    kdPerTank <- (wins/losses)
    bestTank <- LT[row, "Tank"]
  }
  
  
  if (nationality == "French")
  {
    frenchWins <- wins + frenchWins
    frenchLosses <- losses + frenchLosses
  }
  if (nationality == "American")
  {
    americanWins <- wins + americanWins
    americanLosses <- losses + americanLosses
  }
  if (nationality == "German")
  {
    germanWins <- wins + germanWins
    germanLosses <- losses + germanLosses
  }
  if (nationality == "Russian")
  {
    russianWins <- wins + russianWins
    russianLosses <- losses + russianLosses
  }
  if (nationality == "British")
  {
    britishWins <- wins + britishWins
    britishLosses <- losses + britishLosses
  }
  if (nationality == "Swedish")
  {
    swedishWins <- wins + swedishWins
    swedishLosses <- losses + swedishLosses
  }
}
