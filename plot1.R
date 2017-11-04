### read in .txt file
data <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings='?')
date1<-as.date("2007-02-01")
date2<-as.date("2007-02-02")
data_subset <- data[data$Date >= date1 & data$Date <= date2,] 
hist(data_subset$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency")
