Algoritmo MIENTRAS_100_NATURALES
	Definir n, repeti Como Entero
	repeti <- 1
	Mientras repeti=1 Hacer
		n <- 1
		Mientras n<=100 Hacer
			Escribir n
			n <- n+1
		FinMientras
		Escribir '�Quieres repetir el c�lculo? (1 = S�, 0 = No)'
		Leer repeti
	FinMientras
	Escribir 'El programa a finalizado.'
FinAlgoritmo
