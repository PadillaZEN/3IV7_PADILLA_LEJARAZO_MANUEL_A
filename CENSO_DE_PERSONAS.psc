Algoritmo CENSO_DE_PERSONAS
	// Definir variables
	Definir nPersonas, nAnios, anioConsulta Como Entero
	Definir nacimientos, fallecimientos Como Entero
	Definir i, personasVivas, edadMasJoven, edadMasAnciana, edadPersona Como Entero
	
	// Leer el n�mero de personas
	Escribir "Ingrese el n�mero de personas en el censo: "
	Leer nPersonas
	
	// Leer los datos de las personas (nacimiento y fallecimiento)
	Para i=1 Hasta nPersonas Hacer
		Escribir "Ingrese el a�o de nacimiento de la persona ", i, ": "
		Leer nacimientos
		Escribir "Ingrese el a�o de fallecimiento de la persona ", i, ": "
		Leer fallecimientos
	FinPara
	
	// Leer el n�mero de a�os a consultar
	Escribir "Ingrese el n�mero de a�os a consultar: "
	Leer nAnios
	
	Para j=1 Hasta nAnios Hacer
		// Leer el a�o de consulta
		Escribir "Ingrese el a�o a consultar: "
		Leer anioConsulta
		
		// Inicializar variables para este a�o de consulta
		personasVivas = 0
		edadMasJoven = 9999 // Un n�mero muy grande
		edadMasAnciana = -1 // Un n�mero muy peque�o
		
		// Recorrer todas las personas para verificar si estaban vivas en el a�o consultado
		Para i=1 Hasta nPersonas Hacer
			Si nacimientos <= anioConsulta Y fallecimientos >= anioConsulta Entonces
				// La persona estaba viva en ese a�o
				personasVivas = personasVivas + 1
				edadPersona = anioConsulta - nacimientos
				
				// Verificar si es la persona m�s joven
				Si edadPersona < edadMasJoven Entonces
					edadMasJoven = edadPersona
				FinSi
				
				// Verificar si es la persona m�s anciana
				Si edadPersona > edadMasAnciana Entonces
					edadMasAnciana = edadPersona
				FinSi
			FinSi
		FinPara
		
		// Mostrar los resultados para el a�o consultado
		Escribir "En el a�o ", anioConsulta, " hab�a ", personasVivas, " personas vivas."
		Si personasVivas > 0 Entonces
			Escribir "La persona m�s joven ten�a ", edadMasJoven, " a�os."
			Escribir "La persona m�s anciana ten�a ", edadMasAnciana, " a�os."
		Sino
			Escribir "No hab�a personas vivas en ese a�o."
		FinSi
	FinPara
	
FinAlgoritmo
