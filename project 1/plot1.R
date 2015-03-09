png("plot1.png", width = 480, height = 480)
#create plot 1 histogram of Global active power
data2$Global_active_power <- as.numeric(data2$Global_active_power)
class(data2$Global_active_power)
#plot histogram
hist(data2$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()