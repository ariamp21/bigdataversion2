 funcionUno <- function(x,y){
   
  ## aqui va el desarrollo de la funcion. si modifico la funcion y la ejecuto al otro lado, tengo que volver a ejecutarla
   
   print("ahora voy a sumar")
   print(x+y)
}

 # el ultimo valor q se realiza, es el valor que retornará.  tb se puede q el print(x+y) puedo eliminar el print y sus parentesis 
 
funcionUno()
  
# cuando la funcion no aparezca puedo poner source(nombre que le puse al guardarlo en la carpeta)

# Receta de diseño:

# Realizar el desarrollo de la velocidad de un cuerpo en relacion al tiempo, donde Veloc = Dist/Tiempo
# poner valores de entrada y salida

# function velocidad(Double , Double) -> Double 

# Test velocidad(10,2) -> 5


funcionVelocidad <- function(d,t){
  print("ahora voy a dividir")
  print(d/t) 
  
  
  
  
}
# Realizar funcion resto con tres variables

funcionResto <- function(x, y, z){
  print ("ahora haré la funcion resto")
 x*y-(z*trunc((x*y)/z))
  
  
}
funcionResto(3,4,7)

print("otra forma de realizarlo")

resto <- function(x,y,z){
  
  (x*y)%%z
}

VariableResto <- resto(3,4,7)

#AreaCirculo: float -> float
#DEF: Calcular el área de un círculo con radio "radio"
#Ej: 2 -> 12.56
source ("miPrimerScript.R")

variableSiete <- funcionAreaCirculo(2)


#Tarea 2: 
#AnilloCirculo: float float -> float
#DEF: Calcular el área del anillo del círculo con radio "radioGrande" y "radioPequeño"
#Ej: 2,1 -> 9.4245 
#Considerar que hay q poner los datos en orden, el R grande para restarle el R pequeño
source ("miPrimerScript")

variableOcho <- funcionAnilloCirculo(2,1)
