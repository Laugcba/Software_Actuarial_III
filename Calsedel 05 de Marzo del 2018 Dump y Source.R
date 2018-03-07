#Dump y source

setwd("~/GitHub/Software_Actuarial_III")
x <-"Software Actuarial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
source("data.R")

#Dump y source trabajan con las instrucciones de codigo que permitan volver a construir un objeto en lugar de obtenerlo desde alguna ubicación guardada.

#CONEXIONES
#Los datos se leen usando interfaces de conexiones, normalmente las conexiones se convierten en archivos.
#file, abre la conexion de un archivo

writeLines(readLines(con), "FCFM.txt")

con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con,7)

#WriteLine

con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con)
x[7] <- "t<title>FCFM: Estariamos mejor con otro director </title>"
writeLines(x,"FCFM.html")
x
writeLines(x,"FCFM.html")

#SUBCONJUNTOS

#[ Regresa un objeto de la misma clase al original. Puede extraer varios elementos de la lista
#[[ Es usado para extraer un elemento de una lista o data frame. solamente extrae un solo elemento
# $ se usa para extraer elementos de una lista o un data frame por nombre

#Creamos un vector
x <- c("a","b","c","c","d","e")
#Veamos el vector
x
#Extraemos el elemento con [ ]
x[1]
x[2]
#Tambien podemos extraer una secuencia de elementos
x[1:4]
#Es posible extraer los elementos que cumplen una restricción
x[x>"b"]
#De manera equivalente se puede obtener un vector lógico
u<- x =="c"
u
x[u]
x[5-3]
x[1:2]


#Creamos una lista
x <- list(foo=1:4, bar=0.6)
x
x[1]
#El resultado es una lista que contiene al vector de la secuencia
x[[1]]
#El resultado es el vector de la secuencia de numeros

#El resultado de este fue de un vector como con doble corchete[[]]
x$foo

x["bar"]
x

x[["bar"]]

#SUBCONJUNTOS DE LISTAS
x <- list(foo=1:4, bar=0.6, baz="Hola")
#Extra elementos no secuenciales 1 si, 2 no, 3 si
x[c(1,3)]
#Extrae secuencialmente desde los elementos extraidos
#Primero extrae el 1er elemento y de ahi extrae la 3ra posición
x[[c(1,3)]]


name <- "baz"
#Los corchetes pueden usar indices calculados
x[name]
x[[name]]
x$name
#si yo quiero realizar extracciones con el signo de pesos 
#es necesario escribir el nombre del objeto que quiero extraer


#Anidar subconjuntos de listas
#se pueden extraer elementos de los elementos extraidos
x <- list(a=list(10,12,14), b= list(3.14,2.81))
x[[c(1,3)]]

x[[1]][[3]]

x[[c(2,1)]]

#SUBCOJUNTOS DE UNA MATRIZ
#La extraccion de elementos en una matriz  funciona de manera convencional
#con la forma ij de los elementos

x <- matrix(1:6,2,3)
x
x[1,2]
x[1,]
#Con drop= FALSE, se mantiene la dimensión y
#el resultado sera una matriz
x[1,2, drop= FALSE]

x[1, , drop=FALSE]


# R puede encontrar el nombre de algun objeto de manera parcial con $
#
x<- list(aasdfafk=1:5)
x$a
x[["a"]]
x[["a", exact=FALSE]]

#Extraccion de valores faltantes 
airquality[1:6,]
complete.cases(airquality[1:6,])
complete.cases(airquality[1:10,])
completos <- complete.cases(airquality)
airquality[completos,]
data <- airquality[completos,]
data[1:6,]

#Al hacer una extraccion desde un vector logicos, obtengo 

#Algunas operaciones 
x<- 1:4;  y <- 6:9

x+y #pocision a ´pocision
x<2
x>2
x>=2
y==8
x*y
x/y

#En matrices
x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x
y
x*y
x/y
x;y;x%*%y
y%*%x
x%*%y

#ESTRUCTURAS DE CONTROL
#Permiten manejar el flujo de la ejecucion de un programa, dependiendo
#de las condiciones al momento de correrlo.

#If, else: para probar una condición
#for: ejecutar un ciclo un determinado numero de veces
#while: ejecuta un ciclo mientras se cumpla una condición
#repeat: ejecuta un ciclo infinito
#break: termina la ejecución de un ciclo
#next: "salta" una iteración de un ciclo
#return:sale de una función

#If, else

if(condición){
  #algunas intrucciones
} else {
  ##algunas otras intrucciones
}

x=3
if (x>5){
  print("Mayor")
}else {
  print("Menor")
}


x=7
if(x<5){
  print("menor a 5")
}else if(x<=10){
  print("entre 5 y 10")
}else {
  print("Mayor a 10")
}  

x<-4
y<- 3
if (x>3){
  y<- 10
}else {
  y<- 0
}

y <- if(x>3){
  10
}else {
  0
}
