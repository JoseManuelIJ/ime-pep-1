
#chi cuadrado

#sirve para ver independencia y homogeneidad

#condiciones de aceptacion

#1: La muestra debe ser tomadas al azar 
#2: Variables medidas deben ser independientes
#3: Tamaño de la muestra < 10% población.

#H0: Las variables son independientes por lo que una variable no varía entre los distintos niveles de la otra variable.

#Ha: Las variables son dependientes, una variable varía entre los distintos niveles de la otra variable.

fila1 <- c(81, 103, 147)
fila2 <- c(359, 326, 277)
tabla <- as.table(rbind(fila1, fila2))
dimnames(tabla) = list(Peso = c("Obeso","No obeso"),
                       Estado_civil = c("soltero","pareja","casado"))
tabla

chisq.test(x = tabla)


#para homogeneidad ej:

cat("H0: Chile obtiene en la prueba Pisa un rendimiento parecido a\n")
cat("    los países que tienen un PIB similar\n")
cat("HA: El rendimiento de Chile en la prueba Pisa no tiene el mismo\n")
cat("    comportamiento que los países que tienen un PIB similar\n")




#test de bondad de ajuste
frec.2010 <- c(387, 163, 408)
prop.2007 <- c(38, 14, 43) / 100
x.cuadrado.test.2007 <- chisq.test(x = frec.2010, p = prop.2007, rescale.p = TRUE)


#ejemplo de analisis
# Por lo tanto, los datos sugieren que la muestra podría venir de una
# población con las mismas creencias que en 2007 (con 8,5% de proba-
# bilidad) al considerar 95% confianza.