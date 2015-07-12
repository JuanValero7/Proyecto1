Datos=read.table("proy1.txt",sep=";",header=TRUE,na.strings="?")
names(Datos)
Prueba=(Datos$Date=="1/2/2007"|Datos$Date=="2/2/2007")
Dat=Datos[Prueba,]
dates<-as.character(Dat[,1])
time<-as.character(Dat[,2])
x<-paste(dates,time)
day<-strptime(x,"%d/%m/%Y %H:%M:%S")

hist(Dat[,3],xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")
png(file="plot1.png")
with(Dat,hist(Dat[,3],xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red"))
dev.off()
