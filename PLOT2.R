# plot 2

data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
data1 <- subset(data, Date %in% c ("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(data1$Date, data1$Time)
data1$Datetime <- as.POSIXct(datetime)

png("PLOT2.png", height = 480, width = 480)
plot(data1$Datetime, data1$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "Datetime")
dev.off()