### read in .txt file
data <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings='?')
date1<-as.date("2007-02-01")
date2<-as.date("2007-02-02")
data_subset <- data[data$Date >= date1 & data$Date <= date2,] 

with(data_subset, {
    plot(Sub_metering_1~dateTime, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~dateTime,col='Red')
    lines(Sub_metering_3~dateTime,col='Blue')
  })
  legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
