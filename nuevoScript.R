# Instalar paquete ggplot2
# install.packages('ggplot2')
library(-ggplot2)

variableUno <- 1
variableDos <- 5

variableUno <- 'a'

variableDos <- TRUE

variableTres <- "fui a la esquina y volvi"

variableTres <- 1.6

# Borre variabledos
rm(variableDos)

variableUno == variableDos

variableDos <- variableUno == variableDos

# Asigne valor dps del <- y genere negacion con !=
variableTres <- variableUno != variableDos

# Comparacion de or logico

FALSE || TRUE

# Comparacion de and logico

FALSE && TRUE

# Puedo ponerle valores mas grandes o extensos 
(variableUno < variableDos) || TRUE
(variableUno < variableDos) || (variableUno > variableDos)

# Lo anterior me daba verdadero, si lo niego con ! me dara falso
!((variableUno < variableDos) || (variableUno > variableDos))
!((variableUno < variableDos) && (variableUno > variableDos))

# puedo asignarle este valor a una nueva variable

variableCuatro <- ((variableUno < variableDos) || (variableUno > variableDos))

variableUno <- 1

# Operadores aritmeticos. en vez de poner la vble igual puedo ponerle un numero

variableUno <- variableUno + variableUno

# Funciones: sirven para realizar tareas repetitivas 

 funcionUno()
 
 # crear variable prueba por el error
 
 variableCuatro <- "hola" 
 rm(variableCuatro) 
 
 source("Funciones R.R")
 funcionUno(1,2) 

 variableUno <- funcionUno(1,2) 

 # Corroborando si la funcion sirve
 funcionVelocidad(10,5) 
 
 funcionResto(3,4,7)
 rm (list= ls ())
 
 #Tarea: para elevar puedo poner el gorro o doble asterisco **
 
 funcionAreaCirculo <- function (radio){
  print (pi*radio^2)
  #pi*radio^2
}
 #Tarea 2: 
 funcionAnilloCirculo <- function(radioGrande,radioPequeño){
   print (pi*radioGrande^2-pi*radioPequeño^2)
 }
 
 #Tarea 3:Puedo reutilizar las funcionaes que ya había utilizado. abs es solo para evitar el negativo en caso que no ponga en orden los radios grandes o pequeñso
 #funcionAnilloCirculo2 <- function(radioGrande,radioPequeño){
 # abs (funcionAreaCirculo(radioGrande)-funcionAreaCirculo(radioPequeño))
   
 #}
 
#FUNCIÓN NUREVA DEL ANILLO: pongo la funcion y abajo pongo la ecuación q me busco q realice
 
 funcionAnilloCirculo2 <- function(radio1,radio2){
   radio1**2*pi-radio2**2*pi
   }
 
 
 #Receta de diseño: 
 #Area del anillo de un circulo de otra manera: float float -> float
 # DEF: Calcular el área del anillo, restando el area del circulo grande menos el pequeño
 # Ej: 2, 1 -> 9,42
 
 
VariableDiez <- funcionAnilloCirculo2(2,1) 

#Tarea 4:
#Receta de diseño:
# Tiempo a casa de amigo: float float -> float
# DEF: Calcular el tiempo de demora de mi casa a la casa de mi amigo, como t= d/v
# Ej: 2 4 -> 0.5 

funcionTiempoAmigo <- function(distancia,velocidad){
  print (distancia/velocidad)
}
variableOnce <- funcionTiempoAmigo(2,4) 


#Accion If: Si la condicion es falsa. no realizará lo q está dentro del if.
#me daría si niego al falso. es decir, solo me imprime el resultado cndo es VDDRO.
#Me dará TRUE abajo solo cuando selecciono la operacion y ctrl+enter, los falsos no aparecen,
#si corro la funcion del if, solo me imprimirá el print
if(TRUE){
  print ("entró al if")
}

if(FALSE) {
  print ("entró al if")
    
  } 
  
if(!FALSE){
  print ("entro al if")
}

if (2+2==4){
    print ("entro al if")
  }
  
if (2+2==4 || 3+3==5){
  print ("entro al if")
}

if (2+2==4 && 3+3==5){
  print ("entro al if")
}


#Else: es cuando si es verdadero, pasará X cosa, cuando es falso, pasará otra.
#se aconseja poner el resultado con espacio para ordenarlo

if(TRUE){
  print ("entró al if")
}else{
  print("entro al else")
}

if(FALSE){
  print ("entró al if")
}else{
  print("entro al else")
}

#Ejercicio if + else: Si ocurre esto, TRUE, si no, else entra
funcionAnilloCirculo3 <- function(radio1,radio2){
 radio1 <- 2 
 radio2 <- 4
}


radio1<-2
radio2<-4

if(radio1 > radio2){
  funcionAnilloCirculo2(radio1,radio2)
}else{
  funcionAnilloCirculo2(radio2,radio1)
  
}

#Ejercicio de arriba by Amaru, en este caso cambié la funcion anillo circulo2 arriba
radio1 <- 2
radio2 <- 4
if(radio1>radio2){
  funcionAnilloCirculo2(radio1,radio2)
}else{
  funcionAnilloCirculo2(radio2,radio1)
}

#Ejercicio 3: Demuestre que es mayor, menor o igual a 0. Si se cumple la condicion, 
#me da este resultado, en caso contrario ocurre otro resultado, y si no, finalmente da el
#del else.
x <- 2

if(x>0){
 print("positivo")
}else if(x==0){
  print ("igual0")
}else{
  print ("negativo")
}

#qu� pasa si pongo texto? me da positivo, por lo que hay q arreglarlo
x <- -2 

if(x>0){
  print("positivo")
}else if(x==0){
  print ("igual0")
}else{
  print ("negativo")
}

#Crear nueva funcion de mayor menor

funcionMayoryMenor <- function(x){
if(x>0){
    print("positivo")
}else if(x==0){
    print ("igual0")
}else{
    print ("negativo")
  }
}  
funcionMayoryMenor(2)

#cuando queremos evitar q tome texto cndo quiero evaluar n�mero, debo ponerlo en
#primera condici�n, es decir, en el IF.

#Crear un if para descartar q sea texto y solo considerar n�meros: El true del final
#pruedo eliminarlo, debido a q la condicion que muestro es la vdd

funcionX <- function(x){
if(grepl("[A-Z a-z]",x)==TRUE){
  print ("texto")
}else if(x<0){
  print("negativo")
}else if(x>0){
  print("positivo")
}else{
  print("es cero")
}
funcionX(2)

#PREGUNTAAAAAAAAAR



#Crear una lista: cuando hago print me saldr� c/u de los elementos y su posici�n
lista1 <- list()
lista2 <- list("hola",1,2,"mundo")

print(lista1)
print(lista2)

#encontrar un elemento de tal posicion
lista2[2]

#agregar una vble a la lista
lista2 <- c(lista2,"Ariam")
print(lista2)

#length determina la cantidad de elementos q tiene la lista
lista2 <- c(lista2,"Dianita")
length(lista2)

#Para eliminar un elto de la lista, la llamo x su posicion pero en negativo
#sale el numero 1 pq puedo agregar listas dentro de las listas
print(lista2)
#solo estoy mostrando la lista sin el elto de la posicion 3, tb puedo eliminar" un rango
#lista2(-1:-5)
lista2[-3]

#si queremos realmente eliminar para siempre, debo asignarlo
lista2 <- lista2[-3]
print(lista2)

#para eliminar el �ltimo dato tb puedo ponerle length pq es el t�o total y luego se debe 
#reasignar para q lo lea
lista2[-length(lista2)]
lista2 <- lista2[-length(lista2)]


#Reescribir la posicion, q en vez de numerito me de el nombre 2=dos
lista2[2] <- "Dos"
print(lista2)

#Intercambiar elementos; tmp es variable temporal, rescato el valor de la 2, lo guardo, lo reemplazo y
#lo devuelvo
lista3 <- list(3,1)
tmp <- lista3[2]
lista3[2] <- lista3[1]
lista3[1] <- tmp
print(lista3)

#For o for-loop: Permite realizar frecuencias, va recorriendo un elto tras otro de manera
#automatica, existe una acci�n q se va repitiendo una vez q la condicion q establecimos
#se cumplan

#DEF for: La variable i que est� contenida dentro de la secuencia de 1 a 100
#puedo recorrer toda la lista si pongo for(i in 1:length(lista1))

for(i in 1:100){
  print(i)
}
#Tarea con d�cimas: Que con el for corriera la lista. 2 maneras.
for(i in 1:length(lista2)){
  print(lista2[i])
}
for(i in lista2){
  print(i)
}
#Tarea de q en vez de q corra con el print la lista, q sea x el if creado clase anterior
lista4 <- list("Ariam", "Boris", 21, 22) 
for(i in 1:length(lista4)){
  if(grepl("[A-Z a-z]",lista4[i])){
    print ("texto")
  }else if(lista4[i]<0){
    print("negativo")
  }else if(lista4[i]>0){
    print("positivo")
  }else{
    print("es cero")
  }
}

#Crear una funcion q contenga lo q hicimos para det si es -,+, 0 o texto y luego con el
#for la hago correr
check2valor <- function(elValor){
    if(grepl("[A-Z a-z]",elValor)){
      print ("texto")
    }else if(elValor<0){
      print("negativo")
    }else if(elValor>0){
      print("positivo")
    }else{
      print("es cero")
    }
}

for (w in 1:length(lista4)){
  check2valor(lista4[w])
}

#WHILE: Mientras cierto elto tenga un valor, pasa lo sgte con la otra. Paste concatena elementos
variable <- 0
while(TRUE){
  print("hola mundo",variable))
  variable <- variable + 1
}

variable <- 0
while (variable < 1000){
  print(paste("hola mundo ->", variable))
  variable <- variable + 1
}
#Tarea: Encontrar WHILE DO, teniendo ya la informaci�n, dps preguntas