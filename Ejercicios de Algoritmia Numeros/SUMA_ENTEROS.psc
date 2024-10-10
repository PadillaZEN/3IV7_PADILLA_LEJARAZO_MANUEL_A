Algoritmo SUMA_ENTEROS
	Definir N, Suma Como Entero
	RepetirComoEntero <- 1
	Mientras RepetirComoEntero=1 Hacer
		N <- 0
		Suma <- 0
		Escribir 'Desarrolla un algortimo que sume los numeros enteros del 1 al 10'
		Repetir
			N <- N+1
			Suma <- Suma+N
		Hasta Que N=10
		Escribir 'La suma es:', Suma
		Escribir '¿Quieres repetir el cálculo? (1 = Sí, 0 = No)'
		Leer RepetirComoEntero
	FinMientras
FinAlgoritmo
