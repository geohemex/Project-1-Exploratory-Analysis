#PLOT 4
#Data Arrangement
dir<-"C:/Users/Geovanni/Desktop/Coursera/Exploratory/household_power_consumption.txt"
data<-read.table(dir, header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
subset<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower<-as.numeric(subset$Global_active_power)
days<-strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
sub_met1<-as.numeric(subset$Sub_metering_1)
sub_met2<-as.numeric(subset$Sub_metering_2)
sub_met3<-as.numeric(subset$Sub_metering_3)
Global_reactive_power<-as.numeric(subset$Global_reactive_power)
Voltage<-as.numeric(subset$Voltage)

#Plotting
png("plot4.png", width=480, height=480)
par(mfrow= c(2,2))
plot(days, globalActivePower, type="l", xlab=" ", ylab="Global Active Power", cex=0.2)
plot(days, Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(days,sub_met1, type="l", ylab="Energy sub metering", xlab=" ")
lines(days, sub_met2, type="l", col=2)
lines(days, sub_met3, type="l", col=4)
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=, lwd=2.5, col=c("black", "red", "blue"), bty="n")
plot(days, Global_reactive_power, type="l", xlab="datetime", ylab="Voltage")
dev.off()