Algoritmo BINARIOS
	
	Definir num, residuo Como Entero
	Definir binario, nuevobinario Como Texto
	Definir repeti Como Entero
		
	
	Repetir
		
			// Inicializar binario vacío
			binario = ""
			
			Escribir "Ingrese el número decimal a convertir:"
			Leer num
			

			Si num >= 0 Entonces
				Mientras num > 0 Hacer
					residuo <- num % 2
					
					nuevobinario <- ConvertirATexto(residuo)
					binario <- nuevobinario + binario
				
					num <- Trunc(num / 2)
				FinMientras
				
				Si binario = "" Entonces
					binario = "0"
				FinSi
	
				Escribir "El número en binario es: ", binario
			FinSi
			
			Escribir "¿Desea convertir otro número? (1 = Sí, 2 = No)"
			Leer repeti
			Hasta Que repeti = 2 // Repetir hasta que el usuario elija no continuar
FinAlgoritmo
