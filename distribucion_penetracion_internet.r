#distribucion de frecuencia en cuanto a la penetracion de internet
ggplot()+geom_histogram(data=orangeec1,
                        aes(x=Internet.penetration...population), fill="green",color="yellow",
                        binwidth = 5)+
  labs(x="Penetracion internet(%) poblacion", y="cantidad de paises",
       title= "Penetracion en internet en paises latam") +
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#Este código en R utiliza la librería ggplot2 para crear un histograma que muestra la distribución de la penetración de internet en la población de los países de Latinoamérica.

#La función ggplot() inicia el objeto gráfico de ggplot.
#geom_histogram() es una capa geométrica que permite crear un histograma, donde se especifica el conjunto de datos (data) y se asigna el eje x a la variable "Internet.penetration...population" que contiene la penetración de internet en la población de cada país, y se establece el ancho de cada bin (binwidth) en 5. Además, se especifica el color de relleno (fill) en verde y el color de borde (color) en amarillo.
#labs() se utiliza para agregar etiquetas a los ejes x e y, así como al título del gráfico.
#theme() se utiliza para establecer la posición de la leyenda (legend.position) y ajustar el estilo de la grilla y el fondo del panel.
#En resumen, este código crea un histograma que muestra la distribución de la penetración de internet en la población de los países de Latinoamérica, con un ancho de bin de 5 y estilo de color personalizado. También elimina la leyenda y la grilla del panel para una mejor presentación del gráfico.