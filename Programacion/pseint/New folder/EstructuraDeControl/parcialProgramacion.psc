Algoritmo parcialProgramacion
	Definir citaActual, acumuladorPrecioCitas , precioCitaActual, i como entero
	Definir debeContinuar Como Caracter
	
	Repetir
		
		Escribir "ingrese numero de cita actual"
		Leer citaActual
		Mientras citaActual <= 0 o citaActual > 20 Hacer
			Escribir "Numero de cita no valido"
			leer citaActual
		Fin Mientras
		//no pude hacer que los casos del switch comparen con >= y < entonces tuve que anidar ifs
		//Segun citaActual Hacer
		//	citaActual <= 3 :
		//		precioCitaActual  = 200
		//	citaActual > 3 Y citaActual <= 5:
		//		precioCitaActual = 150
		//	citaActual > 5 y  citaActual <= 8:
		//		precioCitaActual = 100
		//	De Otro Modo:
		//		precioCitaActual = 50
		//Fin Segun
		
		Si citaActual <= 3 Entonces
			precioCitaActual  = 200
		SiNo
			Si citaActual > 3 Y citaActual <= 5 Entonces
				precioCitaActual = 150
			SiNo
				Si citaActual > 5 y  citaActual <= 8 Entonces
					precioCitaActual = 100
				SiNo
					precioCitaActual = 50
				Fin Si
			Fin Si
		Fin Si
		acumuladorPrecioCitas = 0
		Para i<-1 Hasta citaActual Con Paso 1 Hacer
			//Segun i Hacer
			//	i <= 3 :
			//		acumuladorPrecioCitas = acumuladorPrecioCitas + 200
			//	i > 3 Y i <= 5:
			//		acumuladorPrecioCitas = acumuladorPrecioCitas + 150
			//	i > 5 y  i <= 8:
			//		acumuladorPrecioCitas = acumuladorPrecioCitas + 100
			//	De Otro Modo:
			//		acumuladorPrecioCitas = acumuladorPrecioCitas + 50
			//Fin Segun
			
			Si i <= 3 Entonces
				acumuladorPrecioCitas = acumuladorPrecioCitas + 200
			SiNo
				Si i > 3 Y i <= 5 Entonces
					acumuladorPrecioCitas = acumuladorPrecioCitas + 150
				SiNo
					Si i > 5 y  i <= 8 Entonces
						acumuladorPrecioCitas = acumuladorPrecioCitas + 100
					SiNo
						acumuladorPrecioCitas = acumuladorPrecioCitas + 50
					Fin Si
				Fin Si
			Fin Si
		Fin Para
		
		
		Escribir "Importe a abonar por la cita numero : ",citaActual, " $ " precioCitaActual
		Escribir "Costo del tratamiento hasta cita actual: $ ",acumuladorPrecioCitas
		Escribir  "Ingresa otro paciente S-SI, N-NO"
		Leer debeContinuar
		Mientras debeContinuar <> "s" y debeContinuar <> "n" Hacer
			Escribir "Opcion ingresada no valida(S-s-N-n)"
			Leer debeContinuar
		FinMientras
	Hasta Que debeContinuar = "n"
	
FinAlgoritmo
