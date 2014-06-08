#Assignment 1 plot 1

#Load file and filter data first

alldata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
mydata = alldata[which(as.Date(mydata[,'Date'], "%d/%m/%Y") == "2007-02-01" | as.Date(mydata[,'Date'], "%d/%m/%Y") == "2007-02-02"), ]

#Now lets do some plotting
hist(test[, 3], main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")

#Now copy to png
dev.copy(png, 'plot1.png')
dev.off()