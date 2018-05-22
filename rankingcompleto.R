setwd("C:/Users/Laura Cabanillas/Documents/outcome-of-care-measures.csv")

rankingcompleto<- function(resultado="ataque", num) {
    
    state <-levels(factor(outcome[,7]))
    hospital <- c()
    
    outcome <- read.csv("outcome-of-care-measures.csv",colClasses = "character")
    
    if(resultado== "ataque"){
        columna <- 11
    }else if (resultado== "falla"){
        columna <- 17
    }else if (resultado== "neumonia"){
        columna <- 23
    }else {
        stop("Resultado inválido")
    }
    
    for(i in 1:(length(state))){
        estado<-state[i]
        colesta <- c()
        enfermedad <- c()
        
        {    
    
     for (i in 1:nrow(outcome)) {
                
        if (outcome[i,7] == estado){
            
            m<- length(colesta) + 1
            colesta[m] <- outcome[i,2]
            enfermedad[m] <- outcome[i,columna]
            
        }
            }
            
        u<- enfermedad[1:m]
        enfermedad<-as.numeric(u)  
        
        tabla<-data.frame(colesta,enfermedad)
        k<-tabla[,2]
        mayor <- tabla[order(as.numeric(k), tabla[,1], na.last=NA, decreasing=FALSE),]
            
    if(num == "mejor"){
      num<- 1
    }
     resp<-mayor[num,1]
    
    if(num == "peor"){  
       num<- nrow(mayor)
       resp<-mayor[num,1]}
       hospital <- c(hospital,as.character(resp))
        }
    }
    
    data.frame(hospital,state, row.names =state)
}

head(rankingcompleto("ataque", 20), 10) 

