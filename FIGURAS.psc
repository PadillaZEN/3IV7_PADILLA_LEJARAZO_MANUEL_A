SubProceso Rectangulo(base, altura)
	
	Definir area, perimetro Como Real
	area = base * altura
	perimetro = 2 * (base + altura)
	
	Escribir "El área del rectángulo es: ", area
	Escribir "El perímetro del rectángulo es: ", perimetro
	
FinSubProceso

SubProceso Triangulo(base, altura, lado1, lado2, lado3)
	
	Definir area, perimetro Como Real
	area = (base * altura) / 2
	perimetro = lado1 + lado2 + lado3
	
	Escribir "El área del triángulo es: ", area
	Escribir "El perímetro del triángulo es: ", perimetro
	
FinSubProceso

SubProceso Pentagono(lado)
	
	Definir area, perimetro, apotema Como Real
	apotema = lado / (2 * Tan(36))  // Fórmula de apotema
	perimetro = 5 * lado
	area = (perimetro * apotema) / 2
	
	Escribir "El área del pentágono es: ", area
	Escribir "El perímetro del pentágono es: ", perimetro
	
FinSubProceso

SubProceso Hexagono(lado)
	
	Definir area, perimetro Como Real
	perimetro = 6 * lado
	area = (3 * lado^2 * Raiz(3)) / 2
	
	Escribir "El área del hexágono es: ", area
	Escribir "El perímetro del hexágono es: ", perimetro
	
FinSubProceso

SubProceso Heptagono(lado)
	
	Definir area, perimetro Como Real
	perimetro = 7 * lado
	// Aproximación de área para un polígono regular
	area = (7 * lado^2) / (4 * Tan(180/7))
	
	Escribir "El área del heptágono es: ", area
	Escribir "El perímetro del heptágono es: ", perimetro
	
FinSubProceso

SubProceso Octagono(lado)
	
	Definir area, perimetro Como Real
	perimetro = 8 * lado
	area = 2 * (1 + Raiz(2)) * lado^2
	
	Escribir "El área del octágono es: ", area
	Escribir "El perímetro del octágono es: ", perimetro
	
FinSubProceso

SubProceso Nonagono(lado)
	
	Definir area, perimetro Como Real
	perimetro = 9 * lado
	area = (9 * lado^2) / (4 * Tan(180/9))
	
	Escribir "El área del nonágono es: ", area
	Escribir "El perímetro del nonágono es: ", perimetro
	
FinSubProceso

SubProceso Decagono(lado)
	
	Definir area, perimetro Como Real
	perimetro = 10 * lado
	area = (5 * lado^2 * Raiz(5 + 2 * Raiz(5))) / 2
	
	Escribir "El área del decágono es: ", area
	Escribir "El perímetro del decágono es: ", perimetro
	
FinSubProceso

Algoritmo FIGURAS
	
	Definir opcion Como Caracter
	Definir lado1, lado2, lado3, base, altura, lado Como Real
	
	Escribir "Selecciona una opción"
	Escribir "A para el Rectángulo"
	Escribir "B para el Triángulo"
	Escribir "C para el Pentágono"
	Escribir "D para el Hexágono"
	Escribir "E para el Heptágono"
	Escribir "F para el Octágono"
	Escribir "G para el Nonágono"
	Escribir "H para el Decágono"
	
	Leer opcion
	
	Segun opcion hacer
		'A':
			Escribir "Ingresa la base del rectángulo"
			Leer base
			Escribir "Ingresa la altura del rectángulo"
			Leer altura
			Rectangulo(base, altura)
			
		'B':
			Escribir "Ingresa la base del triángulo"
			Leer base
			Escribir "Ingresa la altura del triángulo"
			Leer altura
			Escribir "Ingresa el lado 1 del triángulo"
			Leer lado1
			Escribir "Ingresa el lado 2 del triángulo"
			Leer lado2
			Escribir "Ingresa el lado 3 del triángulo"
			Leer lado3
			Triangulo(base, altura, lado1, lado2, lado3)
			
		'C':
			Escribir "Ingresa el lado del pentágono"
			Leer lado
			Pentagono(lado)
			
		'D':
			Escribir "Ingresa el lado del hexágono"
			Leer lado
			Hexagono(lado)
			
		'E':
			Escribir "Ingresa el lado del heptágono"
			Leer lado
			Heptagono(lado)
			
		'F':
			Escribir "Ingresa el lado del octágono"
			Leer lado
			Octagono(lado)
			
		'G':
			Escribir "Ingresa el lado del nonágono"
			Leer lado
			Nonagono(lado)
			
		'H':
			Escribir "Ingresa el lado del decágono"
			Leer lado
			Decagono(lado)
	
	FinSegun
	
FinAlgoritmo
