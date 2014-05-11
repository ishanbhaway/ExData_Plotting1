household_power_consumption <- read.csv("./household_power_consumption.txt", sep=";",as.is=TRUE)
household_power_consumption$Date<-as.Date(household_power_consumption$Date,format = "%d/%m/%Y")
hpcintr1<-household_power_consumption[(household_power_consumption$Date>= "2007-02-01" & household_power_consumption$Date <= "2007-02-02"), ]
x<-strptime(paste(hpcintr1$Date,hpcintr1$Time, sep=" "), format = "%Y-%m-%d %H:%M:%S")


png(filename="plot3.png", height = 480,width = 480)
plot(x,as.numeric(hpcintr1$Sub_metering_1), type="l", xlab = "", ylab="Energy Sub Metering", bg="transparent")
lines(x,as.numeric(hpcintr1$Sub_metering_2), col="red")
lines(x,as.numeric(hpcintr1$Sub_metering_3), col="blue")
legend("topright",cex=0.7, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()