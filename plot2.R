## Peer assignment 1 - Exploratory Data Analysis
##      - Plot 2 -
##
##  This code calls the part for loading the data and then
##  it creates a plot for the "2007/02/01' - "2007/02/02"
##  interval for each minute of the Global Active Power
##  (measured in kilowatts). The plot is output to the
##  "peer2.png" file in the current folder.
##  
##  Author - Valentin Dinu

## Initialize the data
    source("peer1-init.R")

    png("plot2.png") #the default size is already 480x480
    
    # use type="l" for lines
    plot(peer1.data$DateTime, peer1.data$Global_active_power,
         xlab = "",
         ylab = "Global Active Power (kilowatts)", type = "l")
    
    dev.off()