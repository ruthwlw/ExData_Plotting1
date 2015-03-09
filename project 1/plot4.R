png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
# plot chart 1
plot(data2$timestamp, data2$Global_active_power, main =NULL, xlab = "", ylab = "Global Active Power (kilowatts)", type="l")

#plot chart 2
plot(data2$timestamp, data2$Voltage, main =NULL, xlab = "datetime", ylab = "Voltage", type="l")

#plot chart 3
plot(data2$timestamp, data2$Sub_metering_1, type="n", main = NULL, xlab = "", ylab = "Energy Sub Metering")
lines(data2$timestamp, data2$Sub_metering_1, col = "black")
lines(data2$timestamp, data2$Sub_metering_2, col = "red")
lines(data2$timestamp, data2$Sub_metering_3, col = "blue")
#add legends
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ), lty=c(1,1),col = c("black","red","blue"))

#plot chart 4
plot(data2$timestamp, data2$GGlobal_reactive_power, main =NULL, xlab = "datetime", ylab = "Global_reactive_power", type="l")

dev.off()