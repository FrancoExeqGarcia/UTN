Algoritmo sin_titulo
	Definir cantidadSocios,edad, i, j, acumulador Como Entero
	Definir promedio Como Real
	
	Para i =0 Hasta 1 Con Paso 1 Hacer
		cantidadSocios = 0
		acumulador = 0
		Escribir "ingrese la cantidad de socios del club"
		Leer cantidadSocios
		para j = 0 Hasta cantidadSocios-1 Con Paso 1 Hacer
			edad = 0
			Escribir "ingrese la edad"
			Leer edad
			Mientras edad < 0 o edad > 100 Hacer
				Escribir "ingreso una respuesta incorrecta, escriba la edad correcta para seguir trabajando"
				Leer edad
			FinMientras
			acumulador = acumulador + edad
		FinPara
		promedio = acumulador / cantidadSocios
		Escribir "el promedio es", promedio
	FinPara
	Escribir "aca termino el para"
FinAlgoritmo
