#download data
setwd('c:\\DataScience\\ExData_Plotting1')
if(!file.exists('ElectricPowerConsumption')) dir.create('ElectricPowerConsumption')
fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(fileUrl, destfile = './ElectricPowerConsumption/household_power_consumption.zip')
#Extract zip file
unzip('./ElectricPowerConsumption/household_power_consumption.zip', exdir = './ElectricPowerConsumption')


#load data to R
files <- file('./ElectricPowerConsumption/household_power_consumption.txt')
data <- read.table(text = grep("^[1,2]/2/2007",readLines(files),value=TRUE),
                   sep = ';',
                   col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                   na.strings = '?')

#convert the Date and Time variables to Date/Time classes
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))


#save data
save(data, file = './ElectricPowerConsumption/CleanData.RData')