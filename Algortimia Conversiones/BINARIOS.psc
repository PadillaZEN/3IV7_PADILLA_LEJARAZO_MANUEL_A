Algoritmo BINARIOS
	
	Definir num, residuo Como Entero
	Definir binario, nuevobinario Como Texto
	Definir repeti Como Entero
		
	
	Repetir
		
			// Inicializar binario vac�o
			binario = ""
			
			Escribir "Ingrese el n�mero decimal a convertir:"
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
	
				Escribir "El n�mero en binario es: ", binario
			FinSi
			
			Escribir "�Desea convertir otro n�mero? (1 = S�, 2 = No)"
			Leer repeti
			Hasta Que repeti = 2 // Repetir hasta que el usuario elija no continuar
FinAlgoritmo
