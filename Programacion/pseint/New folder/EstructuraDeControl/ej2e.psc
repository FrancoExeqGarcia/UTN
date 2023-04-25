Algoritmo ej2
	Definir lado1, lado2, lado3	Como Entero	
	
	Escribir "escriba el primer lado"
	Leer  lado1
	Escribir "escriba el segundo lado"
	Leer  lado2
	Escribir "escriba el tercer lado"
	Leer  lado3
	
	Si lado1 = lado2 y lado2 = lado3 Entonces
		Escribir "es un triangulo equilatero"
	FinSi
	Si lado1 = lado2 y lado2 <> lado3 Entonces
		Escribir "es un triangulo isosceles"
	FinSi
	Si lado1 <> lado2 y lado2 <> lado3 Entonces
		Escribir "es un triangulo escaleno"
	FinSi
FinAlgoritmo
