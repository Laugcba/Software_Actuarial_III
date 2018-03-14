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

#Ciclos For
#los ciclos for toman una variable y les asignan valores susesivos de un vector

for (i in 1:10){
  print(i)
}

for (i in 34:60){
  print(i)
}

for (i in c("a","b","c")){
  print(i)
}

#La forma en la que trabaja un for dentro de R es más similar a un for"


x <- c("a","b","c","d")
for(i in 1:4){
  print(x[i])
}

#A lo largo de x
for(i in seq_along(x)){
  print(x[i])
}

for(letra in x){
  print(letra)
}

for(i in 1:4) print(x[i])

#Los ciclos for pueden ser anidados
#seq_len secuencia de una determinada longitud

x<- matrix(1:6,2,3)
for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
    print(x[i,j])
  }
}

x<- matrix(1:6,2,3)
seq_len(nrow(x))
1:nrow(x) 


#Ciclo while
#inician probando una condicion, si esta es verdadera, ejecuta una serie de comandos 
#al terminarlos se vuelve a poner a prueba

count <- 0
while(count<10){
  print(count)
  count<- count +1
}

#A veces se evalúa mas de una condicion

z <- 5
while(z>=3 && z<= 10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z<- z+1
  }else {
    z<- z-1
  }
}

# rbinom(cuantas variables,no. intentos ,probabilidad)
#Las condiciones se evaluan de izquierda a derecha

set.seed(1)
z <- 5
while(z>=3 && z<= 10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z<- z+1
  }else {
    z<- z-1
  }
}

#para que me diga el numero de veces que se metio al ciclo
set.seed(1)
z <- 5
s<- 0
while(z>=3 && z<= 10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z<- z+1
  }else {
    z<- z-1
  }
  s=s+1 
}
print(s)
print("Se realizaron"); print(s); print("pasos")