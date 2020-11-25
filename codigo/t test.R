
#t test

datos<- iris$Sepal.Length

#H0: o = media (desviacion standar poblacional desconocida)

#condiciones de aceptacion

# 1: Observaciones son independientes

# 2: Observaciones tienen aproximadamente una distribución normal

d <- data.frame(Permanecia = muestra)

hist(datos)

#se define alpha

alpha <- 0.01

# H0: ?? = 9,75 s
# HA: ?? > 9,75 s

u <- 9.75

#se obtiene el tamaño de la muestra

tamaño.muestra <- length(datos)

#se obtienen los grados de libertad de la muestra

grados.de.libertad <- tamaño.muestra - 1

#se obtiene la media muestral

media.muestra <- mean(datos)

#se obtiene la desviacion estandar de la muestra

desv.est.muestra <- sd(datos)

# Implementando t test

t <- (media.muestra - u) / (desv.est.muestra / sqrt(tamaño.muestra))

p.valor <- ifelse(t < 0, pt(t, grados.de.libertad),
                  pt(t, grados.de.libertad, lower.tail = FALSE)
)

#si es verdadero, se puede rechazar H0 y aceptar HA. Si no, no se puede rechazar H0.

p.valor < alpha

#forma resumida

t.test(datos, mu = u, alternative = "greater", conf.level = 1 - alpha)
