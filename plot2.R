#Plot 2


#Load Clean Data
setwd('C:\\DataScience\\ExData_Plotting1\\ElectricPowerConsumption')
load('./CleanData.RData')


#open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot2.png', width = 480, height = 480, units='px')


#plot graph
Sys.setlocale(category = "LC_ALL", locale = "ENGLISH")
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')


#close device
dev.off()