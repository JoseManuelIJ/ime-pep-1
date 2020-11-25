
#t test para 2 variables independientes

datos.1 <- iris$Petal.Length

datos.2 <- iris$Petal.Width
datos<-iris

#H0: las medias no son diferentes.

#HA: las medias si son diferentes.

#condiciones de aceptacion

#1: independencia

#2: normalidad

hist(datos.1)

hist(datos.2)

#si es significativo entonces no se comporta de forma normal
shapiro.test(datos.1)


#igualdad de varianza

#si es significativo, significa que las varianzas son distintas.

fligner.test(Petal.Length ~ Petal.Width, data = datos)

#nivel de significancia

alpha<-0.05

#si es significativo, se puede rechazar H0 y aceptar HA. Si no, no se puede rechazar H0.

t.test(datos.1,datos.2, mu = 0, alternative = "greater", conf.level = 1 - alpha)
