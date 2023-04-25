Algoritmo ejercicio2Unidad3
	Definir lado1, lado2, lado3 Como Entero
	Escribir  "ingrese el primer lado del triangulo"
	Leer lado1
	Escribir "ingrese el segundo lado del triangulo"
	Leer lado2
	Escribir "ingrese el tercer lado del triangulo"
	Leer lado3
	si lado1 = lado2 y lado2 = lado3
		Escribir "es equilatero"
	SiNo
		si lado1 <> lado2 y lado1 <> lado3 y lado2 <> lado3
			Escribir  "es escaleno"
		SiNo
			Escribir "es isosceles"
		FinSi
	FinSi
	
FinAlgoritmo
