#Listas
x <- list(1,"a", TRUE, 3+2i,5L)
x
#Todos los elementos de una lista mantienen la clase que originalmente 
x <- list(1,"a", TRUE, 3+2i,5L, 1:50)
x

#Matrices
#son vectores con un atributo llamado dimension, este atributo es un vector en si mismo compuesto de (nrow,ncol)

m <- matrix(nrow= 2, ncol=3)
m <- matrix(NA,2,3)
m
dim(m)
attributes(m)

#Como llenar una matrix
m <- matrix(data=1.6,nrow=2,ncol=3)
m <- matrix(1:6,2,3)
m
#la manera automatica de llenarse fue columna por columna
#si yo quisiera que se llemara fila por fila, seria
m <- matrix(data=1:6, nrow=2, ncol=3, byrow=TRUE)
m
m <- matrix(1:6,2,3,TRUE)
m

#Una manera alternativa de crear una matrix es desde un vector 
m <- 1:10
dim(m) <- c(2,5)
m
#Otra manera de crear una matriz es uniendo diferentes vectores
x <- 1:3
y <- 10:12
#CBind, unir columnas
cbind(x,y)
#rbind unir filas
rbind(x,y)

#Factores
x <- factor(c("Si","Si","No","No","Si"))
x

x<- factor(c("Azul","Verde","Verde","Azul","Rojo"))
x

table(x)
unclass(x)
x<- factor(c("Azul","Verde","Verde","Azul","Rojo"),levels=c("Rojo","Amarillo","Verde","Naranja"))
x

x<- factor(c("Azul","Verde","Verde","Azul","Rojo"),levels=c("Rojo","Amarillo","Verde","Azul"))
x
unclass(x)

#Valores faltantes
x <- c(1,2,NA,10,3)
is.na(x)
is.nan(x)
