household_power_consumption <- read.csv("C:/Users/ISHAN/Desktop/rcode/Exploratory Subjects/household_power_consumption.txt", sep=";",as.is=TRUE)

household_power_consumption$Date<-as.Date(household_power_consumption$Date,format = "%d/%m/%Y")
hpcintr1<-household_power_consumption[(household_power_consumption$Date>= "2007-02-01" & household_power_consumption$Date <= "2007-02-02"), ]
png(filename="plot2.png", height = 480,width = 480)
plot(strptime(paste(hpcintr1$Date,hpcintr1$Time, sep=" "), format = "%Y-%m-%d %H:%M:%S"),as.numeric(hpcintr1$Global_active_power), type="l", xlab = "", ylab="Global Active Power(kilowatts)")
dev.off()