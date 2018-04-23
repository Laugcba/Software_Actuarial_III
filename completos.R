setwd("C:/Users/analaura/Desktop/specdata")
directorio="C:/Users/analaura/Desktop/specdata"


completos<-function(directorio,id=1:332){
    resulutado<-c()
    
    
    for(i in id){
        
        if(nchar(i)==1){                
            valor <- read.csv(paste("00",i,".csv"))
        }
        
        if(nchar(i)==2){                
            valor<- read.csv(paste("0",i,".csv"))
        }
        
        if(nchar(i)==3){                 
            valor <- read.csv(paste(i,".csv"))
        }
        
        x <- data.matrix(valor)         
        x[is.na(x)] <- 0               
        p <- 0
        
        for(k in 1:nrow(valor)){
            if(x[k,2] > 0 ){
                p<- p + 1   
            }  
        }
        
        resultado<- c(resultado, p)    }
        nobs<- resultado
  
    data.frame(id,nobs)
}
