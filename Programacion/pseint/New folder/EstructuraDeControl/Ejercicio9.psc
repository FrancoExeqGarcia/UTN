Proceso ej9
	//Ingresar los resultados del parcial para los alumnos de un curso y al finalizar informar
		//el promedio de notas. Se desconoce la cantidad de notas a ingresar. El sistema le
		//preguntará al usuario si quiere ingresar otro parcial o si ya terminó.
	Definir acumulador, contador, nota, promedio Como Real
	Definir mensaje Como Caracter
	acumulador = 0
	contador = 0
	Repetir
		Escribir "ingrese una nota"
		Leer nota
		Mientras nota >10 o nota <0 Hacer
			Escribir "ingrese una nota valida"
			Leer nota
		FinMientras
		acumulador= acumulador + nota
		contador = contador + 1
		Escribir "queres ingresar otra nota?"
		Leer mensaje
		Mientras mensaje <> "si" y mensaje <> "no" Hacer
			Escribir "ingreso una respuesta incorrecta, escriba si o no para seguir trabajando"
			Leer mensaje
		FinMientras
	Mientras Que mensaje = "si"
	promedio = acumulador / contador
	Escribir "el promedio de las notas es ", promedio
FinProceso
