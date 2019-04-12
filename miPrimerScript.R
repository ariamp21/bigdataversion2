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

# Funciones

 funcionUno()
 