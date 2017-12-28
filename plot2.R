# Loading data
source("loadData.R")

# Changing locale in order to get english day names in plot.
curr_locale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME","English")

# Opening graphics device
png("plot2.png", width = 480, height = 480)

# Plotting parameters
par(bg = "transparent")

# Plotting data
plot(df$Time, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# Closing graphics device
dev.off()

# reverting locale change 
Sys.setlocale("LC_TIME",curr_locale)
