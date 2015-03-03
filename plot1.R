## Extract Data for the days 1 & 2 Feb 2007

feb07 <- pwr_cons[pwr_cons$Date == "1/2/2007" | pwr_cons$Date == "2/2/2007", ]

## Extract Global_active_power data and convert to numeric class for plotting
actv_pwr <- as.numeric(levels(feb07$Global_active_power))[feb07$Global_active_power]
actv_pwr <- actv_pwr[!is.na(actv_pwr)]
hist(actv_pwr, breaks = 12, col="red" ,border="black", main="Global Active Power",\
     xlab = "Global Active Power (kilowatts)", ylab= "Frequency")
dev.copy(png, file="plot1.png")
dev.off()
