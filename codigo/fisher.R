
#fisher

#es para ver asociacion entre 2 variables cualitativas (en muestras pequeñas)

#Ho: Las variables son independientes por lo que una variable no varía entre los distintos niveles de la otra variable.

#Ha: Las variables son dependientes, una variable varía entre los distintos niveles de la otra variable.

#condiciones de aceptacion

#1: Muestreo aleatorio.

#2: Tamaño de la muestra < 10% población.

#3: Cada observación contribuye únicamente a uno de los niveles.

datos <- data.frame( sujeto = c("No alérgico", "No alérgico", "No alérgico",
                                "No alérgico", "alérgico", "No alérgico",
                                "No alérgico", "alérgico", "alérgico",
                                "No alérgico", "alérgico", "alérgico",
                                "alérgico", "alérgico", "alérgico",
                                "No alérgico", "No alérgico", "No alérgico",
                                "No alérgico", "alérgico", "alérgico",
                                "alérgico", "alérgico", "No alérgico",
                                "alérgico", "No alérgico", "No alérgico",
                                "alérgico","alérgico", "alérgico"),
                     mutacion = c(FALSE, FALSE, FALSE, FALSE, TRUE, FALSE,
                                  FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE,
                                  TRUE, FALSE,  FALSE, TRUE, FALSE, TRUE, FALSE,
                                  TRUE, FALSE,FALSE, FALSE, TRUE, FALSE, FALSE,
                                  TRUE, FALSE, TRUE))
tabla<-table(datos)

fisher.test(x = tabla, alternative = "two.sided")


