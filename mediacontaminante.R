setwd("C:/Users/Laura Cabanillas/Documents/specdata")
directorio="C:/Users/Laura Cabanillas/Documents/specdata"

mediacontaminante <-function(directorio, contaminante, id=1:332){
    resultado <- 0
    
    
    if(contaminante == "sulfate"){
        col <- 2
    }
    
    if(contaminante == "nitrate"){
        col <- 3
    }
    
    
    for(i in id){
        
        if(nchar(i)==1){               
            valor <- read.csv(paste("00",i,".csv",sep=""))
        }
        
        if(nchar(i)==2){                  
            valor <- read.csv(paste("0",i,".csv",sep = ""))
        }
        
        if(nchar(i)==3){                  
            valor<- read.csv(paste(i,".csv",sep=""))
        }
        
        x <- data.matrix(valor)             
        x[is.na(x)] <- 0                
        p <-colMeans(x)                  
        resultado <- resultado + p[col]      
    }
    
    resultado
}
mediacontaminante(directorio,"sulfate",1:332)
