# plot1.R
# Purpose: Plot 1 - Histogram of Global Active Power (Feb 1-2, 2007)

source("load_data.R")

png("plot1.png", width = 480, height = 480)

hist(sub$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()
