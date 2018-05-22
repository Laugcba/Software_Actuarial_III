setwd("C:/Users/Laura Cabanillas/Documents/outcome-of-care-measures.csv")

rankhospital<-function(estado, resultado, num){
    outcome<- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    colesta<-c()
    enfermedad<-c()
    
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
    mayor<- tabla[order(as.numeric(k), tabla[,1], na.last=NA, decreasing=FALSE),]
    
    if(num == "mejor"){
        num<- 1
    }
    if(num == "peor"){
        num <- nrow(mayor)
    }
    
    resp<-mayor[num,1]
    as.character(resp)
    
}
rankhospital("TX","falla",4)
rankhospital("MD","ataque","peor")    
