Algoritmo sin_titulo
	Definir  i,j, num Como Entero	
	Definir  Matriz Como Entero
	Dimension Matriz[3,3]
	
	Escribir "Ingresar una matriz de 3x3 y mostrar la diagonal principal"
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Escribir Sin Saltar "Datos fila: "
		Escribir i + 1
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			Escribir  Sin Saltar "Ingrese un numero"
			Leer num
			Matriz[i,j] = num
		Fin Para
	Fin Para
	Escribir "Mostrando la diagonal secundaria"
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			Si (i == 2-j) Entonces
				Escribir  Matriz[i,j] 
			Fin Si

		Fin Para
	Fin Para
		
	
FinAlgoritmo
