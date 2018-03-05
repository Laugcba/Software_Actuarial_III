
x <- data.frame(mtcars)
dput(x)
dput(x, file="~/GitHub/Software_Actuarial_III/Carros.R")
carrosLaura <- dget(file= "~/GitHub/Software_Actuarial_III/Carros.R")
dput(carrosLaura)


