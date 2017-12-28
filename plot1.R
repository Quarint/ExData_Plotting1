# Loading data
source("loadData.R")

# Opening graphics device
png("plot1.png", width = 480, height = 480)

# Plotting parameters
par(bg = "transparent")

# Plotting data
hist(df$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

# Closing graphics device
dev.off()