

# Histogram
par(font=1,ps=20,family="serif")
hist(y1,col=rgb(0,0,1,0.6),freq = F,ylim = c(0,15),
     xlab = "Predicted probability of y",
     ylab = "",main = paste(""),breaks = 25)

hist(y2,col=rgb(1,0,0,0.3),add=T,freq = F,breaks = 25)
hist(y3,col=rgb(0,1,0,0.6),add=T,freq = F,breaks = 25)

legend(0.4,20, c("y1","y2","y3"),
      col=c("blue","red","green"),
      lwd=c(1,1,1),lty=c(1,1,1),bty="n")


# Density plots
par(font=1,ps=20,family="serif",mar=c(5,5,5,5))

plot(density(y1,adjust = 3),col="blue",lwd=2,
     xlab = "Predicted y",ylab = "Density",main = paste(""),
     ylim=c(0,15),xlim=c(0,1),bty="n")
lines(density(y2,adjust = 3),col="red",lwd=2)
lines(density(y3,adjust = 3),col="green",lwd=2)

legend(0.2,10, c("y1","y2","y3"),col=c("blue","red","green"),
      lwd=c(8,8,8),lty=c(1,1,1),bty="n",y.intersp=3)


# Plotting a probability distribution

tint <- c(0,10)

par(font=1,ps=24,family="serif",mar=c(7,7,4,2))

DN <- function(x){dnorm(x,4,0.9)} # replace dnorm() by any distribution of interest
curve(DN,lty=1,lwd=2,col=1,bty="n",axes=FALSE,xlab = "variable name",
      ylab = "probability density",from=tint[1], to=tint[2])
Axis(side=1,at = seq(0,10,by=2))
Axis(side=2,at = seq(0,1,by=0.1))













