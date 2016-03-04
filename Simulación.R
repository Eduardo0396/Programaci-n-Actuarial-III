n <- 100000
mensajes <- vector("character",n)
for(i in 1:n){
  y <- runif(1)
  if(y<=0.3){
    mensajes[i]<- "Mesaje 30%"
  } else if(y<=0.5){
    mensajes[i]<-"Mensaje 20% a"
  } else if(y<=0.7){
    mensajes[i]<-"Mensaje 20% b"
  } else if(y<=0.9){
    mensajes[i]<-"Mensaje 20% c"
  } else {
    mensajes[i]<-"Mensaje 10%"
  }
}
mensajes
plot(table(mensajes))