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
tierIIWins <- 0
tierIILosses <- 0
tierIIIWins <- 0
tierIIILosses <- 0
tierIVWins <- 0
tierIVLosses <- 0
tierVWins <- 0
tierVLosses <- 0
tierVIWins <- 0
tierVILosses <- 0
tierVIIWins <- 0
tierVIILosses <- 0
tierVIIIWins <- 0
tierVIIILosses <- 0
tierIXWins <- 0
tierIXLosses <- 0
tierXWins <- 0
tierXLosses <- 0



for (row in 1:nrow(LT)) {
  nationality <- LT[row, "Nationality"]
  tier <- LT[row, "Tier"]
  wins <- LT[row, "Wins"]
  losses <- LT[row, "Losses"]
  
  ## Best Tank
  if ((wins/losses) > kdPerTank)
  {
    kdPerTank <- (wins/losses)
    bestTank <- LT[row, "Tank"]
  }
  
  ## Best Tier
  
  if (tier == "II")
  {
    tierIIWins <- tierIIWins + wins
    tierIILosses <- tierIILosses + losses
  }
  if (tier == "III")
  {
    tierIIIWins <- tierIIIWins + wins
    tierIIILosses <- tierIIILosses + losses
  }
  if (tier == "IV")
  {
    tierIVWins <- tierIVWins + wins
    tierIVLosses <- tierIVLosses + losses
  }
  if (tier == "V")
  {
    tierVWins <- tierVWins + wins
    tierVLosses <- tierVLosses + losses
  }
  if (tier == "VI")
  {
    tierVIWins <- tierVIWins + wins
    tierVILosses <- tierVILosses + losses
  }
  if (tier == "VII")
  {
    tierVIIWins <- tierVIIWins + wins
    tierVIILosses <- tierVIILosses + losses
  }
  if (tier == "VIII")
  {
    tierVIIIWins <- tierVIIIWins + wins
    tierVIIILosses <- tierVIIILosses + losses
  }
  if (tier == "IX")
  {
    tierIXWins <- tierIXWins + wins
    tierIXLosses <- tierIXLosses + losses
  }
  if (tier == "X")
  {
    tierXWins <- tierXWins + wins
    tierXLosses <- tierXLosses + losses
  }
  
  ##Best nationality
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

frenchRatio <- frenchWins / frenchLosses
americanRatio <- americanWins / americanLosses
germanRatio <- germanWins / germanLosses
russainRatio <- russianWins / russianLosses
britishRatio <- britishWins / britishLosses
swedishRatio <- swedishWins / swedishLosses
tierIIRatio <- tierIIWins / tierIILosses
tierIIIRatio <- tierIIIWins / tierIIILosses
tierIVRatio <- tierIVWins / tierIVLosses
tierVRatio <- tierVWins / tierVLosses
tierVIRatio <- tierVIWins / tierVILosses
tierVIIRatio <- tierVIIWins / tierVIILosses
tierVIIIRatio <- tierVIIIWins / tierVIIILosses
tierIXRatio <- tierIXWins / tierIXLosses
tierXRatio <- tierXWins / tierXLosses



