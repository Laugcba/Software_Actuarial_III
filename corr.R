setwd("C:/Users/Laura Cabnillas/Documents/specdata")
directorio="C:/Users/Laura Cabanillas/Documents/specdata"

corr <- function(directorio ,horizonte = 0){
    correlacion <- c()
    
    p <- 0
    
    for(i in 1:332){
        
        if(nchar(i)==1){                
            valor <- read.csv(paste("00",i,".csv",sep=""))
        }
        
        if(nchar(i)==2){                 
            valor <- read.csv(paste("0",i,".csv",sep=""))
        }
        
        if(nchar(i)==3){                
            valor <- read.csv(paste(i,".csv",sep=""))
        }
        
        x <- data.matrix(valor)               
        c <- x[complete.cases(x),]      
        n <- nrow(c)                    
        
        if (n>horizonte){               
            correlacion<- c(correlacion, cor(c[,2],c[,3]))
        }
    }
    
    correlacion
}

    corr(direccion,10)
  head(cr)
summary(cr)
