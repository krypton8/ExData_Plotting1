## Download Data zipped file, extract, and import into R.

fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl, destfile= "household_power_consumption.zip", method="curl")
dateDownloaded = date()

unzip("household_power_consumption.zip")

