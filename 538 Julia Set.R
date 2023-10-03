#Programmed in R

JuliaImage <-
  function(imageN,centre,L,C) {
    #  Generates Julia Set on the given rectangle 
    #  on the complex plane.
    #
    #       z <- z^2 + C 
    #
    # Returns image matrix
    # 
    #   imageN : pixel size NxN
    #   centre : centre coordinate of the image
    #   L      : side length 
    #   C      : constant to be used to generate Julia set
    #
    delta <- L/(imageN)
    image <- array(0,c(imageN,imageN));
    Re <- Re(centre) - L/2.0 ;# Re is on the x-axis
    for(i in 1:imageN) {
      Im <- Im(centre) + L/2.0 ;# Im is on the y-axis
      for(j in 1:imageN) {
        z <- (Re + Im*1i)
        image[j,i] <- JuliaIterate(z,C)
        Im <- Im - delta 
      }
      Re <- Re + delta 
    }
    image <- image/max(image);# scale it. 
    return(image);
  }
JuliaIterate <-
  function(z,C) {
    #
    # Return number of iterations before
    # the value escapes to infinity
    #
    i <- 1 
    ins <- 1 
    while(i < 51) {
      i <- i+1
      z <- z*z + C
      if(abs(z) > 2 ) { ins <- i; break; }
    } 
    return(ins);
  }
imageN <- 2000
centre <- 0.0
L <- 6
C <- 0.32 + 0.043i
image_matrix <- JuliaImage(imageN, centre, L, C)
par(mar=c(0, 0, 0, 0))
image(image_matrix[350:1600, 1:1250], 
      col=hcl.colors(2000,  palette="Roma"),
      axes=FALSE, useRaster=TRUE)

