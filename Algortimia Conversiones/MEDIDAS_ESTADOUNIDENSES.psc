Algoritmo MEDIDAS_ESTADOUNIDENSES

	Definir M, C, Med, repeti Como Real
		
		
		Repetir
			
			Escribir "ESCRIBE LA MEDIDA EN PIES"
			Leer M
			
	
			Escribir "PULGADAS <- 1"
			Escribir "YARDAS <- 2"
			Escribir "CENTIMETROS <- 3"
			Escribir "METROS <- 4"
			Escribir "ESCRIBA EL NUMERO DE LA CONVERSION DESEADA"
			Leer C
			
		
			Si C = 1 Entonces
				Med <- M * 12
			SiNo
				Si C = 2 Entonces
					Med <- M * 0.333333
				SiNo
					Si C = 3 Entonces
						Med <- M * 30.48
					SiNo
						Si C = 4 Entonces
							Med <- M * 0.3048
						FinSi
					FinSi
				FinSi
			FinSi
			
			
			Escribir "La medida ya convertida según su elección es:", Med
			
		
			Escribir "¿Desea realizar otra conversión? (1 = Sí, 2 = No)"
			Leer repeti
			Hasta Que repeti = 2 
FinAlgoritmo
