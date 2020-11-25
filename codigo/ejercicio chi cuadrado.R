#H0: no existe diferencia entre el rendimiento de los algoritmos
#HA: existe diferencia entre el rendimiento de los algoritmos

#condiciones:
#Tamaño de la muestra es mayor que 5 en cada caso
#Indepencia de los datos se ve presente dado que 

fila1 <- c(3511, 1749, 1818)
fila2 <- c(1489,751,682)
tabla <- as.table(rbind(fila1, fila2))
dimnames(tabla) = list("numero busquedas" = c("Una busqueda","Más de una busqueda"),
                       algoritmo = c("actual","nuevo 1", "nuevo 2"))
tabla

chi_test<-chisq.test(x = tabla)
if(chi_test$p.value < 0.05)
{
  cat("Los algoritmos son diferentes")
}else
{
  cat("Los algortimos son similares")
}
