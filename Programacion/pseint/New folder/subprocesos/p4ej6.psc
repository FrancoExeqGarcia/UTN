Proceso p4ej6
	definir lista Como Caracter
	definir posicion, opc Como Entero
	dimension lista[10]
	dimension posicion[10]
	lista[0] = "Pedro Gomez"
	lista[1] ="Martín Ceres"
	lista[2]="Ernestina Diaz"
	lista[3]="Gastón Bautista"
	lista[4]="Dalma Alvarez"
	lista[5]="Patricio Fernandez"
	lista[6]="Faustina Martinez"
	lista[7]="Andrea Perez"
	lista[8]="Hilda Lopez"
	lista[9]="León García"
	posicion[0]=7
	posicion[1]=6
	posicion[2]=1
	posicion[3]=2
	posicion[4]=8
	posicion[5]=3
	posicion[6]=10
	posicion[7]=9
	posicion[8]=4
	posicion[9]=5
	Repetir
		Escribir "Menu"
		Escribir "1- Lista corredores"
		Escribir "2- Lista mejores"
		escribir "3- Lista posiciones"
		escribir "4- Salir"
		Leer opc
		Mientras opc <> 1 y opc <> 2 y opc <> 3 y opc <> 4 Hacer
			Escribir "Opcion no valida, vuelva a ingresar " 
			leer opc
		Fin Mientras
		Segun opc Hacer
			1:
				nombres(lista)
			2:
				mejores(lista,posicion)
			3:
				muestra(lista,posicion)
			De Otro Modo:
				
		Fin Segun
	Mientras Que opc <> 4
	
FinProceso
SubProceso  nombres(lista)
	definir i Como Entero
	Escribir "Lista corredores"
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		escribir lista[i]
	Fin Para
FinSubProceso

SubProceso mejores(lista,posicion)
	definir i como entero
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Segun posicion[i] Hacer
			1:
				escribir lista[i] ," " , posicion[i]
			2:
				escribir lista[i] ," " , posicion[i]
			3:
				escribir lista[i] ," " , posicion[i]
			De Otro Modo:
		Fin Segun
	Fin Para
FinSubProceso

SubProceso muestra(lista, posicion)
	definir i como entero
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		escribir lista[i] ,"   ", posicion[i]
	Fin Para
FinSubProceso



