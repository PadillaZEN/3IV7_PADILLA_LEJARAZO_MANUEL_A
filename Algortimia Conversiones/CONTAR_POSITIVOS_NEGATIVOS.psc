Algoritmo CONTAR_POSITIVOS_NEGATIVOS
	Definir numero, cantidad_positivos, cantidad_negativos, total_numeros, repeti Como Entero
		
		Repetir
			
			cantidad_positivos = 0
			cantidad_negativos = 0
			
			Escribir "�Cu�ntos n�meros desea ingresar?"
			Leer total_numeros
			
			Para i = 1 Hasta total_numeros Con Paso 1 Hacer
				Escribir "Ingrese el n�mero ", i, ":"
				Leer numero
				
				Si numero > 0 Entonces
					cantidad_positivos = cantidad_positivos + 1
				SiNo
					Si numero < 0 Entonces
						cantidad_negativos = cantidad_negativos + 1
					FinSi
				FinSi
			FinPara
			
			Escribir "Cantidad de n�meros positivos: ", cantidad_positivos
			Escribir "Cantidad de n�meros negativos: ", cantidad_negativos
			
			Escribir "�Desea ingresar otra serie de n�meros? (1 = S�, 2 = No)"
			Leer repeti
			Hasta Que repeti = 2 
FinAlgoritmo
