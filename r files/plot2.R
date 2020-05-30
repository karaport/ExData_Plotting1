data <- read.table(file.choose(), header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
subSetData$Global_active_power <- as.numeric(subSetData$Global_active_power)
plot(x=datetime,
     y=subSetData$Global_active_power, 
     type="l", 
     xlab="",
     ylab="Global Active Power (kilowatts)")
?plot
