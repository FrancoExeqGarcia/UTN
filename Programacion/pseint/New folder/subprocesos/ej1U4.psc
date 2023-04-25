Algoritmo sin_titulo
	Definir dato Como Caracter
	Definir edad Como Entero
	datosPersona(dato, edad)
	mostrarDato(dato, edad)
FinAlgoritmo

SubProceso datosPersona(dato Por Referencia, edad Por Referencia)

	Escribir "Ingrese nombre y apellido de la persona"
	Leer dato
	Escribir "Ingrese la edad de la persona"
	Leer edad
	Escribir ""
FinSubProceso

SubProceso mostrarDato(dato, edad)
	Escribir "los datos de la persona son los siguientes: "
	Escribir dato
	Escribir edad
FinSubProceso
	