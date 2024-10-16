Algoritmo CONTAR_POSITIVOS_NEGATIVOS
	Definir numero, cantidad_positivos, cantidad_negativos, total_numeros, repeti Como Entero
		
		Repetir
			
			cantidad_positivos = 0
			cantidad_negativos = 0
			
			Escribir "¿Cuántos números desea ingresar?"
			Leer total_numeros
			
			Para i = 1 Hasta total_numeros Con Paso 1 Hacer
				Escribir "Ingrese el número ", i, ":"
				Leer numero
				
				Si numero > 0 Entonces
					cantidad_positivos = cantidad_positivos + 1
				SiNo
					Si numero < 0 Entonces
						cantidad_negativos = cantidad_negativos + 1
					FinSi
				FinSi
			FinPara
			
			Escribir "Cantidad de números positivos: ", cantidad_positivos
			Escribir "Cantidad de números negativos: ", cantidad_negativos
			
			Escribir "¿Desea ingresar otra serie de números? (1 = Sí, 2 = No)"
			Leer repeti
			Hasta Que repeti = 2 
FinAlgoritmo
