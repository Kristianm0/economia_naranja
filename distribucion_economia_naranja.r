documenta este codigo en R en el abajo en el codigo #Distrubuccion del aporte a la economia naranja al PIB
ggplot()+geom_histogram(data=orangeec1,
                        aes(x=Creat.Ind...GDP), fill="blue",color="red",
                        binwidth = 1)+
  labs(x="Aporte economia naranja al PIB(%)", y="cantidad de paises",
       title= "Contribucion economia naranja al pib en paises latam") +
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#La función ggplot() inicia el objeto gráfico de ggplot.
#geom_histogram() es una capa geométrica que permite crear un histograma, donde se especifica el conjunto de datos (data) y se asigna el eje x a la variable "Creat.Ind...GDP" que contiene el aporte de la economía naranja al PIB de cada país, y se establece el ancho de cada bin (binwidth) en 1. Además, se especifica el color de relleno (fill) en azul y el color de borde (color) en rojo.
#labs() se utiliza para agregar etiquetas a los ejes x e y, así como al título del gráfico.
#theme() se utiliza para establecer la posición de la leyenda (legend.position) y ajustar el estilo de la grilla y el fondo del panel.