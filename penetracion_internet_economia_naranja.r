#Orangeec economy
#Penetracion de internet y economia naranja

ggplot(orangeec1, aes(Internet.penetration...population, Creat.Ind...GDP))+
  geom_point(aes(color=factor(strong_economy), size=GDP.Growth..))+
  labs(x="Penetracion Internet", y="Aporte economia naranja PIB", 
       title="Internet y aporte economia naranja segun economia y crecimiento")
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#escribimos el comando que da el grafico. Pasamos el dataset, y la variable.
#aes para la parte estetica.Y ponemos las variables.
#Labs los ejes y sus titulos.

#con 4 variables

#Orangeec economy
#Penetracion de internet y economia naranja

ggplot(orangeec1, aes(Education.invest...GDP, Unemployment))+
  geom_point(aes(color=factor(strong_economy), size=GDP.Growth..))+
  labs(x="Penetracion Internet", y="Aporte economia naranja PIB", 
       title="Internet y aporte economia naranja segun economia y crecimiento")
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#escribimos el comando que da el grafico. Pasamos el dataset, y la variable.
#aes para la parte estetica.Y ponemos las variables.
#Labs los ejes y sus titulos.
  
Tarea
#Meter cuatro variables mas, poner: 
#1. inversion como porcentaje de educacio en x-
# 2.Y desempleo
# 3.Color de las burbujas.
# 4. Tamaño el porcenjate que esta por debajod e la linea de la pobreza.



#Para que sea interactivo
my_grahp <- ggplot(orangeec1, aes(Internet.penetration...population,
                                    Creat.Ind...GDP, label = row.names(orangeec1)))+
    geom_point()+
    labs(x="Penetracion internet", y="Aporte economia naranja",
       title= "Penetracion Internet y aporte economia naranja")

my_grahp

p = ggplotly(my_grahp)
p