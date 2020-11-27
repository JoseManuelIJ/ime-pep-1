
# Se tiene una "tabla de dos vías" (o 2x2), que registra las
# frecuencias observadas para las posibles combinaciones de dos
# variables categóricas.
# Para esto existe un procedimiento chi-cuadrado, que se le conoce de forma 
# general como Prueba chi-cuadrado de Asociación, aunque a veces también se 
# distinguen dos pruebas distintas: la Prueba chi-cuadrado de Homogeneidad y la 
# Prueba chi-cuadrado de Independencia. La diferencia es más bien conceptual, 
# no matemática, y tiene relación con cómo se miren las variables y las
# poblaciones involucradas en el problema.

# H0:Los grupos no presentan diferencias.
# HA:Los grupos presentan diferencias.

# Para calcular chi-cuadrado, se tiene que chi-cuadrado = Z1^2 + Z2^2 + ... 
# + Zn^2 o chi-cuadrado = ((x1 - v1)^2)/v1 + ((x2 - v2)^2)/v2 + ... + 
# ((xn - vn)^2)/vn, donde Zi corresponde a la puntuación Z del grupo i, xi es 
# es punto estimado del grupo i, vi es el valor nulo o esperado del grupo i y 
# n es la cantidad de grupos.

# También se deben calcular los grados de libertad, df, donde para un factor
# es df = n - 1 y para 2 factores es df = (f - 1)*(c - 1), con f como
# número de filas y c como número de columnas.

# Una forma de obtener el valor-p es con la función:

pchisq(X, df, lower.tail = FALSE)

# Donde X corresponde de valor de chi-cuadrado, df es el grado de libertad.
# Otra forma de obtener el valor-p es con la función:

chisq.test(x = tabla)

# Donde tabla corresponde a la tabla de datos a la que desea aplicar
# chi-cuadrado. En caso de pruebas de bondad, se tiene que:

chisq.test(x = tabla, p = prop, rescale.p = TRUE)

# Donde tabla es el vector o matriz de datos a trabajar y prop son las
# proporciones esperadas.