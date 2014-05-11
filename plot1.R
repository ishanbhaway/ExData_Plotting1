
household_power_consumption <- read.csv("./household_power_consumption.txt", sep=";",as.is=TRUE)

household_power_consumption$Date<-as.Date(household_power_consumption$Date,format = "%d/%m/%Y")
hpcintr1<-household_power_consumption[(household_power_consumption$Date>= "2007-02-01" & household_power_consumption$Date <= "2007-02-02"), ]

png(filename="plot1.png", height = 480,width = 480)
hist(as.numeric(hpcintr1$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power(in kilowatts)")
dev.off()