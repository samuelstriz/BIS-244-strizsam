#BIS 244
#Sam Striz
#######################################################################################

library(tidyverse)

#read frame
usCounties<-read_csv("covid-19-data/us-counties.csv")

view(usCounties)

pa<-usCounties %>% filter(state=="Pennsylvania")

county<-pa %>% filter(county=="Lehigh")

view(county)

plot(x=county$date, y=county$cases, xlab="Date", ylab="Infections",main="Covid-19 Deaths", col="green")

points(x=county$date, y=county$deaths, col="blue",lty=2)
#view(county)
legend("topRight", legend = c("Cases = Green", "Deaths = Blue"))
