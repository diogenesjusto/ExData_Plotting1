plot1 <- function() {

  ##Reading file containing only 2 days of metering
  ##data was prepared first
  tab <- read.csv("HH_P_C_1_2_feb2007.txt", sep=";")
  
  ##Creating histogram for Plot1
  hist(tab$Global_active_power,col='red',main = "Global Active Power", xlab="Global Active Power(kilowatts)", cex.lab=0.8, cex.axis=0.8)
  dev.copy(png, file="plot1.png")
  dev.off()
}