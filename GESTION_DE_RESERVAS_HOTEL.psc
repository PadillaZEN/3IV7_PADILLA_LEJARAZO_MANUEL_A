Algoritmo GESTION_DE_RESERVAS_HOTEL
	// Definir variables
	Definir habitaciones Como L�gico
	Definir opcion, numHabitacion, habitacionesOcupadas Como Entero
	Definir fechaEntrada, fechaSalida Como Cadena
	// Inicializar las habitaciones como disponibles (Falso)
	Para i<-1 Hasta 100 Hacer
		habitaciones <- Falso
	FinPara
	Repetir
		// Mostrar el men�
		Escribir 'SISTEMA DE GESTI�N DE RESERVAS'
		Escribir '1. Registrar Reserva'
		Escribir '2. Cancelar Reserva'
		Escribir '3. Consultar Disponibilidad'
		Escribir '4. Gestionar Ocupaci�n'
		Escribir '5. Salir'
		Escribir 'Ingrese una opci�n: '
		Leer opcion
		// Procesar la opci�n seleccionada
		Si opcion=1 Entonces
			Escribir 'REGISTRO DE RESERVA'
			Escribir 'Ingrese el n�mero de habitaci�n (1-100): '
			Leer numHabitacion
			Si habitaciones=Falso Entonces
				Escribir 'Ingrese la fecha de entrada (DD/MM/AAAA): '
				Leer fechaEntrada
				Escribir 'Ingrese la fecha de salida (DD/MM/AAAA): '
				Leer fechaSalida
				habitaciones <- Verdadero
				Escribir 'Reserva confirmada para la habitaci�n ', numHabitacion
			SiNo
				Escribir 'La habitaci�n ', numHabitacion, ' ya est� reservada.'
			FinSi
		SiNo
			Escribir 'CANCELAR RESERVA'
			Escribir 'Ingrese el n�mero de habitaci�n a cancelar: '
			Leer numHabitacion
			Si habitaciones=Verdadero Entonces
				habitaciones <- Falso
				Escribir 'Reserva cancelada para la habitaci�n ', numHabitacion
			SiNo
				Escribir 'La habitaci�n ', numHabitacion, ' no tiene reserva.'
			FinSi
			Escribir 'CONSULTA DE DISPONIBILIDAD'
			Para i<-1 Hasta 100 Hacer
				Si habitaciones=Falso Entonces
					Escribir 'La habitaci�n ', i, ' est� disponible.'
				FinSi
			FinPara
			Escribir 'GESTI�N DE OCUPACI�N'
			habitacionesOcupadas <- 0
			Para i<-1 Hasta 100 Hacer
				Si habitaciones=Verdadero Entonces
					habitacionesOcupadas <- habitacionesOcupadas+1
				FinSi
			FinPara
			Escribir 'El porcentaje de ocupaci�n es: ', (habitacionesOcupadas/100)*100, '%'
		FinSi
	Hasta Que opcion=5
	Escribir 'Saliendo del sistema...'
FinAlgoritmo
