## This function will create a plot comparing Global Active Power in KW to frequency
mydata <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")
mydata1 <- subset(mydata, as.Date(mydata$Date,format='%d/%m/%Y') == as.Date('01/02/2007', format='%d/%m/%Y'))
mydata2 <- subset(mydata, as.Date(mydata$Date,format='%d/%m/%Y') == as.Date('02/02/2007', format='%d/%m/%Y'))
dtfrm <- data.frame()
dtfrm <- rbind(dtfrm, mydata1)
dtfrm <- rbind(dtfrm, mydata2)
png(filename = "plot1.png", width = 480, height = 480)
par(mar= c(4, 4, 2, 1))
chartz <- hist(as.numeric(as.character(dtfrm$Global_active_power)), main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
chartz
plot(chartz, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()


