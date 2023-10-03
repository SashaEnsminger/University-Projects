#programmed in R

cols <- colorRampPalette(c("black","darkgray","gray","white"))(11)
xmin = -1.5
xmax = 0.6
nx = 500
ymin = -1.0
ymax = 1.0
ny = 500
n=200

# variables
x <- seq(xmin, xmax, length.out=nx)
y <- seq(ymin, ymax, length.out=ny)
c <- outer(x,y*1i,FUN="+")
z <- matrix(0.0, nrow=length(x), ncol=length(y))
k <- matrix(0.0, nrow=length(x), ncol=length(y))

for (rep in 1:n) { 
  print(rep)
  index <- which(Mod(z) < 2)
  z[index] <- z[index]^2 + c[index]
  k[index] <- k[index] + 1
}

image(x,y,k, col=cols)

