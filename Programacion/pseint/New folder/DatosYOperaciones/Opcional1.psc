Algoritmo Opcional1
	Definir dim,i Como Entero
	Definir matriz1, matriz2, matriz3 Como Real
	
	Escribir "ingrese tamano del arreglo"
	Repetir
		leer dim
		si	dim<=2
			Escribir "invalido, mayor que dos"
		FinSi
		Mientras  Que dim<=2
		Dimension matriz1[dim], matriz2[dim], matriz3[dim]
		Escribir "ingrese los valores de la primer matriz"
		para i=0 Hasta dom-1 Con Paso 1 Hacer
				Leer matriz1[i]
		FinPara
		Escribir "ingrese los valores de la segunda matriz"
		para i=0 Hasta dom-1 Con Paso 1 Hacer
			Leer matriz2[i]
		FinPara
		para i=0 Hasta dom-1 Con Paso 1 Hacer
			matriz3[i] = matriz1[i]+matriz2[i]
		FinPara
		para i=0 Hasta dom-1 Con Paso 1 Hacer
			Escribir "la suma en la posicion ",i "es: ",matriz3[i]
		FinPara
FinAlgoritmo
