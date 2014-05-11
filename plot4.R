## Peer assignment 1 - Exploratory Data Analysis
##      - Plot 4 -
##
##  This code loads the data and outputs a png file ("plot4.png")
##  which contains 4 graphics for the 2007/02/01 - 2007/02/02
##  time frame. One is for the "Global Active Power", one for the
##  Voltage, one for the "Energy sub metering" (combined for all)
##  and one for the "Global_relative_power".
##
##  Author - Valentin Dinu

## Initialize the data
    source("peer1-init.R")

    png("plot4.png") #the default size is already 480x480
    
    par(mfcol = c(2,2)) 
    
    # the graphic from row 1, column 1
    plot(peer1.data$DateTime, peer1.data$Global_active_power,
         xlab = "",
         ylab = "Global Active Power", type = "l")
    
    # the graphic from row 2, column 1
    plot(peer1.data$DateTime, peer1.data$Sub_metering_1,
         xlab = "",
         ylab = "Energy sub metering", type = "l")
    
    lines(peer1.data$DateTime, peer1.data$Sub_metering_2,
          col = "red")
    
    lines(peer1.data$DateTime, peer1.data$Sub_metering_3,
          col = "blue")
    
    legend("topright", names(peer1.data)[7:9], col=c("black", "red", "blue"), lty=1, bty = "n")
    
    
    # the graphic from row 1, column 2
    plot(peer1.data$DateTime, peer1.data$Voltage, 
         xlab = "datetime",
         ylab = "Voltage", type = "l")
    
    # the graphic from row 2, column 2
    with(peer1.data, plot(DateTime, Global_reactive_power, 
         xlab = "datetime",
         type = "l"))
    
    dev.off()
    