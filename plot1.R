library(sqldf)
library(lubridate)
library(dplyr)

#load data set; read only dates 1-2 feb 2007 from the file
df <- tbl_df(read.csv2.sql("household_power_consumption.txt"
                           , "select * from file where [Date] IN ('1/2/2007', '2/2/2007')"
                           , header=TRUE
                           , na="?"))

#prepping a data fram with the a DateTime column 
df$Date <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %T")
df <- rename(df, Datetime = Date)
df <- select(df, -Time) # Remove the time column

#ready for plotting
png("plot1.png",width = 504, height = 504, type = "quartz")
hist(df$Global_active_power, 
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")
dev.off()

