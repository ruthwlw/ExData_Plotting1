png("plot2.png", width = 480, height = 480)
plot(data2$timestamp, data2$Global_active_power, main =NULL, xlab = "", ylab = "Global Active Power (kilowatts)", type="l")
dev.off()