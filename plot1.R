setwd("C:/Users/Sofia Canencio/Documents/Coursera/Data Science/Exploratory Data Analysis")
File <- "household_power_consumption.txt"
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
GlobalActivePower <- as.numeric(Data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()