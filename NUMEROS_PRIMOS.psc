Algoritmo NUMEROS_PRIMOS
    Definir n, i Como Entero
    Definir esPrimo Como Logico
    esPrimo <- Verdadero
    
    Escribir "Ingresa un n�mero:"
    Leer n
	
	Si n=2 Entonces
		Escribir "Tu n�mero es primo."
	SiNo
		Si n <= 1 Entonces
        esPrimo <- Falso
		Sino
			Para i <- 2 Hasta (n / 2) Hacer
				Si (n MOD i = 0) Entonces
                esPrimo <- Falso
                
				FinSi
			FinPara
		FinSi
	Fin si
    
    Si esPrimo Entonces
        Escribir "Tu n�mero es primo."
    Sino
        Escribir "Tu n�mero no es primo."
    FinSi
FinAlgoritmo
