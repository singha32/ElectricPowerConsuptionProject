### read in .txt file
data <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings='?')
date1<-as.date("2007-02-01")
date2<-as.date("2007-02-02")
data_subset <- data[data$Date >= date1 & data$Date <= date2,] 

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
  with(data_subset, {
    plot(Global_active_power~dateTime, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
    plot(Voltage~dateTime, type="l", 
         ylab="Voltage (volt)", xlab="")
    plot(Sub_metering_1~dateTime, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~dateTime,col='Red')
    lines(Sub_metering_3~dateTime,col='Blue')
    legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(Global_reactive_power~dateTime, type="l", 
         ylab="Global Rective Power (kilowatts)",xlab="")
  })