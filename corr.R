
setwd("C:/Users/analaura/Desktop/specdata")
directorio="C:/Users/analaura/Desktop/specdata"

corr <- function(directorio ,horizonte = 0){
    correlación <- c()
    
    p <- 0
    
    for(i in 1:332){
        
        if(nchar(i)==1){                
            valor <- read.csv(paste("00",i,".csv"))
        }
        
        if(nchar(i)==2){                 
            valor <- read.csv(paste("0",i,".csv"))
        }
        
        if(nchar(i)==3){                
            valor <- read.csv(paste(i,".csv"))
        }
        
        x <- data.matrix(valor)               
        c <- x[complete.cases(x),]      
        n <- nrow(c)                    
        
        if (n>horizonte){               
            correlación <- c(correlación, cor(c[,2],c[,3]))
        }
    }
    
    correlación 
}