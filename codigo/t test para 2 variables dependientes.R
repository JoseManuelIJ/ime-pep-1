
#t test para 2 variables dependientes.

datos<-iris

#H0: las medias no son diferentes.

#HA: las medias si son diferentes.

#condiciones de aceptacion

#1: normalidad

hist(datos$Petal.Length)

hist(datos$Petal.Width)

#nivel de significancia

alpha<-0.05

#si es significativo, se puede rechazar H0 y aceptar HA. Si no, no se puede rechazar H0.

t.test(x = datos$Petal.Length, y = datos$Petal.Width, alternative = "two.sided", mu = 0, paired = TRUE, conf.level = 0.95)
