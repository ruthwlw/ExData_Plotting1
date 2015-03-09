hhpc = read.table("household_power_consumption.txt", stringsAsFactors=F, sep = ";", header = TRUE, fill = TRUE)
# convert date, time into R formats
hhpc$Date <- as.Date(hhpc$Date, format= "%d/%m/%Y")
#subset data from  2007-02-01 and 2007-02-02
data <- subset(hhpc, Date>="2007-02-01" & Date <= "2007-02-02" )
data2 <- within(data, { timestamp=format(as.POSIXct(paste(data$Date, data$Time)), "%d/%m/%Y %H:%M:%S") })
data2$timestamp <- strptime(data2$timestamp, format ="%d/%m/%Y %H:%M:%S" )
head(data2)
class(data2$timestamp)
# convert values into numericals
data2$Sub_metering_1 <- as.numeric(data2$Sub_metering_1)
data2$Sub_metering_2 <- as.numeric(data2$Sub_metering_2)
data2$Sub_metering_3 <- as.numeric(data2$Sub_metering_3)
class(data2$Sub_metering_1)
class(data2$Sub_metering_2)
class(data2$Sub_metering_3)

data2$Voltage <- as.numeric(data2$Voltage)
class(data2$Voltage)

data2$Global_reactive_power <- as.numeric(data2$Global_reactive_power)
class(data2$Global_reactive_power)

