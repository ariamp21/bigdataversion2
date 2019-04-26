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
 funcionAnilloCirculo2 <- function(radioGrande,radioPequeño){
  abs (funcionAreaCirculo(radioGrande)-funcionAreaCirculo(radioPequeño))
   
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
  