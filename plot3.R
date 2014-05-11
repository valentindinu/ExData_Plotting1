## Peer assignment 1 - Exploratory Data Analysis
##      - Plot 3 -
##  
##  This code loads the data and creates a plot to
##  "plot3.png" in the current folder. The plot
##  shows the data for 3 measured variables: 
##  "SUb metering 1", "Sub metering 2" and "Sub metering 3",
##  all on the same graphic.
##  
##  Author - Valentin Dinu

## Initialize the data
    source("peer1-init.R")

    png("plot3.png") #the default size is already 480x480
    
    plot(peer1.data$DateTime, peer1.data$Sub_metering_1,
         xlab = "",
         ylab = "Energy sub metering", type = "l")
    
    lines(peer1.data$DateTime, peer1.data$Sub_metering_2,
          col = "red")
    
    lines(peer1.data$DateTime, peer1.data$Sub_metering_3,
          col = "blue")
    
    legend("topright", names(peer1.data)[7:9], col=c("black", "red", "blue"), lty=1)
    
    dev.off()
