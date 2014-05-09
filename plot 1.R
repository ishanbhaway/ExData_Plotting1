
household_power_consumption <- read.csv("C:/Users/ISHAN/Desktop/rcode/Exploratory Subjects/household_power_consumption.txt", sep=";",as.is=TRUE)

household_power_consumption$Date<-as.Date(household_power_consumption$Date,format = "%d/%m/%Y")
hpcintr1<-household_power_consumption[(household_power_consumption$Date>= "2007-02-01" & household_power_consumption$Date <= "2007-02-02"), ]

hist(as.numeric(hpcintr1$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power(in kilowatts)")
