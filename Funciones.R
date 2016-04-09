# Función 1
mediacontaminante <- function(directorio="~/specdata/",contaminante="sulfate",id = 1:332){
  setwd(directorio)
  files <- list.files(path="~/specdata/")
  
  de <- read.csv(files[id[1]],header=TRUE)
  
  for (i in id){
    if (i!=id[1]) {de <- rbind(de,read.csv(files[i],header=TRUE))}
  }
  
  if(contaminante =="sulfate"){
    mean(de$sulfate,na.rm=T)
  } else if(contaminante=="nitrate"){
    mean(de$nitrate,na.rm=T)  
  }
}

# Función 2
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
  nobs <- na.omit(fuego)
  data.frame(id,nobs)
}

# Función 3
corr <- function(directorio="~/specdata/", horizonte=0) {
  dato <- Completos()
  kor <- dato[dato["nobs"] > horizonte,]$id
  dato1 <- numeric()
  
  for (i in kor) {
    n <- read.csv(paste(directorio,"/", formatC(i, width = 3, flag = "0"),".csv", sep = "")) 
    hijo<- n[complete.cases(n),]
    dato1 <- c(dato1 ,cor(hijo$sulfate,hijo$nitrate))    
  }                            
  
  dato1
}




