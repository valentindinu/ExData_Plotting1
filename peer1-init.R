## Peer assignment 1 - Exploratory Data Analysis
##      - Initialization code -
##
##  This code reads the data and transforms it to the format
##      that is appropriate for processing (like text to datetime
##      for the date column and time column)
##
## Author - Valentin Dinu

## Initialization
    peer1.headers <- read.csv(file = "data/household_power_consumption.txt",
                       sep=";", header = TRUE, nrows=1) #reading the headers

    peer1.data <- read.csv(file = "data/household_power_consumption.txt",
                       sep=";", header = TRUE, na.strings = "?",
                       skip = 66636, nrows = 2880) #reading the data

    names(peer1.data)  <- names(peer1.headers) #setting the headers
    rm("peer1.headers")

## convert the Date and Time variables to Date/Time classes
    datetime.text  <- paste(as.character(peer1.data$Date), as.character(peer1.data$Time))
    peer1.data$DateTime <- strptime(datetime.text, "%d/%m/%Y %H:%M:%S")
    rm("datetime.text")
    