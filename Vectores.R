z <- 5
k <- 1
fuego <- vector("numeric",0)
while(z>=3 && z<=10){
  length(fuego) <- length(fuego)+1
  fuego[k] <- z
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){
    z <- z+1
    fuego[k] <- z
  } else {
    z <- z-1  
    fuego[k] <- z
  }
  k <- k+1
  if(k>=100000)break
}
print(fuego)
