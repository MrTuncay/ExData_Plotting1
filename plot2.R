# Peer-graded Assignment: Course Project 1
# Making Plots : plot2.png

# Read text file
# Note that in this dataset missing values are coded as ?
data_hpc <- read.csv("household_power_consumption.txt", na.string="?", sep=";")

# We will only be using data from the dates 2007-02-01 and 2007-02-02
# convert the Date and Time variables to Date/Time classes in R using the strptime()  and as.Date() functions
data_hpc <- data_hpc[(data_hpc$Date=="1/2/2007" | data_hpc$Date=="2/2/2007"),]
data_hpc$DateTime <- as.POSIXct(strptime(paste(data_hpc$Date, data_hpc$Time, sep=" "), format="%d/%m/%Y %H:%M:%S"))

# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
png("plot2.png", width=480, height=480)
plot(data_hpc$DateTime, data_hpc$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
