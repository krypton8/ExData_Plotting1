
## load lubirdate library for date functions
library(lubridate)

## Extract date & time from feb data. Convert to chr list and paste date & time.
## Convert chr date-time to date class variables using lubridate f/n dmy_hms().
dt <- levels(feb07$Date)[feb07$Date]
time <- levels(feb07$Time)[feb07$Time]
a1 <- paste(dt, time)
a1 <- a1[!is.na(a1)]
dt_time <- dmy_hms(a1)
## Extract & convert Energy sub-metering 1, 2, & 3 data to a numeric lists
submtr1 <- as.numeric(levels(feb07$Sub_metering_1))[feb07$Sub_metering_1]
submtr2 <- as.numeric(levels(feb07$Sub_metering_2))[feb07$Sub_metering_2]
submtr3 <- feb07$Sub_metering_3

## Create plot
plot(dt_time, submtr1, type="l", xlab="", ylab="Energy sub metering")
lines(dt_time, submtr2, col="red")
lines(dt_time, submtr3, col="blue")
legend("topright", lwd=2, col=c("black", "red", "blue"), \
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), cex=0.5)
## Create png file
dev.copy(png, file="plot3.png")
dev.off()