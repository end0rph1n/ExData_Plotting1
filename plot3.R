#Plot 3


#Load Clean Data
setwd('C:\\DataScience\\ExData_Plotting1\\ElectricPowerConsumption')
load('./CleanData.RData')


#open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot3.png', width = 480, height = 480, units='px')


#plot graph
Sys.setlocale(category = "LC_ALL", locale = "ENGLISH")
plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(data$DateTime, data$Sub_metering_2, col = 'red')
lines(data$DateTime, data$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'),
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)


#close device
dev.off()