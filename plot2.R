# assumed that data was read in df using plot1.R

#ready for plotting
png("plot2.png",width = 504, height = 504, type = "quartz")

plot(df$Datetime, df$Global_active_power, 
     type = "l",
     ylab = "Global Active Power (kilowatts)", 
     xlab = "")

dev.off()
