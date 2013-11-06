vector <- c(1,2,3,4)
vector
library(raster)
r <- raster(nrow=20, ncol=20)
randomVector <- rnorm(n=20)
randomVector
plot(r)
data(cars)
data
plot(cars)

library(sp)
data(meuse.grid)
plot(meuse.grid)
?meuse.grid
data(meuse.grid)
coordinates(meuse.grid) = ~x+y
proj4string(meuse.grid) <- CRS("+init=epsg:28992")
gridded(meuse.grid) = TRUE
spplot(meuse.grid)

vector <- c(1,2,3,4,5,6,76,1,1,13,41,41,2,3,2,1,3,4,5,1,2)
vector[vector == 3, 4] <-NA
vector
vector[vector ==3] <- NA
vector
vector[vector ==4] <- NA
vector[is.na(vector)] <- 4
vector[vector %in% c(2,5)] <- NA
vector

hello <- function(name){
  out <- paste('Hello', name)
  return(out)
}
hello(r)

hello <- function(name){
  if(is.character(name)){
  out <- paste('Hello', name)
  } else if(is.numeric(name)){
    out <- paste('Hello', name)
  warning('object of class character expected')
  } else {
    stop('object of class character expected')
  }
  return(out)
}


square <- function(x){
  out <- x * x
  return(out)
}
square(3)
list <- list(1,2,3,4,5,6,7,8,9)
out <- c()
for(i in 1:length(list)){
  out[i] <- square(list[[i]])
}
out

out2 <- c()
list2 <- list(1,2,3,4, 'wageningen',5,6,7,8,9)
for(i in 1:length(list2)){
  out2[i] <- trysquare(list2[[i]])
}
out2

trysquare <- function(x){
  s <- try(square(x))  
  return(s)
}

out2 <- c()
list2 <- list(1,2,3,4, 'wageningen',5,6,7,8,9)
for(i in 1:length(list2)){
  out2[i] <- trysquare(list2[[i]])
}
out2