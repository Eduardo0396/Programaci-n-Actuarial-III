mediacontaminante <- function(directorio="~/specdata/",contaminante="sulfate",id = 1:332){
  setwd(directorio)
  files <- list.files(path="~/specdata/")
  
  de <- read.csv(files[id[1]],header=TRUE)
  
  for (i in id){
    if (i!=id[1]) {de <- rbind(de,read.csv(files[i],header=TRUE))}
  }
  
  if(contaminante =="sulfate"){
    mean(de$sulfate,na.rm=T)
  } else {
    mean(de$nitrate,na.rm=T)  
  }
}


mediacontaminante <- function(directorio="~/specdata/",contaminante="s",id = 1:332){
  setwd(directorio)
  files <- list.files(path="~/specdata/")
  
  de <- read.csv(files[id[1]],header=TRUE)
  
  for (i in id[-id[1]]){
    de <- rbind(de,read.csv(files[i],header=TRUE))
  }
  
  if(contaminante =="sulfate"){
    mean(de$sulfate,na.rm=T)
  } else {
    mean(de$nitrate,na.rm=T)  
  }
}
