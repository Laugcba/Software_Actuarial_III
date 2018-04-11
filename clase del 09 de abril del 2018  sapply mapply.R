#VECTORIZAR UNA FUNCION
noise<-function(n,mean,sd){
    rnorm(n,mean,sd)
}

noise(5,1,2)
noise(1:5,1:5,2)

mapply(noise,1:5,1:5,2)

#tapply
#Str(tapply)
#function(X,INDEX,FUN=NULL,...,simplify=TRUE)

#x es un vector
#INDEX  es un factor o una lista de factores
# FUN  Es una funcion a aplicar
#... otros argumentos a pasar a FUN
#simplify se debe simplificar el resultado

x<- c(rnorm(10),runif(10),rnorm(10,1))
f<-gl(3,10)
f
tapply(x,f,mean)

}
#split
#str(split)
x<-c(rnorm(10),runif(10), rexp(10))
f<-gl(3,10)
f 

lapply(split(x,f), mean)

#Split a mas de un nivel
x<-rnorm(10)
f1<-gl(2,5)
f2<-gl(5,2)
f1
f2
interaction(f1,f2)
#todas las posibles combinaciones


#mtcars por numero de cilindros cuanto es el promedio de caballos de fuerza


head(mtcars)
sapply(split(mtcars$hp,mtcars$cyl), mean)
sapply(split(mtcars$mpg,mtcars$cyl),mean)
