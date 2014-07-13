plot2 <- function() {

  ##Reading file containing only 2 days of metering
  ##data was prepared first
  tab <- read.csv("HH_P_C_1_2_feb2007.txt", sep=";")
  ##Creating 1 columns to numerate x axis
  tab["newcol2"]<-1:nrow(tab)

  ##Plotting "l"ine typ, with labels, sizing text font with cex and hiding x axis labels with xaxt
  plot(tab$newcol2, tab$Global_active_power, type="l", xlab="", ylab="Global Active Power(kilowatts)", cex.lab=0.8, cex.axis=0.8, xaxt = "n")

  ##Plotting axis
  axis(1, at=1, labels=c("Thu"), cex.axis=0.8)
  axis(1, at=1440, labels=c("Fri"), cex.axis=0.8)
  axis(1, at=2880, labels=c("Sat"), cex.axis=0.8)
  dev.copy(png, file="plot2.png")
  dev.off()
}