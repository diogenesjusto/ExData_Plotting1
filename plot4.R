plot4 <- function() {

  ##Reading file containing only 2 days of metering
  ##data was prepared first  
  tab <- read.csv("HH_P_C_1_2_feb2007.txt", sep=";")
  ##Creating 1 columns to numerate x axis
  tab["newcol2"]<-1:nrow(tab)

  ##  Set up plotting in two rows and two columns, plotting along rows first.
  par( mfrow = c( 2, 2 ) )
  
    ##Plot1 - similar to Plot2.R
    plot(tab$newcol2, tab$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex.lab=0.8, cex.axis=0.8, xaxt="n")
    axis(1, at=1, labels=c("Thu"), cex.axis=0.8)
    axis(1, at=1440, labels=c("Fri"), cex.axis=0.8)
    axis(1, at=2880, labels=c("Sat"), cex.axis=0.8)
  
    ##Plot2
    plot(tab$newcol2, tab$Voltage, type="l", xlab="datetime" , ylab="Voltage", cex.lab=0.8, cex.axis=0.8, xaxt="n")
    axis(1, at=1, labels=c("Thu"), cex.axis=0.8)
    axis(1, at=1440, labels=c("Fri"), cex.axis=0.8)
    axis(1, at=2880, labels=c("Sat"), cex.axis=0.8)
  
    ##Plot3 - Similar to Plot3.R
    plot(tab$newcol2, tab$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", , cex.lab=0.8, cex.axis=0.8, xaxt="n")
    points(tab$newcol2, tab$Sub_metering_2, type="l", col="red")
    points(tab$newcol2, tab$Sub_metering_3, type="l", col="blue")
    leg.txt <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    legend("topright", pch = c("-","-","-"), col = c("black", "red", "blue"), legend = leg.txt, bty = "n", cex=0.7)
    axis(1, at=1, labels=c("Thu"), cex.axis=0.8)
    axis(1, at=1440, labels=c("Fri"), cex.axis=0.8)
    axis(1, at=2880, labels=c("Sat"), cex.axis=0.8)
    
    ##Plot4
    plot(tab$newcol2, tab$Global_reactive_power, type="l", xlab="datetime" , ylab="Global_reactive_power", cex.lab=0.8, cex.axis=0.8, xaxt="n")
    axis(1, at=1, labels=c("Thu"), cex.axis=0.8)
    axis(1, at=1440, labels=c("Fri"), cex.axis=0.8)
    axis(1, at=2880, labels=c("Sat"), cex.axis=0.8)
    
  
  dev.copy(png, file="plot4.png")
  dev.off()
}