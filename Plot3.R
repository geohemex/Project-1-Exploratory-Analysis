#PLOT 3
#Data Arrangement
dir<-"C:/Users/Geovanni/Desktop/Coursera/Exploratory/household_power_consumption.txt"
data<-read.table(dir, header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
subset<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower<-as.numeric(subset$Global_active_power)
days<-strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
sub_met1<-as.numeric(subset$Sub_metering_1)
sub_met2<-as.numeric(subset$Sub_metering_2)
sub_met3<-as.numeric(subset$Sub_metering_3)

#Plotting
png("plot3.png", width=480, height=480)
plot(days,sub_met1, type="l", ylab="Energy sub metering", xlab=" ")
lines(days, sub_met2, type="l", col=2)
lines(days, sub_met3, type="l", col=4)
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
