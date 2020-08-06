Laboratorio 1
================
Marianna Flores

``` r
library(dplyr)
library(readr)
library(tidyverse)
library(readxl)
```

PROBLEMA 1:
-----------

Unificar todos los archivos en una tabla, agregar una columna de fecha, exportar archivo a excel.

``` r
files <- list.files(path = "~/Lab1/Lab1", pattern = "*.xlsx", full.names = TRUE)

tabla_unida <- sapply(files, FUN = read_excel, simplify = FALSE) %>% bind_rows(.id = "id")
tabla_unida$fecha <- substr(tabla_unida$id, start = 46, stop = 52)
df <- tabla_unida[c(2:9,12)]

head(df)
```

    ## # A tibble: 6 x 9
    ##   COD_VIAJE CLIENTE      UBICACION CANTIDAD PILOTO        Q CREDITO UNIDAD fecha
    ##       <dbl> <chr>            <dbl>    <dbl> <chr>     <dbl>   <dbl> <chr>  <chr>
    ## 1  10000001 EL PINCHE O~     76002     1200 Fernando~ 300        30 Camio~ 01-2~
    ## 2  10000002 TAQUERIA EL~     76002     1433 Hector A~ 358.       90 Camio~ 01-2~
    ## 3  10000003 TIENDA LA B~     76002     1857 Pedro Al~ 464.       60 Camio~ 01-2~
    ## 4  10000004 TAQUERIA EL~     76002      339 Angel Va~  84.8      30 Panel  01-2~
    ## 5  10000005 CHICHARRONE~     76001     1644 Juan Fra~ 411        30 Camio~ 01-2~
    ## 6  10000006 UBIQUO LABS~     76001     1827 Luis Jai~ 457.       30 Camio~ 01-2~

Adicionalmente se creo un documento con el comando de write.csv

PROBLEMA 2:
-----------

Crear funcion para encontrar moda Aplicarlo con sapply

``` r
lista <- list(vec1 <- sample(1:15, size = 20, replace = TRUE),
              vec2 <- sample(1:15, size = 20, replace = TRUE),
              vec3 <- sample(1:15, size = 20, replace = TRUE))

moda <- function(x) {
  numero <- unique(x)
  cuenta <- tabulate(match(x, numero))
  numero[cuenta == max(cuenta)]
}

lapply(lista, FUN = moda)
```

    ## [[1]]
    ## [1] 11
    ## 
    ## [[2]]
    ## [1] 6 2
    ## 
    ## [[3]]
    ## [1] 2

PROBLEMA 3:
-----------

Descargar archivos del parque vehicular de la pagina de la SAT

``` r
parque_vehicular <-read_delim("~/Data Wrangling/Ejercicios/Laboratorio 1/INE_PARQUE_VEHICULAR_080720.txt", delim = "|")
head(parque_vehicular)
```

    ## # A tibble: 6 x 11
    ##   ANIO_ALZA MES   NOMBRE_DEPARTAM~ NOMBRE_MUNICIPIO MODELO_VEHICULO
    ##       <dbl> <chr> <chr>            <chr>            <chr>          
    ## 1      2007 05    EL PROGRESO      "EL JICARO"      2007           
    ## 2      2007 05    ESCUINTLA        "SAN JOS\xc9"    2006           
    ## 3      2007 05    JUTIAPA          "MOYUTA"         2007           
    ## 4      2007 05    GUATEMALA        "FRAIJANES"      1997           
    ## 5      2007 05    QUETZALTENANGO   "QUETZALTENANGO" 2007           
    ## 6      2007 05    HUEHUETENANGO    "CUILCO"         1999           
    ## # ... with 6 more variables: LINEA_VEHICULO <chr>, TIPO_VEHICULO <chr>,
    ## #   USO_VEHICULO <chr>, MARCA_VEHICULO <chr>, CANTIDAD <dbl>, X11 <chr>
