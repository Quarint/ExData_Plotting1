library(dplyr)

# Loading data

df <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?") %>%
   mutate(Time = as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")) %>%
   filter(Time >= as.POSIXct("2007/2/1 00:00:00"), Time < as.POSIXct("2007/2/3 00:00:00"))