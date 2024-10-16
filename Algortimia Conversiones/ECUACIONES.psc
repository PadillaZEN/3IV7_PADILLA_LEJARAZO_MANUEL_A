Algoritmo ECUACIONES
	
	Definir a, b, c Como Real
	Definir discriminante, x1, x2, parteReal, parteImaginaria Como Real
	Definir repeti Como Entero

		Repetir
		
			Escribir "Ingrese el coeficiente a (de x^2):"
			Leer a
			Escribir "Ingrese el coeficiente b (de x):"
			Leer b
			Escribir "Ingrese el coeficiente c (t�rmino independiente):"
			Leer c
			
			discriminante = (b^2) - (4 * a * c)
			
			Si discriminante > 0 Entonces
				// Dos soluciones reales
				x1 = (-b + Raiz(discriminante)) / (2 * a)
				x2 = (-b - Raiz(discriminante)) / (2 * a)
				Escribir "La ecuaci�n tiene dos soluciones reales:"
				Escribir "x1 = ", x1
				Escribir "x2 = ", x2
			SiNo
				Si discriminante = 0 Entonces
					// Una soluci�n real (ra�z doble)
					x1 = -b / (2 * a)
					Escribir "La ecuaci�n tiene una soluci�n real (ra�z doble):"
					Escribir "x = ", x1
				SiNo
					// Soluciones complejas
					parteReal = -b / (2 * a)
					parteImaginaria = Raiz(Abs(discriminante)) / (2 * a)
					Escribir "La ecuaci�n tiene soluciones complejas:"
					Escribir "x1 = ", parteReal, " + ", parteImaginaria, "i"
					Escribir "x2 = ", parteReal, " - ", parteImaginaria, "i"
				FinSi
			FinSi
			
			// Preguntar si se quiere repetir el proceso
			Escribir "�Desea resolver otra ecuaci�n de segundo grado? (1 = S�, 2 = No)"
			Leer repeti
			Hasta Que repeti = 2 // El ciclo se repite hasta que el usuario elija no continuar
FinAlgoritmo
