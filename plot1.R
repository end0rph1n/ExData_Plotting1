#Plot 1


#Load Clean Data
setwd('C:\\DataScience\\ExData_Plotting1\\ElectricPowerConsumption')
load('./CleanData.RData')


#open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot1.png', width = 480, height = 480, units='px')


#plot graph
with(data, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))


#close device
dev.off()