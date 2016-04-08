Completos <- function(directorio="~/specdata/",id = 1:332){
  fuego <- vector("numeric",0)
  setwd(directorio)
files  <- list.files(path="~/specdata/")
tmp <- lapply(files, read.csv, header = TRUE)
length(fuego) <- length(fuego)
  for(x in id){
  y <- tmp[[x]]
  t <- y [complete.cases(y),]
  fuego[x] <- nrow(t)
  }
print(na.omit(data.frame(ID=id,nobs=na.omit(fuego))))
}

