#libreria para graficos con gg

library(ggpubr)

datos<-iris

#z-test

#H0: ?? = media (desviacion standar poblacional conocida)

#ejemplo:
# Los autores comentaron que el ALD medio estaría alrededor de 1.0.
# ¿Los datos soportan esta afirmación?

#condiciones de aceptacion

#1: datos aleatorios

#2:n>30

#3:Simetria

tamaño.muestra <- length(datos$Petal.Length)

tamaño.muestra > 30

#3: muestras simetricas



#Se revisan si los datos son simetricos

hist(datos$Petal.Length)

#se asigna un valor para alpha
alpha <- 0.025


#se plantea la pregunta de hipotesis

#en el ejemplo se dira si la media es cercana a 1

# Las hipótesis serían:
# H0: u = 1  
# HA: u <> 1 

u = 1

#se obtiene el valor de z

media.muestra <- mean(datos$Petal.Length)

desv.est.muestra <- sd(datos$Petal.Length)

z <- (media.muestra - u) / (desv.est.muestra / sqrt(tamaño.muestra))

p.valor <- pnorm(z)

#en el caso del ejemplo, al decir que es distinto de 1 significa que es de 2 colas, por lo que se multiplica por 2

p.valor <- p.valor*2

#si es verdadero, se puede rechazar H0 y aceptar HA. Si no, no se puede rechazar H0.

p.valor < alpha


#forma resumida

library(TeachingDemos)

z.test(datos$Petal.Length, mu = u, sd = desv.est.muestra,
       alternative = "two.sided", conf.level = 1 - alpha)

