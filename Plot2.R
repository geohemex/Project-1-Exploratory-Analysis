#PLOT 2
#Data Arrangement
dir<-"C:/Users/Geovanni/Desktop/Coursera/Exploratory/household_power_consumption.txt"
data<-read.table(dir, header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
subset<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower<-as.numeric(subset$Global_active_power)
days<-strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


#Plotting 2
png("plot2.png", width=480, height=480)
plot(days, globalActivePower, type="l", xlab=" ", ylab="Global Active Power (kilowatts)")
dev.off()