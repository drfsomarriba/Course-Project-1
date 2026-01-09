# plot4.R
# Purpose: Plot 4 - 2x2 panel of plots (Feb 1-2, 2007)

source("load_data.R")

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

# 1) Global Active Power
plot(sub$DateTime, sub$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power")

# 2) Voltage
plot(sub$DateTime, sub$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

# 3) Sub metering
plot(sub$DateTime, sub$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
lines(sub$DateTime, sub$Sub_metering_2, col = "red")
lines(sub$DateTime, sub$Sub_metering_3, col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1,
       bty = "n")  # no box around legend

# 4) Global Reactive Power
plot(sub$DateTime, sub$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global Reactive Power")

dev.off()
