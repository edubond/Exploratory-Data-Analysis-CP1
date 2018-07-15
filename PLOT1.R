# plot 1

data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
data1 <- subset(data, Date %in% c ("1/2/2007","2/2/2007"))
png("PLOT1.png", height = 480, width = 480)
hist(data1$Global_active_power, col = "Red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()