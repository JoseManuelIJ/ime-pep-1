
#poder: la capacidad de elegir de manera correcta.

#ejemplo:
  
#     Si el ingeniero piensa rechazar la hipótesis nula si la muestra
#     presenta una media menor a 168 [kgf/mm^2] o mayor a 172 [kgf/mm^2],
#     pero la verdadera dureza media de la línea de producción fuera 173
#     [kgf/mm^2], ¿cuál sería la probabilidad de que el ingeniero, que
#     obviamente no conoce este dato, tome la decisión correcta de
#     rechazar la hipótesis nula en favor de la hipótesis alternativa?


u0 <- 173

o <- 10

tamaño.muestra <- 25

#se obtiene el error estandar

error.estandar <- o / sqrt(tamaño.muestra)

poder.inferior <- pnorm(168, mean = u0, sd = error.estandar, lower.tail = TRUE)

poder.superior <- pnorm(172, mean = u0, sd = error.estandar, lower.tail = FALSE)

poder <- poder.inferior + poder.superior

poder
