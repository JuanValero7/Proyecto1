Datos=read.table("proy1.txt",sep=";",header=TRUE,na.strings="?")
names(Datos)
Prueba=(Datos$Date=="1/2/2007"|Datos$Date=="2/2/2007")
Dat=Datos[Prueba,]
dates<-as.character(Dat[,1])
time<-as.character(Dat[,2])
x<-paste(dates,time)
day<-strptime(x,"%d/%m/%Y %H:%M:%S")

plot(day,Dat[,3],xlab="",ylab="Global Active Power (kilowatts)",type="l")
png(file="plot2.png")
with(Dat,plot(day,Dat[,3],xlab="",ylab="Global Active Power (kilowatts)",type="l"))
dev.off()
