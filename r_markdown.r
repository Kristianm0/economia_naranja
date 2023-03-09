#Instalando paquetes para la visualizacion.

install.packages("rmarkdown")

install.packages("knitr")

#####CODIGO
title: "economia_naranja"
output: html_document
date: "2023-02-28"
---

```{r}
orangeec <- read.csv("\\Users\\krist\\Downloads\\orangeec.csv")
data(orangeec)
summary(orangeec)
```
parace que hay correlacion entre aporte de economia naranja al pib y la tasa de desempleo.

```{r}
pairs(orangeec[,6:10])
```

Distribucion de frecuencia en cuanto a la penetracion de internet
```{r}
library(ggplot2)
ggplot()+geom_histogram(data=orangeec,
                        aes(x=Internet.penetration...population), fill="green",color="yellow",
                        binwidth = 5)+
  labs(x="Penetracion internet(%) poblacion", y="cantidad de paises",
       title= "Penetracion en internet en paises latam") +
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
```

```{r}
library(dplyr)
library(ggplot2)
```

```{r}
economy <- mean(orangeec$GDP.PC)
economy

orangeec <- orangeec %>%
  mutate(strong_economy = ifelse(GDP.PC < economy, 
                  "Por debajo promedio pib per capital",
"Sobre arriba promedio pib per capiral"))
```
```{r}

ggplot(orangeec, aes(x=strong_economy, y=Creat.Ind...GDP,
                     fill=strong_economy))+
    geom_boxplot(alpha=0.4)+
    labs(x="Tipo de pais", y="Aporte economia naranja al pib",
            title="Aporte economia naranja en pib paises latam con 
         alto y bajo pib per capital")
theme(legend.position = "none")+
theme(panel.background = element_blank(),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank())
```
El boxplot indica que los paises sobre el promedio en pib per capital tiene una dispersion mucho mas alta en cuanto a los aportes de la economia naranja al pid del pais. OJO confirmar con desviacion estandar.