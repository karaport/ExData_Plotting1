
data <- read.table(
  file.choose(), header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
subSetData
subSetData$Global_active_power<- as.numeric(subSetData$Global_active_power)
hist(subSetData$Global_active_power,col = "red",xlab = "Global Active Power(kilowatts)",
     main = "Global Active Power")
