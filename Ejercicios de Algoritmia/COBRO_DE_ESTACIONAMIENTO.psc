Algoritmo COBRO_DE_ESTACIONAMIENTO
	// Definición de variables
	Definir horaEntrada, minutosEntrada, horaSalida, minutosSalida Como Entero
	Definir totalHoras, totalMinutos, minutosTotales Como Entero
	Definir minutosRestantes, fracciones15Minutos Como Entero
	Definir totalCobro Como Real
	// Solicitar los datos de entrada
	Escribir 'Ingrese la hora de entrada (formato 24 horas): '
	Leer horaEntrada
	Escribir 'Ingrese los minutos de entrada (0-59): '
	Leer minutosEntrada
	Escribir 'Ingrese la hora de salida (formato 24 horas): '
	Leer horaSalida
	Escribir 'Ingrese los minutos de salida (0-59): '
	Leer minutosSalida
	// Calcular el tiempo total en minutos
	totalHoras <- horaSalida-horaEntrada
	totalMinutos <- minutosSalida-minutosEntrada
	Si totalMinutos<0 Entonces
		totalMinutos <- totalMinutos+60
		totalHoras <- totalHoras-1
	FinSi
	minutosTotales <- (totalHoras*60)+totalMinutos
	// Si el tiempo es menor a 15 minutos, no se cobra nada
	Si minutosTotales<15 Entonces
		totalCobro <- 0
	SiNo
		// Calcular cobro por horas completas
		// Trunc es para division sin decimal y MOD es para solo dar el residuo de la division
		totalCobro <- Trunc(minutosTotales/60)*15
		// Calcular minutos restantes después de las horas completas
		minutosRestantes <- minutosTotales MOD 60
		// Cobrar por fracciones de 15 minutos adicionales
		Si minutosRestantes>0 Entonces
			fracciones15Minutos <- minutosRestantes/15
			// Cobrar 6 pesos por cada fracción de 15 minutos
			totalCobro <- totalCobro+(fracciones15Minutos*6)
		FinSi
	FinSi
	// Mostrar el total a pagar
	Escribir 'El total a pagar es de: ', totalCobro, ' pesos'
FinAlgoritmo
