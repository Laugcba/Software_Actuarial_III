tabla[,columna]<- suppressWarnings(as.numeric(tabla[,columna]))
tabla[,2] <- as.character(tabla[,2]) 

estadoxx <- tabla[grep(estado,tabla$State),]
Orden <- estadoxx[order(estadoxx[,columna], estadoxx[,2], na.last=NA),]

vector<-c()
estados <- levels(tabla[, 7])
for(i in 1:length(estados)) {
    hospital <- ordered[1, 2]
    vector <- append(vector, c(hospital, estados[i]))
    
}

}
