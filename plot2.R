### read in .txt file
data <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings='?')
date1<-as.date("2007-02-01")
date2<-as.date("2007-02-02")
data_subset <- data[data$Date >= date1 & data$Date <= date2,] 

## Combine Date and Time column
dateTime <- paste(data_subset$Date, data_subset$Time)
  
## Name the vector
dateTime <- setNames(dateTime, "DateTime")
    
## Add DateTime column
data_subset <- cbind(dateTime, data_subset)
  
## Format dateTime Column
data_subset$dateTime <- as.POSIXct(dateTime)
 
plot(data_subset$Global_active_power~data_subset$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
