Algoritmo sin_titulo
	Definir i, j Como Entero
	Definir pais, matriz Como Caracter
	Dimension matriz[3,4]
	
	matriz[0,0]= "Argentina"
	matriz[0,1]= "Buenos aires"
	matriz[0,2]= "Rosario"
	matriz[0,3]= "Cordoba"
	matriz[1,0]= "Colombia"
	matriz[1,1]= "Cali"
	matriz[1,2]= "Bogota"
	matriz[1,3]= "Santa Marta"
	matriz[2,0]= "Brasil"
	matriz[2,1]= "Brasilia"
	matriz[2,2]= "Rio de Janeiro"
	matriz[2,3]= "San pablo"
	
	Escribir "ingrese el pais"
	Leer pais
	
	Para i = 0 hasta 2 con paso 1 Hacer
		Para j=0 Hasta 3 Con Paso 1 Hacer
			Si matriz[i,0] = pais Entonces
				Escribir matriz[i,j]
			FinSi
		FinPara
	FinPara
FinAlgoritmo
