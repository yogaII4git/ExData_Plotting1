#Assignment 1 plot 3

#Load file and filter data first

alldata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
mydata = alldata[which(as.Date(alldata[,'Date'], "%d/%m/%Y") == "2007-02-01" | as.Date(alldata[,'Date'], "%d/%m/%Y") == "2007-02-02"), ]

#Now lets do some plotting
plot(mydata[, 7], type = "l", ylab = "Energy sub metering", xaxt = "n", xlab="")
lines(mydata[, 8], col="red")
lines(mydata[, 9], col="blue")

#Here I am hardcoding the weekday info. Ideally, I would like to write util functions to do such
axis(1, at=c(1, 1441, 2881), lab = c("Thu","Fri","Sat"))

#Now add legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1, 1), lwd = c(1.5, 1.5, 1.5), col = c("black", "red", "blue"))


#Now copy to png
dev.copy(png, 'plot3.png')
dev.off()