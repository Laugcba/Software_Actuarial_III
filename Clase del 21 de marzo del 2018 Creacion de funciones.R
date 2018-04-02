#Funciones
suma2 <- function(x,y){
  x+y
}
suma2(1,3) #4

mayor10 <- function(x){
  seleccionados <- x>10
  x[seleccionados]
}
mayor10(1:20) # 11 12 13 14 15 16 17 18 19 20

mayor <- function(x,n=10){
  seleccionados <- x>n
  x[seleccionados]
  # o x[x>n]
}

#Dado que la funcion tiene n=10, al no colocar el argumento en un  
mayor(1:20) # 11 12 13 14 15 16 17 18 19 20
mayor(1:20,15)# 16 17 18 19 20
mayor(n=15, x=1:20)
#En esta funcion, si yo escribo los argumentos en orden no es necesario 
#colocar el nombre del argumento 
#si escribo los argumentos en desorden si es necesario

x <- matrix(1:100,20,5)

promediocol <- function(x,quitarNa=TRUE){
  nc <- ncol(x) #Numero de colunmas
 medias <- vector("numeric",nc)
  for(i in 1:nc){
    medias[i] <- mean(x[,i], na.rm=quitarNa) #promedio de x en todas las filas y remueve los valores faltantes
  }
  medias
}
promediocol(x)

#Evaluacion perezosa
#La evaluacion de funciones en R es perezosa, debido a que no se calculara
#una expresion hasta que su valor sea necesario

f <- function(a,b){
  a^2
}
f(3)

g <- function(a,b){
  print(a)
  print(b)
}
g(3)
#Nota que no nos imprime el valor de a, antes de marcarnos algun error

g <- function(a,b){
  print(a)
  print(b)
}
g(3,4)

#EL ARGUMENTO
#indica que hay un numero variable de argumentos que usualmente 
#son pasados a otras funciones.
#tipicamente se usa cuando tienes una serie de argumentos en la funcion
#original y no quieres escribirlos tos en una sub función.

myplot <- function(x,y,tipo="l"){
  plot(x,y,type=tipo)
}
myplot(1:10,10:1) 
plot(1:10,10:1)  

plot(1:10,10:1,main="Mi Grafica")
myplot(1:10,10:1,main="Mi Grafica") #Marca un error porque no esta definida en la funcion


myplot <- function(x,y,tipo="l", ...){
  plot(x,y,type=tipo,...)
  
}
myplot(1:10,10:1,main="Mi Grafica", perro="123")


#Tambien se ocupa cuando el numero de argumentos no puede ser conocido por anticipado.

#Paste
#DEspues del argumento ... cualquier otro argumento que se desee usar
paste("Jose","Paz","alex","/")
paste("Jose","Paz","alex",sep="/")

#antes del argumento  no es necesario seleccional el nombre de algumeno si se encuentra en la posicion correcta
mypaste <- function(sep=" ", ...){
  paste(...,sep=sep)
}

args(paste)
function(..., sep=" ", collapse =NULL)
NULL
paste("a","b",sep=":")
paste("a","b", se=":")


#Tarea
install.packages("swirl")
library(swirl)
swirl()

