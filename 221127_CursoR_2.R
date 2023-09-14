## Alguna literatura
## R para principiantes: https://bookdown.org/jboscomendoza/r-principiantes4/
## R for Data Science: https://r4ds.had.co.nz/
## Ggplot2: https://r-graph-gallery.com/index.html
## Plotly: https://plotly.com/r/
## Dygraphs: https://rstudio.github.io/dygraphs/


getwd()
setwd("C:/Users/jairo/Documents")

## 1.6 Instalación de paquetes en R
install.packages("data.table")
install.packages("tidyverse")
install.packages("caret")


Vector<- rep(0:9)
Vector<-as.data.frame(Vector)
Vector2<-rep(10:19)
Vector3<-rep(20:21)

Vector<-cbind(Vector,Vector2)
Vector<-rbind(Vector,Vector3)
Vector$tres<-c(rep(20:30))

nombres<-c("uno","dos") #para nombrar variables de un dataframe df
names(Vector)<-nombres
Vector$uno


Matriz<-matrix(data = NA, nrow = 3, ncol = 3, byrow = FALSE,
               dimnames = NULL)

Matriz[1,1]<-2
Variable<-NULL

Datos<- c(rep(1:9))
Matriz2<-matrix(Datos, nrow = 3, ncol = 3, byrow = TRUE,
                dimnames = NULL)



getwd()
setwd("C:/Users/jairo/Documents")


2%%2 #Residuo de división
3%%2

3**3
3^3


#a==b ## comparar iguales

#|# o
#&# Y
  






## 2.2 Condicional <If Else>
a <- 5
b <- 2

if (a!=b){
  print("No es verdadero")
} else if (a<b){
  print("a es menor")
} else if (a>b){
  print("a es mayor")
} else {
  print("Es verdadero")
}
# Recorriendo elementos de un vector
for(i in Vector2){
  print(i)
}
# Recorriendo por indices de un vector
i<-1
for (i in 1:length(Vector2)) {
  print(Vector2[i])
}

i<-1
while (TRUE) {
  print(Vector2[i])
  i<-i+1
  if (i==11){
    break
  }
}




if (a > b) {
  print("A wins!")
} else if (a < b) {
  print("B wins!")
} else {
  print("Tie.")
}

## 2.3, 2.4 Bucles (For, While)

dado <- c(1,2,3,4,5,6)
lances <- 


## 2.5, 2.6, 2.7 Familia de la función apply()
## https://rpubs.com/cconcharojas/familia_apply#:~:text=La%20funci%C3%B3n%20apply()%20en,%2C%20dataframe%2C%20lista%20o%20vector.