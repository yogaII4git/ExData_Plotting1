#Assignment 1 plot 2

#Load file and filter data first

alldata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
mydata = alldata[which(as.Date(alldata[,'Date'], "%d/%m/%Y") == "2007-02-01" | as.Date(alldata[,'Date'], "%d/%m/%Y") == "2007-02-02"), ]

#Now lets do some plotting
plot(mydata[, 3], type = "l", ylab = "Global Active Power (kilowatts)", xaxt = "n", xlab="")
#Here I am hardcoding the weekday info. Ideally, I would like to write util functions to do such
axis(1, at=c(1, 1441, 2881), lab = c("Thu","Fri","Sat"))


#Now copy to png
dev.copy(png, 'plot2.png')
dev.off()