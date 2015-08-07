## Set Working Directory
setwd("C:/Users/Bruce/Desktop/EDA")

## Getting full dataset
powerdata <- read.table("./proj1/household_power_consumption.txt", header=TRUE, sep=";")
powerdata$Date <- as.Date(powerdata$Date, format="%d/%m/%Y")

## Subsetting the data
data <- subset(powerdata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(powerdata)

## Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Converting to Numeric Values
data$Global_active_power <- as.numeric(as.character(data$Global_active_power))
data$Global_reactive_power <- as.numeric(as.character(data$Global_reactive_power))
data$Voltage <- as.numeric(as.character(data$Voltage))
data$Sub_metering_1 <- as.numeric(as.character(data$Sub_metering_1))
data$Sub_metering_2 <- as.numeric(as.character(data$Sub_metering_2))
data$Sub_metering_3 <- as.numeric(as.character(data$Sub_metering_3))