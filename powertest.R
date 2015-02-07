power$Date = as.Date(power$Date,format = "%d/%m/%Y")
power.plot = subset(power, Date >= "2007-02-01" & Date <= "2007-02-02")
#power.plot$Time = strptime(power.plot$Time, format = "%H:%M:%S")
