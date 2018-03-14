
set.seed(1)
intentos<-1000
a<-0
for (i in 1:intentos)
  z <- 5
  x<-vector("numeric")
 
  while(z>=3 && z<= 10){
  moneda <- rbinom(1,1,0.5)
  x<-c(x,z)
  if(moneda==1){ #Caminata Aleatoria
    z<- z+1
 
  }else {
    z<- z-1
    
  }
}
if (z<3) a <-a+1
  
} 


paste("En",intentos,"intentos, se escapa", a , "veces por abajo y", intentos-a , "veces se escapa por arriba" )
paste("la probabilidad de que salga por abajo es", a/intentos)

plot(x,type="b")

i<- 0
prepeat{
  i<-i+1
  print(paste("nacho es el profe"))
  brake
  
  
  #Estructura de control next
  #Se utiliza para no hacer una iteracion en un ciclo
  
  for(i in 1:100){
    if(i<=20){
      next
      #evita hacer las primeras 20 iteraciones
    }
    #otras instrucciones
  }


