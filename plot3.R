plot3 <- function() {
  
  ##Reading file containing only 2 days of metering
  ##data was prepared first
  tab <- read.csv("HH_P_C_1_2_feb2007.txt", sep=";")
  ####Creating 1 columns to numerate x axis
  tab["newcol2"]<-1:nrow(tab)
  
  ##Plotting "l"ine typ, with labels, sizing text font with cex and hiding x axis labels with xaxt
  plot(tab$newcol2, tab$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", cex.lab=0.8, cex.axis=0.8, xaxt="n")
  
  ##Plotting second and third data series
  points(tab$newcol2, tab$Sub_metering_2, type="l", col="red")
  points(tab$newcol2, tab$Sub_metering_3, type="l", col="blue")
  
  ##Plotting legend
  leg.txt <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  legend("topright", pch = c("-","-","-"), col = c("black", "red", "blue"), legend = leg.txt, cex=0.8)
  
  #Plotting 3 points on x axis
  axis(1, at=1, labels=c("Thu"), cex.axis=0.8)
  axis(1, at=1440, labels=c("Fri"), cex.axis=0.8)
  axis(1, at=2880, labels=c("Sat"), cex.axis=0.8)
  
  dev.copy(png, file="plot3.png")
  dev.off()
}