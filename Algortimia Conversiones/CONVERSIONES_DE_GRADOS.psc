Algoritmo COVERSION_DE_GRADOS
	Definir opcion, temperatura, tempCelsius, tempFahrenheit, tempKelvin, tempRankine, repeti Como Real
		

		Repetir

			Escribir "Elija la escala de temperatura que desea convertir:"
			Escribir "1. Fahrenheit"
			Escribir "2. Celsius"
			Escribir "3. Kelvin"
			Escribir "4. Rankine"
			Leer opcion

			Escribir "Ingrese la temperatura:"
			Leer temperatura

			Segun opcion Hacer
				1:
					// Si la temperatura está en Fahrenheit
					tempFahrenheit = temperatura
					tempCelsius = (tempFahrenheit - 32) * 5 / 9
					tempKelvin = (tempFahrenheit - 32) * 5 / 9 + 273.15
					tempRankine = tempFahrenheit + 459.67
					Escribir "Fahrenheit: ", tempFahrenheit, " °F"
					Escribir "Celsius: ", tempCelsius, " °C"
					Escribir "Kelvin: ", tempKelvin, " K"
					Escribir "Rankine: ", tempRankine, " °R"
				2:
					// Si la temperatura está en Celsius
					tempCelsius = temperatura
					tempFahrenheit = (tempCelsius * 9 / 5) + 32
					tempKelvin = tempCelsius + 273.15
					tempRankine = (tempCelsius + 273.15) * 9 / 5
					Escribir "Celsius: ", tempCelsius, " °C"
					Escribir "Fahrenheit: ", tempFahrenheit, " °F"
					Escribir "Kelvin: ", tempKelvin, " K"
					Escribir "Rankine: ", tempRankine, " °R"
				3:
					// Si la temperatura está en Kelvin
					tempKelvin = temperatura
					tempCelsius = tempKelvin - 273.15
					tempFahrenheit = (tempKelvin - 273.15) * 9 / 5 + 32
					tempRankine = tempKelvin * 9 / 5
					Escribir "Kelvin: ", tempKelvin, " K"
					Escribir "Celsius: ", tempCelsius, " °C"
					Escribir "Fahrenheit: ", tempFahrenheit, " °F"
					Escribir "Rankine: ", tempRankine, " °R"
				4:
					// Si la temperatura está en Rankine
					tempRankine = temperatura
					tempFahrenheit = tempRankine - 459.67
					tempCelsius = (tempRankine - 491.67) * 5 / 9
					tempKelvin = tempRankine * 5 / 9
					Escribir "Rankine: ", tempRankine, " °R"
					Escribir "Fahrenheit: ", tempFahrenheit, " °F"
					Escribir "Celsius: ", tempCelsius, " °C"
					Escribir "Kelvin: ", tempKelvin, " K"
				De Otro Modo:
					Escribir "Opción no válida."
			FinSegun
			
			Escribir "¿Desea realizar otra conversión? (1 = Sí, 2 = No)"
			Leer repeti
			Hasta Que repeti = 2 
FinAlgoritmo
