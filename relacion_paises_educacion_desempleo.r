plot(orangeec1$Unemployment - orangeec1$Education.invest...GDP,
     xlab = "Invesion educacion (%PIB)",
     ylab = "Desempleo",
     main = "Relacion inversion en educacion y desempleo")

#Plot para crear el grafico. Le damos las columnas para que busque donde sacar los datos.
#Ponemos las etiquetas de los ejes x y. Cons us titulos; Inversion educacion y desempleo.
#Main para el titulo, Relacion inversion en educacion.

#Otros paises con la misma estructura
plot(orangeec1$GDP.PC - orangeec1$Creat.Ind...GDP,
     xlab = "Aporte a economia naranja al PIB(%)",
     ylab = "PIB per capital",
     main = "Relacion economia naranja y pib per capital")