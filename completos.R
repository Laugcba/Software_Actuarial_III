setwd("C:/Users/Laura Cabanillas/Documents/specdata")
directorio="C:/Users/Laura Cabanillas/Documents/specdata"

completos<-function(directorio,id){
   resultado<-c()
    
    for(i in id){
        
        if(nchar(i)==1){                
            valor <- read.csv(paste("00",i,".csv", sep=""))
        }
        
        if(nchar(i)==2){                
            valor<- read.csv(paste("0",i,".csv", sep=""))
        }
        
        if(nchar(i)==3){                 
            valor <- read.csv(paste(i,".csv", sep=""))
        }
        
        x <- data.matrix(valor)         
        x[is.na(x)] <- 0               
        suma <- 0
        
        for(k in 1:nrow(valor)){
            if(x[k,2] > 0 ){
                suma<- suma + 1   
            }  
        }
        
        resultado<- c(resultado, suma)    }
    nobs<- resultado
    
    data.frame(id,nobs)
}
   completos(directorio, 1:7)
