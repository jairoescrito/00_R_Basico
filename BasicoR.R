


rep(1:10, 30) #repetir los números de 1 a 10 30 veces
sequence(c(10,5,3)) #secuencia de números hasta 10, luego hasta 5 y luego hasta 3, este requiere usar "c" para que lo genere como vector

seq(0, 5, by=0.5) #secuencia de números de 0 a 5 incrementando en 0.5
seq(0, 5, length=20) #secuencia de 20 números entre 0 y 5

Factores_1<-gl(2, 6, labels=c("Uno", "Dos")) #Crear dos factores con dos niveles que se repiten 6 veces, a los niveles se les da nombre "uno" y "dos"
Factores_2<-factor(rep(1:2,5),levels=c(1,2),labels=c("Blanco","Negro")) #Crear factores (con dos niveles), 

x <- c(1,5,6,2,NA) #Valores nulos
is.na(x) #Conocer si un arreglo de datos tiene valores nulos
which(is.na(x)) #conocer la ubicación del valor (o valores) nulo
y <- x[!is.na(x)] #Eliminar los valores nulos
x[is.na(x)] <- 999 # Reemplazar el valor nulo


Datos<-seq(0,5,length=120) #Creo un vector de 120 números entre 0 y 5
Datos<-as.data.frame(Datos) #convertir en estructura dataframe
grupos<-gl(2,1,labels=c("Uno", "Dos")) #Crear dos niveles de factores repetidos una vez
Datos_Split<-split(Datos,grupos)

#Matrices: arreglos (arrays) de dos dimensiones, se usan para "organizar" datos del mismo tipo
#Arrays: es un termino para referirse a arreglos de datos multidimensionales

M1<-matrix(1:32,ncol=4, dimnames = list(c(),c("col1","col2","col3","col4"))) #crear una matriz con 4 columnas y con los números de 1 a 32, por defecto se organizan por columnas
M2<-matrix(ncol=2,nrow=2) #crear una matriz vacía de 2 filas y 2 columnas
A1<-array(c(1:4,5:8,9:12),dim= c(2,2,3)) #Array (arreglo matricial) multidimensional (3 dimensiones) 2x2x3

#Listas: Es un arreglo de datos que me permite agrupar diferentes tipos de datos o arreglos de datos en un solo elemento
Lista<-list(Datos, M1, A1)

#Data Frame: son "tablas u hojas de cálculo" que permitenm "organizar" datos de diferente tipo
df<-data.frame(Ciudades=c("Bogotá","Medellín","Cali"), Clima=c("Frío","Templado","Cálido"), TempMax=c("18°C", "26°C", "29°C"))
attach(df) #Puedo cargar a mi entorno de variables (columnas) las variables del dataframe
detach(df) #Descargar del entrono las variables del dataframe

##Graficos y regresiones lineales simples





##Graficos - función plot()
# Diagramas de dispersión (C-C, C-D, C-N)
# Diagrama de caja (D-C,)
# Grafico mosaico (D-D)
# Grafico de barras (D-N)

# Grafico de dispersión (boxplot)
Arboles<-as.data.frame(trees)
# Grafico de dispersión individual
plot(Arboles$Volume~Arboles$Height,xlab="Altura del árbol (en pies)",ylab="Volumen de madera obtenida (en pies cúbicos)")
#Girth = circunferencia del árbol
#Height = altura del árbol
#Volume = volumen de madera obtenida
#Grafico de densidad (permite conocer información de la probabilidad)
plot(density(Arboles$Volume, kernel='gaussian'), main = "Gráfico de densidad para volumen de madera producida por el árbol",
     ylab="Densidad")
plot(density(Arboles$Height, kernel='rectangular'), main = "Gráfico de densidad para la medida de la altura del árbol",
     ylab="Densidad")
plot(density(Arboles$Girth, kernel='triangular'), main = "Gráfico de densidad para la medida de la circunferencia del árbol",
     ylab="Densidad")

# Graficos de dispersión multiple, comparativo por pares de las variables numéricas
pairs(Arboles)
# Grafico de cajas o de bigotes (boxplot)
Insectos<-as.data.frame(InsectSprays)
boxplot(count~spray,data=Insectos,xlab="spray",
        ylab="No supervivientes")
# Histograma (gráfico de frecuencias)
hist(Insectos$count,main = paste("Histograma de uso de insecticidas"), 
     xlab = "Número de insectos vivos", ylab = "Cantidad de observaciones")
# Gráfico de barras
# Lectura de datos en formato CVS de origen externo (publicado en la Web)
Link<-"https://docs.google.com/spreadsheets/d/e/2PACX-1vT6OCIGawbsmlnCVlWzqQhuEy6tSBr_I6aq88PmFu4eCHOQErtYsShkD4fmDgChpu8v1S1o2o6X_H9d/pub?output=csv"
Cacao<-read.csv(Link)
# "Filtro" del dataset inicial  
Cacao_2018<-subset(Cacao,Cacao$AÑO==2018)
# Creación de tablña de frecuencias
Deptos<-as.data.frame(table(Cacao_2018$DEPARTAMENTO))
# Reducción del dataset a graficar
Deptos_Sub<-subset(Deptos,Deptos$Freq>=20)
# Gráfica de barras
barplot(Deptos_Sub$Freq, names.arg = Deptos_Sub$Var1)


