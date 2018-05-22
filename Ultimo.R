#COMPONENTES DE DATOS ORDENADOS
#Los datos brutos
#-un archivo binario que entrega como resultado una maquina de medicion 
#-Un archivo de excek sin formato con hojas
#los datos brutos estan en el fotmato correcto si:
#1. No utiliza software con los datos
#2. No see manipula ninguno de los valores de los datos
#3. No se remueve ningun valor de los datos
#4. No se resumen los datos de ninguna forma

#Los datos ordendos
#1. Cada variable medida se encuentra en una columna
#2. Cada observación de esa variable, debe aparecer en una fila distinta
#3. Debe haber una tabla para cada tipo de variable
#4. Si se tienen multiples tablas, deberian incluir una colunma que les permita vincularse

#-Uncluir una fila al inicio con el nombre de las variables
#-Haz los nombres de las vaariables entendibles

#Libro de codigo
#1. Informacion acerca de las variables en la base de datos ordenadas




getwd()
tail(list.files())
setwd("./testdir")
getwd()

setwd(("../"))
get()

file.exists("data")
dir.create("nuevodirectorio")

if(!file.exists("specdata")){
    dir.create("specdata")
}


urlArchivo<- "https://data.baltimorecity.gov/api/views/d;54"
download.file(urlArchivo,destfile = )

#read.table()
#Es la prinncipal función para leer y cargar los datos de R
#Es la mas flexible y robusta, pero requiere mas parametros
#carga los datos en la memoria RAM
#Parametros importantes file, header,sep, row.names
datoscamara<-read.table("./data/camaras.cxv", sep=",",header=TRUE)



install.packages("rJava")
install.packages("xlsx")
    library(rJava); library(xlsx)


#descargar datos
if(!dir.exists("data")){dir.create("data")}
url<- "https://data.baltimorecity.gov/api/views/
k5ryef3g/rows.csv?accessType=DOWNLOAD"
download.file(url,"./data/restaurantes.csv")
data<-read.csv("./data/restaurntes.csv")

ing 9
cal~10
mic 10
alg~8
sof
fin~10

data(UCBAdmissions)
DF=as.dats.frame(USBAdmissions)
summary(DF)
xt<- xtabs(Freq~ Gender+Admit,data=DF)
xt

70/(1.7)^2
warpbreaks

warpbreaks$replicate<-rep(1:9, len=54)
xt=xtabs(breaks ~.,data=warpbreaks)
xt

#TAMAÑO DE UNA TABLA
fakedata= rnorm(1e5)
object.size(fakedata)
print(object.size(fakedata), units="Mb")
