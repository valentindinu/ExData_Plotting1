## Peer assignment 1 - Exploratory Data Analysis
##      - Plot 1 -
##
##  This code calls the initialization part that reads the data and
##      then it creates the first plot. This plot is a histogram of
##      the Global Active Power.
##
## Author - Valentin Dinu

## Initialize the data
    source("peer1-init.R")

    png("plot1.png") #the default size is already 480x480
    
            
    hist(x = peer1.data$Global_active_power, col = "red", main="Global Active Power",
         xlab = "Global Active Power (kilowatts)")
    
    dev.off()
