Algoritmo Practica5Opcional
	definir cantidadPersonas, i, opcionMenu Como Entero
	Definir nombre, menu Como Caracter
	
	Escribir "ingrese la cantidad de personas"
	Leer cantidadPersonas
		
	Dimension nombre[cantidadPersonas], menu[cantidadPersonas]
	
	para i=0 Hasta cantidadPersonas-1 Con Paso 1 Hacer
		Escribir "ingrese el nombre"
		Leer nombre[i]
		menu[i]<-""
		Mientras menu[i]="" Hacer
			Escribir "Ingrese el tipo de menu"
			Escribir "1- tradicional"
			Escribir "2- vegano"
			Escribir "3- sin TACC"
			Leer opcionMenu
			
			Segun opcionMenu Hacer
				1:
					menu[i]<-"tradicional"
				2:
					menu[i]<-"vegano"
				3:
					menu[i]<-"sin TACC"
				De Otro Modo:
					Escribir "escriba una opcion correcta"
			Fin Segun
		Fin Mientras
	FinPara
	
	Escribir "los menues seleccionados son: "
	para i=0 Hasta cantidadPersonas-1 Con Paso 1 Hacer
		Escribir nombre[i] + " selecciono menu: " + menu[i]
	FinPara
FinAlgoritmo
