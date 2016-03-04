y  <-  airquality
dput ( y , " airquality.R " )
hijo <- (airquality)
datos  <-  airquality [complete.cases (airquality),]
datos

nrow(datos)
dim(datos)
sum(complete.cases ( airquality ))