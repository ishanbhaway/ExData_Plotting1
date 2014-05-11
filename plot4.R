household_power_consumption <- read.csv("./household_power_consumption.txt", sep=";",as.is=TRUE)
household_power_consumption$Date<-as.Date(household_power_consumption$Date,format = "%d/%m/%Y")
hpcintr1<-household_power_consumption[(household_power_consumption$Date>= "2007-02-01" & household_power_consumption$Date <= "2007-02-02"), ]
x<-strptime(paste(hpcintr1$Date,hpcintr1$Time, sep=" "), format = "%Y-%m-%d %H:%M:%S")

png(filename="plot4.png", height = 480,width = 480)
par(mfrow=c(2,2),cex=0.65)
with(hpcintr1,{
  ##for  first quadrant
  plot(x,as.numeric(hpcintr1$Global_active_power),type="l",xlab = "",ylab="Global Active Power")

  ##for second quadrant
  plot(x,as.numeric(hpcintr1$Voltage), type="l", xlab = "datetime",ylab="Voltage")
  
  ##for thrid quadrant
  
  plot(x,as.numeric(hpcintr1$Sub_metering_1), type="l", xlab = "", ylab="Energy Sub Metering", bg="transparent")
  lines(x,as.numeric(hpcintr1$Sub_metering_2), col="red")
  lines(x,as.numeric(hpcintr1$Sub_metering_3), col="blue")
  legend("topright", cex=0.65, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),bty="n", bg="transparent")
  
  ##for fourth quadrant
  plot(x,as.numeric(hpcintr1$Global_reactive_power),type="l", xlab = "datetime",ylab="Global_reactive_power")
}
)
dev.off()
