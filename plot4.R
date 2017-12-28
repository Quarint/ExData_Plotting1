# Loading data
source("loadData.R")

# Changing locale in order to get english day names in plot.
curr_locale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME","English")

# Opening graphics device
png("plot4.png", width = 480, height = 480)

# Plotting parameters
par(bg = "transparent", mfcol = c(2,2))


# Plotting data

# First Plot
plot(df$Time, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# Second Plot
plot(df$Time, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(df$Time, df$Sub_metering_2, col = "red")
lines(df$Time, df$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = c(1,1,1))

# Third Plot
plot(df$Time, df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# Fourth plot
plot(df$Time, df$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
# axis(2, at = seq(0.0, 0.5, by = 0.1), labels = c("0.0", "0.1", "0.2", "0.3", "0.4", "0.5"))

# Closing graphics device
dev.off()

# reverting locale change 
Sys.setlocale("LC_TIME",curr_locale)
