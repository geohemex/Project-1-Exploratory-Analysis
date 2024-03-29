#PLOT 1
#Data Arrangement
dir<-"C:/Users/Geovanni/Desktop/Coursera/Exploratory/household_power_consumption.txt"
data<-read.table(dir, header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
subset<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower<-as.numeric(subset$Global_active_power)

#Plotting
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power",  xlab="Global Active Power (kilowatts)")
dev.off()