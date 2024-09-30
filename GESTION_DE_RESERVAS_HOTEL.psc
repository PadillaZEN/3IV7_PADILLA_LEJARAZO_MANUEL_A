Algoritmo GESTION_DE_RESERVAS_HOTEL
	// Definir variables
	Definir habitaciones Como Lógico
	Definir opcion, numHabitacion, habitacionesOcupadas Como Entero
	Definir fechaEntrada, fechaSalida Como Cadena
	// Inicializar las habitaciones como disponibles (Falso)
	Para i<-1 Hasta 100 Hacer
		habitaciones <- Falso
	FinPara
	Repetir
		// Mostrar el menú
		Escribir 'SISTEMA DE GESTIÓN DE RESERVAS'
		Escribir '1. Registrar Reserva'
		Escribir '2. Cancelar Reserva'
		Escribir '3. Consultar Disponibilidad'
		Escribir '4. Gestionar Ocupación'
		Escribir '5. Salir'
		Escribir 'Ingrese una opción: '
		Leer opcion
		// Procesar la opción seleccionada
		Si opcion=1 Entonces
			Escribir 'REGISTRO DE RESERVA'
			Escribir 'Ingrese el número de habitación (1-100): '
			Leer numHabitacion
			Si habitaciones=Falso Entonces
				Escribir 'Ingrese la fecha de entrada (DD/MM/AAAA): '
				Leer fechaEntrada
				Escribir 'Ingrese la fecha de salida (DD/MM/AAAA): '
				Leer fechaSalida
				habitaciones <- Verdadero
				Escribir 'Reserva confirmada para la habitación ', numHabitacion
			SiNo
				Escribir 'La habitación ', numHabitacion, ' ya está reservada.'
			FinSi
		SiNo
			Escribir 'CANCELAR RESERVA'
			Escribir 'Ingrese el número de habitación a cancelar: '
			Leer numHabitacion
			Si habitaciones=Verdadero Entonces
				habitaciones <- Falso
				Escribir 'Reserva cancelada para la habitación ', numHabitacion
			SiNo
				Escribir 'La habitación ', numHabitacion, ' no tiene reserva.'
			FinSi
			Escribir 'CONSULTA DE DISPONIBILIDAD'
			Para i<-1 Hasta 100 Hacer
				Si habitaciones=Falso Entonces
					Escribir 'La habitación ', i, ' está disponible.'
				FinSi
			FinPara
			Escribir 'GESTIÓN DE OCUPACIÓN'
			habitacionesOcupadas <- 0
			Para i<-1 Hasta 100 Hacer
				Si habitaciones=Verdadero Entonces
					habitacionesOcupadas <- habitacionesOcupadas+1
				FinSi
			FinPara
			Escribir 'El porcentaje de ocupación es: ', (habitacionesOcupadas/100)*100, '%'
		FinSi
	Hasta Que opcion=5
	Escribir 'Saliendo del sistema...'
FinAlgoritmo
