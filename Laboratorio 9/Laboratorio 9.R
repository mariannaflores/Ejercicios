library(tidyverse)
library(highcharter)
library(readr)
library(readxl)
library(reshape2)
library(lubridate)
library(shiny)
library(RColorBrewer)
library(viridisLite)
library(openxlsx)

d <- read_delim("~/Data Wrangling/Ejercicios/Laboratorio 9/democrats.csv", 
                 ",", escape_double = FALSE, trim_ws = TRUE)
r <- read_delim("~/Data Wrangling/Ejercicios/Laboratorio 9/republicans.csv", 
                ",", escape_double = FALSE, trim_ws = TRUE)

##OBJETIVO PRINCIPAL
#OCURRIO UN CAMBIO EN LA POPULARIDAD DE LOS CANDIDATOS EN EL TIEMPO DEL DATASET
#dem
textD <- d %>% select(text)
textD$text <- noquote(textD$text)

wordsD <- strsplit(textD$text, " ")
finalwD<-data.frame(unlist(wordsD, recursive = TRUE))
finalwD$words<-finalwD$unlist.wordsD..recursive...TRUE.

datos <- finalwD %>% group_by(words) %>% summarise(n = n()) %>% arrange(desc(n))

#rep
textR <- r %>% select(text)
textR$text <- noquote(textR$text)

wordsR <- strsplit(textR$text, " ")
finalwR<-data.frame(unlist(wordsR, recursive = TRUE))
finalwR$words<-finalwR$unlist.wordsR..recursive...TRUE.

datosR <- finalwR %>% group_by(words) %>% summarise(n = n()) %>% arrange(desc(n))

fechas <- d %>% select(created) %>% filter(created != 0) %>% summarise(max = max(is.Date(created)), min = is.Date(min(created)))
d$hora <- hour(is.numeric(d$created))
cants <- group 

write.csv(datosR)
#JOE BIDEN DIFFERENCE OF TAGS BY DAY
#BY DEMOCRATS
tbiden <- d %>% select()
#BY REPUBLICAN


#DONALD TRUMP DIFFERENCE OF TAGS BY DAY
#BY DEMOCRATS

#BY REPUBLICANS









