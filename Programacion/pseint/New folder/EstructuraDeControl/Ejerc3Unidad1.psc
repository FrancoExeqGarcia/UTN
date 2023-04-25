Algoritmo Ejerc3Unidad1
	Definir peso, gramos, toneladas, libras, onzas Como Real
	Definir  instruccion Como Caracter
	Escribir "escriba su opcion deseada en kilos para transformar: "
	leer instruccion
	Escribir  "escriba la cantidad a convertir"
	Leer peso
	si instruccion = "gramos" Entonces
		gramos = peso * 1000
		Escribir  "los kilos convertidos son: ", gramos
		Finsi
		si instruccion = "toneladas" Entonces
			toneladas = peso * 0.0010000010799999059334
			Escribir  "los kilos convertidos son: ", toneladas
		FinSi
		si instruccion = "libras" Entonces
			libras = peso * 2.204625002841
			Escribir  "los kilos convertidos son: ", libras
		SiNo
			instruccion = "onzas" 
			onzas = peso * 35.274
			Escribir  "los kilos convertidos son: ", onzas
		FinSi
FinAlgoritmo
