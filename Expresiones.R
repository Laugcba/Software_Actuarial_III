#Aqui se esta realizando una asignación
x <- 1 #ctrl enter
x <- 2 
#La asignación no me permitio visualizarmel resultado
print(x)

print(X) #Al poner mayuscula, que no esta definida, me marcara error
Print(Y)
#la alternativa es solicitar una impresion implicita
x

#la asignacion puede hacerse tambien de terxtos
msg <- "Hola"
#al solicitar la impresion, me debera enseñar el mensaje
print(msg)

x <- #Expresion incompleta
3  
#expresion imcompleta, salir de ella(dejar de ejecutarla porque esta incompleta) ESC

#Impresion de un arreglo
x <- 1:20
x
y <- 3:9 #secuencia numerica
y
z <- 99:43
z

#El operador ":" me permite generar secuencias numericas
w <- 3:14.5
w

#L sufijo de entero
#inf concepto de ininito

#En el caso de decimales , me genera secuencia de enteros
#El numero entre parentesis en la ubicacion del numero que sigue 
x <- 1
#El valor NaN(not a number) representa un valor indefinido como 0/0 o faltante


#R nos permite trabajar con conceptos matematicos "superiores" 
Inf
1/0
#es posible hacer algunas operaciones con este valor
exp(-Inf) #0
Inf + Inf #inf
Inf*Inf #Inf
Inf - Inf #NaN(not a number)
Inf/Inf #NaN

#Es posible crear un vector con la funcion c()
S <- c(TRUE,FALSE,TRUE,TRUE,F,F,T) #Logical
a <- c(1L,3L,5,-4L)#Integer
d <- c(1,3,5,-4) #Numeric

o <- c(1+1i,3+4i,-5+6i,3.14-1.16i) #complex
x <- c("a","b","c","Hola","Mundo") #Character

#Otro camino seria con la funcion vector
x <- vector("numeric",length = 10)
x
#El vector sera vacio


#Coaccionar
y <- c(1.s2w3e67,"a") #character
r <- c(TRUE,2) #numeric
t <- c(TRUE,2L) #integer
y <- c(FALSE,2L,5,5+4i) #complex
y
f <- c(TRUE,1) #numeric

#coercion forzada
x <- 0.6 #Integer
as.numeric(x)  #Numeric
as.logical(x)  #Los vuelve 0 se vuelve false o todos los demas en True
as.character(x) #character- todo es texto

#Errores en la coercion forzada
x <- c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)
#aparece Na porque esa coercion no es posible un valor faltante
