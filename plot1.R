# Loading the Data
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

# Creating PNG file
png(file = "plot1.png", bg = "transparent")

# Getting date and time
datetime <- strptime(paste(data$Date,as.character(data$Time)),"%Y-%m-%d %H:%M:%S")

# plot 1
hist(as.numeric(as.character(data$Global_active_power)),
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()