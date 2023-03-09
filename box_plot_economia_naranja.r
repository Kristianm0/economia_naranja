#clasificacion de paises segun su PIB

economy <- mean(orangeec1$GDP.PC)
economy

#Creamos una variable.
#Le pasamos mean() para decirle de donde buscar los datos y que variable.

#--
orangeec1 <- orangeec1 %>%
  mutate(strong_economy = ifelse(GDP.PC < economy,
                                 "Por debajo del promedio PIB",
                                  "Sobre - Arriba promedio pib"))

#ponemos nuestro datset y le asignamos nuestro data set. Lo pasamos a mutate, esto es crear una nueva variable, le pasamos la variable la cual creamos.
# Ponemos una condicion que dependa de una variable.

#--
ggplot(orangeec1, aes(x=strong_economy, y=Creat.Ind...GDP,
                     fill=strong_economy))+
    geom_boxplot(alpha=0.4)+
    labs(x="Tipo de pais", y="Aporte economia naranja al pib",
            title="Aporte economia naranja en pib paises latam con 
         alto y bajo pib per capital")
theme(legend.position = "none")+
theme(panel.background = element_blank(),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank())

#Hacemos nuestro box plot con gplot, pasamos el data set y su variable.
#aes para la parte estetica y entre los parentesis la variable.
# el parametro y con su variable.
# Con sus etiquetas y con labs.
#them para el tema de diseño.

