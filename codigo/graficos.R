library(ggpubr)

datos<-iris


#grafico de puntos
plot(datos$Petal.Length)

plot(datos$Petal.Width)

#grafico de dispercion
plot(datos$Petal.Length,datos$Petal.Width,main="grafico de dispercion",xlab="largo del petalo", ylab = "ancho del petalo",col="blue")


#diagrama de caja
ggboxplot(datos, x="Species", y="Petal.Length")
#https://statutorial534846024.wordpress.com/2018/11/24/cuartil-en-r/
cuartiles<-quantile(datos$Petal.Length)
IQR(datos$Petal.Length)



#cantidad de columnas -> bins=numero
gghistogram(datos,x="Petal.Length", add="mean")



#ver distribucion normal

ggqqplot(datos, x="Petal.Length")


#data por grupos

library(dplyr)
group_by(datos, Species) %>%
summarise(
  count=n(),
  mean=mean(Petal.Length,na.rm=TRUE),
  sd=sd(Petal.Length,na.rm=TRUE)
)

