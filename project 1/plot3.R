png("plot3.png", width = 480, height = 480)
# plot the chart
plot(data2$timestamp, data2$Sub_metering_1, type="n", main = NULL, xlab = "", ylab = "Energy Sub Metering")
lines(data2$timestamp, data2$Sub_metering_1, col = "black")
lines(data2$timestamp, data2$Sub_metering_2, col = "red")
lines(data2$timestamp, data2$Sub_metering_3, col = "blue")
#add legends
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ), lty=c(1,1),col = c("black","red","blue"))
dev.off()