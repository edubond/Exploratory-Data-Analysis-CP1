# plot 3

data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
data1 <- subset(data, Date %in% c ("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(data1$Date, data1$Time)
data1$Datetime <- as.POSIXct(datetime)


png("PLOT3.png", height = 480, width = 480)
plot(data1$Datetime, data1$Sub_metering_1, type = "l", ylab = "Energy Submetering", xlab = "Datetime")
lines(data1$Datetime, data1$Sub_metering_2, type="l", col="red")
lines(data1$Datetime, data1$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1, lwd = 2)
dev.off()