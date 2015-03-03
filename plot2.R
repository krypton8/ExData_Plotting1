## Extract Data for the days 1 & 2 Feb 2007

feb07 <- pwr_cons[pwr_cons$Date == "1/2/2007" | pwr_cons$Date == "2/2/2007", ]

## load lubirdate library for date functions
library(lubridate)

## Extract date & time from feb data. Convert to chr list and paste date & time.
## Convert chr date-time to date class variables using lubridate f/n dmy_hms().
dt <- levels(feb07$Date)[feb07$Date]
time <- levels(feb07$Time)[feb07$Time]
a1 <- paste(dt, time)
a1 <- a1[!is.na(a1)]
dt_time <- dmy_hms(a1)
## Extract & convert Global Active Power data to a numeric list
actv_pwr <- as.numeric(levels(feb07$Global_active_power))[feb07$Global_active_power]
actv_pwr <- actv_pwr[!is.na(actv_pwr)]
## Create plot
plot(dt_time, actv_pwr, type="l", xlab="", ylab="Global Active Power (kilowatts)")
## Create png file
dev.copy(png, file="plot2.png")
dev.off()