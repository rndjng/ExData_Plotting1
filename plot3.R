# assumed that data was read in df using plot1.R

#ready for plotting
png("plot3.png",width = 504, height = 504, type = "quartz")

plot(df$Datetime, df$Sub_metering_1, 
     type = "l",
     ylab = "Energy sub metering", 
     xlab = "")

points(df$Datetime, df$Sub_metering_2, col = "red", type = "l")
points(df$Datetime, df$Sub_metering_3, col = "blue", type = "l")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty = c(1,1,1),
       col = c("black","red","blue") )

dev.off()
