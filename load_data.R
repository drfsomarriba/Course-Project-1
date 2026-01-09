# load_data.R
# Purpose: Load and prepare the household power consumption dataset
#          and keep only 2007-02-01 and 2007-02-02.

file_name <- "household_power_consumption.txt"  # change if your file name is different

# Read data
data <- read.table(file_name,
                   header = TRUE,
                   sep = ";",
                   na.strings = "?",
                   stringsAsFactors = FALSE)

# Convert Date to Date class
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Subset to the required dates
sub <- subset(data, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))

# Create a datetime variable
sub$DateTime <- strptime(paste(sub$Date, sub$Time), format = "%Y-%m-%d %H:%M:%S")
