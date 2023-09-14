### FASE 1. Instalar R y RStudio ###

## 1.3 Espacio de trabajo ##

# Explicación R Studio y secciones o "panes"

## 1.5 Ayuda ##

# Explicación consulta de ayuida en el pane "help"

## 1.6 Instalar paquetes de R ## 

# Instalación de paquetes (librerías)
install.packages("tidyverse")
install.packages("ggplot2")#
install.packages("openxlsx")

# Activación de librerías (paquetes)
library(tidyverse)
library(ggplot2)
library(openxlsx)


# El simbolo "#" se usa para hacer comentarios, se escribe al inicio de una linea del
# Script para inhabilitarla o simplemente se usa para escribir notas explicativas
# Al interior del código

## 1.4 Directorio de trabajo ##
# R trabaja con un directorio de trabajo definido, allí guardar archivos de script y otros
# documentos relacionados al espacio de trabajo en desarrollo

# Para saber cuál es el directorio de trabajo actual
getwd()

# Para modificar el directorio de trabajo
setwd("/home/jairoescrito/Documentos/TeslaCapacitaciones/R/R_Basico")

## 1.2 Tipos de datos (variables)

# Tipor de variables

# Escalar
a<-2 # Asignar un escalar a una variable
b<-5
Variable<-NULL # Crear una variable nula o vacía 

## Arreglos de datos

# Vector siemple
Vector<- rep(0:9)
Vector2<-rep(10:19)
Vector3<-rep(20:21)

# Vector tipo "arreglo"
Vector<-as.data.frame(Vector) # Convertir a marco de datos
x <- c(1,5,6,2,NA) # Otra forma de crear un vector, este incluye un valor nulo o missing value

# Arreglo tipo dataframe (marco de datos, similar a las tablas en excel)
df<-cbind(Vector,Vector2) # Adicionar al vector anterior otro como una columna
df<-rbind(Vector,Vector3) # Adicionar otro vector como una fila
df$tres<-rep(22:32) # Otra forma de adicionar vector como columna
nombres<-c("uno","dos") # para nombrar variables de un dataframe df se crea una variable con los nombres de cada columna
names(df)<-nombres # Se asignan los nombres de columnas al dataframe
df$uno # Puedo visualizar una de las columnas 
df[1,1] # Acceder a un valor específico dentro de un dataframe

# Arreglo tipo matriz
Matriz<-matrix(data = NA, nrow = 3, ncol = 3, byrow = FALSE,
               dimnames = NULL) # Se crea una matriz vacía
Matriz[1,1]<-2 # Asignar un dato a una posición dada de la matriz
Datos<- rep(1:9)
Matriz2<-matrix(Datos, nrow = 3, ncol = 3, byrow = TRUE,
                dimnames = NULL) # Crear una matriz con unos datos predeterminados en orden de filas

# Arreglo tipo lista
M1<-matrix(1:32,ncol=4, 
           dimnames = list(c(),c("col1","col2","col3","col4"))) 
          # Crear una matriz con 4 columnas y con los números de 1 a 32, por defecto se organizan por columnas
M2<-matrix(ncol=2,nrow=2)
df2<-data.frame(Ciudades=c("Bogotá","Medellín","Cali"), 
               Clima=c("Frío","Templado","Cálido"), 
               TempMax=c("18°C", "26°C", "29°C"))
Lista<-list(M1, M2, df)

## 1.1 Operadores ##
a <- as.integer(readline(prompt="Digite un número entero: "))
b <- as.integer(readline(prompt="Digite otro número entero: "))

# Arimético
a+b #Suma
b-a #Resta
a*b #Multiplicación
b/a #División
a^b #Potencia
a**b #Potencia
b%%a #Módulo (residuo), también se conoce como división entera aunque no es el termino apropiado

# Relacionales
a<b #Menor que
a<=b #menor o igual que
a>b #Mayor que
a>=b #Mayor o igual que
a==b #Exactamente igual
a!=b #Diferente de 

# Lógicos o comparativos
a | b # o
a & b # y
!a # no es verdadero
isTRUE(a) # es verdadero

# Orden de operadores (prioridad)
# 1	^
# 2	* /
# 3	+ -
# 4	< > <= >= == !=
# 5	!
# 6	&
# 7	|
# 8	<-

### FASE 2. Programación ### AJUSTES DE CURSO, ¡OJO! SIN ESTRUCTURA

#*Adelanto*#
#*Leer archivos csv*#
#*R Base tiene un lector de archivos CSV (Valores Separados por Comas - Comma Separate Values)
?read.csv
Datos<-read.csv("data.csv",header=TRUE,sep=",",dec = ",")
class(Datos) #Entrega el tipo de variable que es "Datos"
class(Datos[,1])
Datos[,1]<-as.Date(Datos[,1])
class(Datos[,1])

## 2.2 Condicional if else

if (class(Datos[,2])=="character"){
  cat("La columna ",names(Datos[2]),"es de tipo caracter")
} else{
  cat("La columna",names(Datos[2]),"no es de tipo caracter")
} 

## 2.3 Bucle for

ncol(Datos) #número de columnas de un data frame
length(Datos) #tamaño de un arreglo de datos, en el caso del dataframe son la cantidad de variables (columnas)
nrow(Datos) #número de filas de un data frame

# Opción navegando por las POSICIONES de un arreglo de datos, usando variable iterativa 
i <- 1 # Crear una variable iterativa, se usa para controlar el inicio y fin del bucle
for (i in 1:ncol(Datos)){
  if (class(Datos[,i])=="character"){
    cat("La columna",i,names(Datos[i]),"es de tipo caracter","\n")
  } else{
    cat("La columna",i,names(Datos[i]),"no es de tipo caracter","\n")
  }
} # For no requiere incrementar manualmente la variable iterativa

# Opción navegando por los ELEMENTOSde un arreglo de datos, no se usa variable iterativa
i<-1 # Aqui solo se usa para facilitar la impresión de los resultados
      # Resulta casi de adorno
for (x in Datos){
  if (class(x)=="character"){
    cat("La columna",i,names(x),"es de tipo caracter","\n")
  } else{
    cat("La columna",i,names(x),"no es de tipo caracter","\n")
  }
  i<-i+1 # El incremento es para facilitar los resutados en la impresión
}

## 2.4 Bucle while

i<-1 # De nuevo, variable iterativa para controlar el bucle
while (i<=ncol(Datos)){
  if (class(Datos[,i])=="character"){
    cat("La columna",i,names(Datos[i]),"es de tipo caracter","\n")
  } else{
    cat("La columna",i,names(Datos[i]),"no es de tipo caracter","\n")
  }
  i<-i+1 # Es totalmente necesario incrementar la variable iterativa
          # de lo contrario, entramos en un bucle infinito
}

## 2.1 Crear funciones

# El objetivo y potencial de las funciones es crear "herramientas" que permitan hacer tareas 
# repetitivas sin tener que reescribir el mismo código 

# 1) Función para calcula el módulo de dos números y si son múltiplos
# Función sin parámetros de entrada y con retorno de valores 

Multiplos<-function(){
  a <- as.integer(readline(prompt="Digite un número entero: "))
  b <- as.integer(readline(prompt="Digite otro número entero: "))
  modulo<-a%%b
  if (modulo == 0){
    cat(a,"es múltiplo de",b)
  } else {
    cat(a,"no es múltiplo de",b)
  }
  return(modulo)
}
x<-Multiplos() # Se deber�a ejecutar la función asignandola a una variable

# 2) Función para identificar el tipo de datos de cada columna de un data frame
# Función con un parámetro definido
ClaseDatos<-function(Data){ # Función con un parámetro definido 
  j<-1
  n<-ncol(Data)
  while (j<=n){
    if (class(Datos[,j])=="character"){
      cat("La columna",j,names(Datos[j]),"es de tipo caracter","\n")
    } else{
      cat("La columna",j,names(Datos[j]),"no es de tipo caracter","\n")
    }
    j<-j+1 # Es totalmente necesario incrementar la variable iterativa
    # de lo contrario, entramos en un bucle infinito
  }
}
ClaseDatos(Datos) # Se ejecuta la función incluyendo en los paréntesis el parámetro requerido

# Aplicación práctica de funciones 
Datos<-read.csv("data.csv",header=TRUE,sep=",",dec = ",")
# Para las variable que están en tipo caracter (texto) y deberían estar en otro formato se deben hacer ajustes
# 1) Convertir la variable a formato de fecha
Datos$atr_fecha_creacion<-as.Date(Datos$atr_fecha_creacion)
# 2) Convertir la variable a número. Esta variable incluye datos con caracteres especiales que deben ser eliminados primero
Datos$Ventas<-gsub("\\$","",x=Datos$Ventas);Datos$Ventas<-gsub("\\(","-",x=Datos$Ventas);Datos$Ventas<-gsub("\\)","",x=Datos$Ventas) 
Datos$Ventas<-as.numeric(Datos$Ventas)
# 3) Convertir la variable a número decimal. Esta variable incluye caracteres especiales que deben eliminarse
Datos$X.MC<-gsub("\\ %","",x=Datos$X.MC);Datos$X.MC<-gsub("\\,",".",x=Datos$X.MC)
Datos$X.MC<-as.numeric(Datos$X.MC);Datos$X.MC<-Datos$X.MC/100
# 4) Las últimas tres variables presentan la misma situación que la variable Datos$Ventas
# Es más práctico crear una función para dar tratamiento a esas variables
EliminarSignos<-function(V){
  V<-gsub("\\$","",x=V);V<-gsub("\\(","-",x=V);V<-gsub("\\)","",x=V) 
  V<-as.numeric(V)
  return(V)
}
# 5) Ajustar las demás variables con la función
Datos$Valor_neto<-EliminarSignos(Datos$Valor_neto)
Datos$Margen<-EliminarSignos(Datos$Margen)
Datos$Venta.a.costo<-EliminarSignos(Datos$Venta.a.costo)

## 2.7 Función sapply
?sapply
sapply(Datos, class) # Aplicar una función a un arreglo de datos y obtener 
                      # Los resultados en un vector
summary(Datos) # Genera un resumen de datos
# Para analizar los datos se requiere que ciertas variables no numéricas
# Esten definidas en niveles (o factores), esto es, claramente identificados todos los
# posibles valores que puede tomar una variable
DatosDef <- Datos %>% mutate_if(is.character, as.factor) # "mutate" es una familia de funciones de tidyverse
                                                        # que me simplifican la manipulación de datasets
sapply(DatosDef, class)
summary(DatosDef)
which(DatosDef$Venta.a.costo=="NaN")
DatosDef$Venta.a.costo[19]

## 2.7 Función apply
Resumen<-filter(DatosDef,Oficina.Ventas=="Tierrago Itagui")
Resumen<-filter(DatosDef,(Oficina.Ventas=="Tierrago Itagui"&atr_fecha_creacion>as.Date("2022-01-01")))
summary(Resumen)

