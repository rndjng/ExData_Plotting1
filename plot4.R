# assumed that data was read in df using plot1.R

#ready for plotting
png("plot4.png",width = 504, height = 504, type = "quartz")
par(mfrow=c(2,2))
par()
#plot topleft
plot(df$Datetime, df$Global_active_power, 
     type = "l",
     ylab = "Global Active Power", 
     xlab = "")

#plot topright
plot(df$Datetime, df$Voltage, 
     type = "l",
     ylab = "Voltage", 
     xlab = "datetime")

#plot bottomleft
plot(df$Datetime, df$Sub_metering_1, 
     type = "l",
     ylab = "Energy sub metering", 
     xlab = "")

points(df$Datetime, df$Sub_metering_2, col = "red", type = "l")
points(df$Datetime, df$Sub_metering_3, col = "blue", type = "l")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty = c(1,1,1),
       col = c("black","red","blue"),
       bty = "n")

#plot bottomright
plot(df$Datetime, df$Global_reactive_power, 
     type = "l",
     ylab = "Global Reactive Power", 
     xlab = "datetime")


dev.off()
