z <- 100
caminata <- function(y){
  fuego <- vector("numeric",0)
  for(i in 1:y){
    length(fuego) <- length(fuego)+1
    fuego[i] <- z
    moneda <- rbinom(1,1,0.5)
    
    if(moneda==1){
      z <- z+1
    } else {
      z <- z-1  
    }
    
    fuego[i] <- z
  } 
  print(fuego) 
  plot(fuego,type="l")
} 