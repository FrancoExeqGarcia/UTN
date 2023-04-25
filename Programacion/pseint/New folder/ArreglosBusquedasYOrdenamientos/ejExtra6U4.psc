Proceso ejExtra6U4
	definir matriz,i,j Como Entero
	Dimension matriz[3,3]
	
	Escribir "ingrese numeros"
	Para i=0 hasta 2 con paso 1 Hacer
		para j=0 hasta 2 con paso 1 Hacer
			Escribir "numero en: " i "," j
			leer matriz[i,j]
		FinPara
		
	FinPara
	
	Escribir "matriz"
	Para i=0 hasta 2 con paso 1 Hacer
		para j=0 hasta 2 con paso 1 Hacer
			Escribir sin saltar" [ " matriz[i,j] " ] "
		FinPara
		Escribir " "
	FinPara
	
	Escribir " "
	Escribir "diagonal principal"
	Para i=0 hasta 2 con paso 1 Hacer
		para j=0 hasta 2 con paso 1 Hacer
			si i=j
				Escribir sin saltar" [ " matriz[i,j] " ] "
			SiNo
				Escribir sin saltar" [ "  " ] "
			FinSi
		FinPara
		Escribir " "
	FinPara
	
	Escribir " "
	Escribir "diagonal secundaria"
	Para i=0 hasta 2 con paso 1 Hacer
		para j=0 hasta 2 con paso 1 Hacer
			si i=2-j
				Escribir sin saltar" [ " matriz[i,j] " ] "
			SiNo
				Escribir sin saltar" [ "  " ] "
			FinSi
		FinPara
		Escribir " "
	FinPara
FinProceso

