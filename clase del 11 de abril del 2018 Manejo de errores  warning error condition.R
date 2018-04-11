#manejo de errores
#NOTIFICACIONES
#indicadores de que algo anda mal
#message:Una notificacion generica que se produce, el codigo sigue corriendo

#warning: Una indicacion de que algo esta mal, pero no necesariamente es fatal, el 
#codigo sigue corriendo

#Error: un aviso de que un problema fatal ocurre, el codigo deja de correr

#conditon: Un concepto generico para indicar que algo inesperado puede ocurri, los 
#programadores pueden crear sus progias condiciones

#WARNING
log(-1)


imprimeMSJ<- function(x){
    if(x>0)
        print("x es mayor que 0")
    else
        print("x es menor o igual a 0")
    invisible(x)
}
imprimeMSJ(1)
imprimeMSJ(NA)
imprimeMSJ(-1)



imprimeMSJ2<- function(x){
    if(is.na(x))
        print("x es un valor faltante")
    else if (x>0)
        print("x es mayor que 0")
    else
        print("x es menor o igual a 0")
    invisible(x)
}

imprimeMSJ2(NA)

#Herramientas para depurar

#traceback: imprime la función que se esta ejecutando

#debug: marca una función para correrla paso a paso

#browser: suspende la ejecucion de una función y pone la función en depuración

#trace: te permite insertar código para depurar en una dunción en lugares 
#especificos del codigo

#TACEBACK
#rm(list=rm(ls())

mean(x)
traceback()

lm (y ~ x)
traceback()

#DEBUG

#debug(lm)
#lm(y ~ x)

#STR  :muestra una forma compacta de la estructura interna de un objeto en R

str(str)
str(lm)
str(ls)
x<-rnorm(100)
str(x)
summary(x)
f<-gl(40,10)
str(f)
summary.default(f)
summary(f)


str(airquality)
m<-matrix(rnorm(100),10,10)
str(m)
s<-split(airquality,airquality$Month)
str(s)

#GENERAR NUMEROS ALEATORIOS
#Funciones para distribuciones de probabilidad

#rnorm: genera variables aleatorias normales con una media desviavicion estandar dadas

#dnorm: evalua la funcion de densidad en un punto de una distribucion normal dada
#una media y desviacion estandar

#pnorm: evalua la funcion de distribucion en un punto de una distribucion normal


x<-rnorm(10)
x
y<-rnorm(10,50,5)
y
summary(x)
summary(y)
