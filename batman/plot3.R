Datos=read.table("proy1.txt",sep=";",header=TRUE,na.strings="?")
names(Datos)
Prueba=(Datos$Date=="1/2/2007"|Datos$Date=="2/2/2007")
Dat=Datos[Prueba,]
dates<-as.character(Dat[,1])
time<-as.character(Dat[,2])
x<-paste(dates,time)
day<-strptime(x,"%d/%m/%Y %H:%M:%S")

plot(day,Dat[,7],type="n",xlab="",ylab="Energy sub metering")
lines(day,Dat[,7],col="black")
lines(day,Dat[,8],col="red")
lines(day,Dat[,9],col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

png(file="plot3.png")
plot(day,Dat[,7],type="n",xlab="",ylab="Energy sub metering")
lines(day,Dat[,7],col="black")
lines(day,Dat[,8],col="red")
lines(day,Dat[,9],col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()

