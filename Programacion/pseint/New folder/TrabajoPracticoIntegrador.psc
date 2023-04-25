Algoritmo TrabajoPracticoIntegrador
	Definir cantidadChoferes, i, cuil, buscarCuil, opcion Como Entero
	Definir kmLunes, kmMartes, kmMiercoles, kmJueves, kmViernes Como Entero
	Definir nombre, apellido Como Caracter
	Definir kmSemanal, salarioSemanal Como Real
	Definir valido Como Logico
	
	
	Escribir "Ingrese la cantidad de choferes"
	Leer cantidadChoferes
	
	Dimension cuil[cantidadChoferes], nombre[cantidadChoferes], kmSemanal[cantidadChoferes], apellido[cantidadChoferes], kmLunes[cantidadChoferes], kmMartes[cantidadChoferes], kmMiercoles[cantidadChoferes], kmJueves[cantidadChoferes], kmViernes[cantidadChoferes]
	Dimension salarioSemanal[cantidadChoferes]
	
	Para i = 0 Hasta cantidadChoferes-1 Con Paso 1 Hacer
		
		Escribir "Ingrese el CUIL"
		Leer cuil[cantidadChoferes]
		//valido = validarCUIL(cuil)
		
		Escribir "Ingrese Nombre"
		Leer nombre[cantidadChoferes]
		Escribir "Ingrese Apellido"
		Leer apellido[cantidadChoferes]
		
		Escribir "km conducidos dia lunes"
		Leer kmLunes[cantidadChoferes]
			Mientras kmLunes[cantidadChoferes] > 1000
				Escribir "el chofer puede conducir hasta 1000 kilometros por dia"
				Leer  kmLunes[cantidadChoferes]
			FinMientras
			
		Escribir "km conducidos dia martes"
		Leer kmMartes[cantidadChoferes]
			Mientras kmMartes[cantidadChoferes] > 1000
				Escribir "el chofer puede conducir hasta 1000 kilometros por dia"
				Leer  kmMartes[cantidadChoferes]
			FinMientras
		
		Escribir "km conducidos dia miercoles"
		Leer kmMiercoles[cantidadChoferes]
			Mientras kmMiercoles[cantidadChoferes] > 1000
				Escribir "el chofer puede conducir hasta 1000 kilometros por dia"
				Leer  kmMiercoles[cantidadChoferes]
			FinMientras
			
		Escribir "km conducidos dia jueves"
		Leer kmJueves[cantidadChoferes]
			Mientras kmJueves[cantidadChoferes] > 1000
				Escribir "el chofer puede conducir hasta 1000 kilometros por dia"
				Leer  kmJueves[cantidadChoferes]
			FinMientras
		
		Escribir "km conducidos dia viernes"
		Leer kmViernes[cantidadChoferes]
			Mientras kmViernes[cantidadChoferes] > 1000
				Escribir "el chofer puede conducir hasta 1000 kilometros por dia"
				Leer  kmViernes[cantidadChoferes]
			FinMientras
		
		kmSemanal[cantidadChoferes]= kmLunes[cantidadChoferes] + kmMartes[cantidadChoferes] + kmMiercoles[cantidadChoferes] + kmJueves[cantidadChoferes] + kmViernes[cantidadChoferes]
		salarioSemanal[cantidadChoferes]= kmSemanal[cantidadChoferes] * 10
		Escribir kmSemanal[cantidadChoferes]
		Escribir salarioSemanal[cantidadChoferes]
	Fin Para
	
	Repetir
		Escribir "1. Mostrar lista de choferes ordenada por Apellido y Nombre."
		Escribir "2. Mostrar lista de choferes ordenada por cantidad de kilómetros conducidos en la semana."
		Escribir "3. Mostrar lista de choferes con su salario semanal."
		Escribir "4. Buscar por Chofer."
		Escribir "5. Mostrar lista de choferes con promedio de kilómetros conducidos en la semana."
		Escribir "6. Mostrar estadística de choferes."
		Escribir "7. Salir."
		Leer opcion
		
		Segun opcion Hacer
			1:
				choferesNombreCompleto(cuil, apellido, nombre, cantidadChoferes)
				
			4:
				buscarChofer(cuil, buscarCuil, nombre, apellido, cantidadChoferes,kmLunes, kmMartes, kmMiercoles, kmJueves, kmViernes)
		Fin Segun
		
	Hasta Que opcion <> 7
FinAlgoritmo
SubProceso valido = validarCUIL(cuil)
	Definir tamanio, posicion Como Entero
	Definir valido como logico
	
	Si tamanio <10 o tamanio >11
		valido=Falso
	FinSi
	
FinSubProceso

SubProceso  choferesNombreCompleto(cuil, apellido, nombre, cantidadChoferes)
	
	Definir pos_menor Como Entero
	definir aux Como caracter
	Definir i,j Como Entero
    
    cant<-0
    // ordenar
    Para i<-0 Hasta cantidadChoferes-2 Hacer
        // busca el menor entre i y cant
        pos_menor<-i
        Para j<-i+1 Hasta cantidadChoferes-1 Hacer
            Si apellido[j]<apellido[pos_menor] Entonces
                pos_menor<-j
            FinSi
        FinPara
        // intercambia el que estaba en i con el menor que encontro
        aux<-apellido[i]
        apellido[i]<-apellido[pos_menor]
        apellido[pos_menor]<-aux
    FinPara    
    
    // mostrar como queda la lista
    Escribir "La lista ordenada es:"
    Para i<-0 Hasta cant-1 Hacer
        Escribir "   ",apellido[i]
    FinPara
FinSubProceso

SubProceso buscarChofer(cuil, buscarCuil, nombre, apellido, cantidadChoferes,kmLunes, kmMartes, kmMiercoles, kmJueves, kmViernes)
	Escribir "Escriba el cuil del chofer a buscar"
	Leer buscarCuil
	Definir i, encontrado Como Entero
	
	Para i=0 Hasta cantidadChoferes-1 Con Paso 1 Hacer
		Si buscarCuil == cuil[i] Entonces
			encontrado = 1
			Escribir "El chofer con cuil numero: " cuil[i]
			
			Escribir Sin Saltar " con nombre " nombre[i] 
			
			Escribir Sin Saltar " y apellido " apellido[i]
			
			Escribir Sin Saltar "realizo los siguientes kilometros de lunes a viernes: "
			
			Escribir kmLunes[i]," " kmMartes[i]," " kmMiercoles[i]," "  kmJueves[i]," " kmViernes[i]
		FinSi
		
	Fin Para
	Si encontrado == 0 Entonces
		Escribir "No existe chofer con ese cuil"
	Fin Si

FinSubProceso
	