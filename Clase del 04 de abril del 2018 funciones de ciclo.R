#Funciones de ciclo
#Escribir ciclos for o while es util al ´programar, pero no particularmente
#fácil al trabajar interactivamente con la línea de comandos. Hay algunas
#funciones que implementan ciclos de manera interna para simplificar los códigos.

#lapply: Aplica una función a todos los elementos de una lista.
#sapply: Lo mismo que lapply pero intenta simplificar el resultado.
#apply: Aplica una función dentro de los márqenes de un arreglo.
#tapply: Aplica una función sobre los subconjuntos de un vector.
#mapply: Versión multivariante de lappply.

#La función split tambien es útil al trabajar con estas funciones, 
#particularmente con lapply.

#lapply
#ESta funcón toma 3 argumentos: (1) una lista x; (2) una función nombre de función
#FUN; (3) otros vía...


x<-list(a=1:5,b=rnorm(10000))
lapply(x, mean)

x<-list(a=1:5,b=rnorm(10), c=rnorm(10,1), d=rnorm(10,2))
lapply(x, mean)

x<- 1:4
lapply(x,runif)

x<- 1:4
lapply(x,runif, max=15, min=5)

#Sapply
#Esta función tratará de simplificar el resultado de apply si es posible
#Si el resultado es una lista con elementos

x<- list(a=1:5,b=rnorm(10), c=rnorm(10,3), d=rnorm(10,5))
lapply(x,mean)
sapply(x,mean)

#ESta funcón se utiliza para evaluar una función(típicamente una anónima) en 
#los margenes de un arreglo.
#Esta funcion se utiliza para aplicar una funcion

#x es un arreglo
#MARGIN es in vector entero indicado que margenes deben


sapply(x,mean)
x<- matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)

#otras formas de apply
x<- matrix(rnorm(200),20,10)
apply(x,1,quantile, probs=c(0.25,0.75))


a<- array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)
rowMeans(a,dims = 2)

#mapply
#Es como si fuera un apply multivariable, que aplica una funcion en paralelo a lo largo

list(rep(1,4),rep(2,3), rep(3,2), rep(4,1))
mapply(rep, 1:4, 4:1)

