# Loading data
source("loadData.R")

# Changing locale in order to get english day names in plot.
curr_locale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME","English")

# Opening graphics device
png("plot3.png", width = 480, height = 480)

# Plotting parameters
par(bg = "transparent")

# Plotting data
plot(df$Time, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(df$Time, df$Sub_metering_2, col = "red")
lines(df$Time, df$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = c(1,1,1))

# Closing graphics device
dev.off()

# reverting locale change 
Sys.setlocale("LC_TIME",curr_locale)
