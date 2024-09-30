Algoritmo CENSO_DE_PERSONAS
	// Definir variables
	Definir nPersonas, nAnios, anioConsulta Como Entero
	Definir nacimientos, fallecimientos Como Entero
	Definir i, personasVivas, edadMasJoven, edadMasAnciana, edadPersona Como Entero
	
	// Leer el número de personas
	Escribir "Ingrese el número de personas en el censo: "
	Leer nPersonas
	
	// Leer los datos de las personas (nacimiento y fallecimiento)
	Para i=1 Hasta nPersonas Hacer
		Escribir "Ingrese el año de nacimiento de la persona ", i, ": "
		Leer nacimientos
		Escribir "Ingrese el año de fallecimiento de la persona ", i, ": "
		Leer fallecimientos
	FinPara
	
	// Leer el número de años a consultar
	Escribir "Ingrese el número de años a consultar: "
	Leer nAnios
	
	Para j=1 Hasta nAnios Hacer
		// Leer el año de consulta
		Escribir "Ingrese el año a consultar: "
		Leer anioConsulta
		
		// Inicializar variables para este año de consulta
		personasVivas = 0
		edadMasJoven = 9999 // Un número muy grande
		edadMasAnciana = -1 // Un número muy pequeño
		
		// Recorrer todas las personas para verificar si estaban vivas en el año consultado
		Para i=1 Hasta nPersonas Hacer
			Si nacimientos <= anioConsulta Y fallecimientos >= anioConsulta Entonces
				// La persona estaba viva en ese año
				personasVivas = personasVivas + 1
				edadPersona = anioConsulta - nacimientos
				
				// Verificar si es la persona más joven
				Si edadPersona < edadMasJoven Entonces
					edadMasJoven = edadPersona
				FinSi
				
				// Verificar si es la persona más anciana
				Si edadPersona > edadMasAnciana Entonces
					edadMasAnciana = edadPersona
				FinSi
			FinSi
		FinPara
		
		// Mostrar los resultados para el año consultado
		Escribir "En el año ", anioConsulta, " había ", personasVivas, " personas vivas."
		Si personasVivas > 0 Entonces
			Escribir "La persona más joven tenía ", edadMasJoven, " años."
			Escribir "La persona más anciana tenía ", edadMasAnciana, " años."
		Sino
			Escribir "No había personas vivas en ese año."
		FinSi
	FinPara
	
FinAlgoritmo
