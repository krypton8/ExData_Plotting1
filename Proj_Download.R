## Download Data zipped file, extract, and import into R.

fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl, destfile= "household_power_consumption.zip", method="curl")
dateDownloaded = date()

unzip("household_power_consumption.zip")
pwr_cons <- read.table("household_power_consumption.txt",header = TRUE, sep=";")

## Extract Data for the days 1 & 2 Feb 2007

feb07 <- pwr_cons[pwr_cons$Date == "1/2/2007" | pwr_cons$Date == "2/2/2007", ]
