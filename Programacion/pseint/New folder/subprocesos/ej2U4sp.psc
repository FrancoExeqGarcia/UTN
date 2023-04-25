Proceso ej2U4sp
	definir num1, num2, resultado Como Entero
	Escribir "ingrese dos numeros"
	leer num1
	Leer num2
	Escribir "el resultado en funcion de " num1 " + " num2 " = " suma(num1,num2)
	sumaProceso(num1,num2, resultado)
	Escribir "el resultado en subproceso de " num1 " + " num2 " = " resultado
FinProceso

Funcion resultado<-suma(num1,num2)
	Definir resultado Como Entero
	resultado=num1+num2
FinFuncion

SubProceso sumaProceso(num1,num2, resultado Por Referencia)
	resultado=num1+num2
FinSubProceso
