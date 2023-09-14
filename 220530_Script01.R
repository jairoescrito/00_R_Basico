'INSTALAR DE PAQUETES EN R'
install.packages("tidyverse")
library(tidyverse)
install.packages(c("nycflights13", "gapminder", "Lahman"))

'ESCRIBIR COMANDOS EN R, OPERACIONES, ORDENES'

1+1
1:100
6/3+1
6/(3+1)

'OBJETOS'

#Definición de objetos
#Para nombrar objetos no está permitido iniciar con un número o usar caracteres especiales como ^ , ! , $ , @ , + , - , / , *, :
a<-3
a
a+2
a*2
dado<-1:6 #"Vector Columna"
dado
a<-1:100

#Operaciones con los objetos

a-1
dado*dado
a/2
a-dado
t_dado<-t(dado) #"Vector Fila"
dado*t_dado
t_dado*dado
class(t_dado) #Consultar clase o tipo de datos

#Arreglos de datos

dado<-as.data.frame(1:6) #"Vector Columna"
t_dado<-t(dado) #"Vector fila"
class(dado)
class(t_dado)
t_dado<-as.data.frame(t_dado)
class(t_dado)
dado*t_dado
t_dado %*% dado #data frame no permite operaciones entre matrices
dado<-as.matrix(dado)


#Matrices

class(dado)
class(t_dado)
dado<-as.matrix(1:6) #"Vector Columna"
class(dado)
t_dado<-t(dado)
class(t_dado)
dado*dado #no es posible
dado%*%t_dado #multiplicación de matrices
t_dado%*%dado


#arreglos de datos "TABLAS"

names(dado)<-c("caras")
names(t_dado)<-c("uno","dos","tres","cuatro","cinco","seis")
class(dado)
class(t_dado)
dado<-as.data.frame(dado)
t_dado<-as.data.frame(t_dado)

dado["caras"]
dado[2]
t_dado["seis"]
t_dado[6]
dado*t_dado[6]
class(t_dado[6])
otro_dado<-t(t_dado)
class(otro_dado)

dado*as.integer(t_dado[6])
