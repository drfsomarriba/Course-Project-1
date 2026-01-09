# plot3.R
# Purpose: Plot 3 - Energy sub metering over time (Feb 1-2, 2007)

source("load_data.R")

png("plot3.png", width = 480, height = 480)

plot(sub$DateTime, sub$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")

lines(sub$DateTime, sub$Sub_metering_2, col = "red")
lines(sub$DateTime, sub$Sub_metering_3, col = "blue")

legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1)

dev.off()
