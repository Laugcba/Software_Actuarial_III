setwd("C:/Users/Laura Cabanillas/Documents/outcome-of-care-measures.csv")

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 
names(outcome)
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11], plot=T) 

mejor<- function(estado,resultado){
    
    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    if (resultado == "ataque"){
        columna<- 11
    }else if (resultado == "falla"){
        columna<- 17
    }else if (resultado == "neumonia"){
        columna<- 23
    }else {
        stop("Resultado inválido")
        
    }
    
    est <- FALSE
    if(isTRUE(match(estado,outcome$State)>0)){
        est <- TRUE
    }else{
        stop("Estado inválido")
        }
    
    
    estado <- outcome[outcome$State == estado,]
    tabla <- estado[,c(2,columna)]            #hospital y resultado
    
    k<-tabla[,2]
    if (sum(k=="Not available")< 1) {
    
        mayor<- tabla[order(as.numeric(k), decreasing = FALSE),]
        
        p<-as.logical(mayor[,2] == mayor[1,2])
        
        igual <- mayor[p,]
        resp <- igual[order(igual[,1]),]
        resp[1,1]


    }
    
}
mejor("TX", "ataque")
mejor("TX", "falla") 
mejor("MD", "neumonia")
      
    
    