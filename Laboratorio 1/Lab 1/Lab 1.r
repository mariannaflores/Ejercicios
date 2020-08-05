#Laboratorio 1 
#Marianna Flores 20180040

#Librerias
library(readxl)
library(readr)
library(tidyverse)
library(tidytext)

#PROBLEMA 1

files <- list.files(path = "~/Lab1/Lab1", pattern = "*.xlsx", full.names = TRUE)

tabla_unida <- sapply(files, read_excel, simplify = FALSE) %>% bind_rows(.id = "id")
tabla_unida$fecha <- substr(tabla_unida$id, start = 46, stop = 52)
df <- tabla_unida[c(2:9,12)]

View(df)
write_csv(df, "~/Data Wrangling/Ejercicios/Laboratorio 1/df.csv")


#PROBLEMA 2
#aplicar lapply para encontrar moda de lista de 3 vectores

lista <- list(vec1 <- sample(1:15, size = 20, replace = TRUE),
              vec2 <- sample(1:15, size = 20, replace = TRUE),
              vec3 <- sample(1:15, size = 20, replace = TRUE))

moda <- function(x) {
  numero <- unique(x)
  cuenta <- tabulate(match(x, numero))
  numero[cuenta == max(cuenta)]
}

lapply(lista, FUN = moda)



#PROBLEMA 3
#descargar documento y leer con read_delim

parque_vehicular <-read_delim("~/Data Wrangling/Ejercicios/Laboratorio 1/INE_PARQUE_VEHICULAR_080720.txt", delim = "|")
View(parque_vehicular)

