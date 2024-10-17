SubProceso Rectangulo(base, altura)
	
	Definir area, perimetro Como Real
	area = base * altura
	perimetro = 2 * (base + altura)
	
	Escribir "El �rea del rect�ngulo es: ", area
	Escribir "El per�metro del rect�ngulo es: ", perimetro
	
FinSubProceso

SubProceso Triangulo(base, altura, lado1, lado2, lado3)
	
	Definir area, perimetro Como Real
	area = (base * altura) / 2
	perimetro = lado1 + lado2 + lado3
	
	Escribir "El �rea del tri�ngulo es: ", area
	Escribir "El per�metro del tri�ngulo es: ", perimetro
	
FinSubProceso

SubProceso Pentagono(lado)
	
	Definir area, perimetro, apotema Como Real
	apotema = lado / (2 * Tan(36))  // F�rmula de apotema
	perimetro = 5 * lado
	area = (perimetro * apotema) / 2
	
	Escribir "El �rea del pent�gono es: ", area
	Escribir "El per�metro del pent�gono es: ", perimetro
	
FinSubProceso

SubProceso Hexagono(lado)
	
	Definir area, perimetro Como Real
	perimetro = 6 * lado
	area = (3 * lado^2 * Raiz(3)) / 2
	
	Escribir "El �rea del hex�gono es: ", area
	Escribir "El per�metro del hex�gono es: ", perimetro
	
FinSubProceso

SubProceso Heptagono(lado)
	
	Definir area, perimetro Como Real
	perimetro = 7 * lado
	// Aproximaci�n de �rea para un pol�gono regular
	area = (7 * lado^2) / (4 * Tan(180/7))
	
	Escribir "El �rea del hept�gono es: ", area
	Escribir "El per�metro del hept�gono es: ", perimetro
	
FinSubProceso

SubProceso Octagono(lado)
	
	Definir area, perimetro Como Real
	perimetro = 8 * lado
	area = 2 * (1 + Raiz(2)) * lado^2
	
	Escribir "El �rea del oct�gono es: ", area
	Escribir "El per�metro del oct�gono es: ", perimetro
	
FinSubProceso

SubProceso Nonagono(lado)
	
	Definir area, perimetro Como Real
	perimetro = 9 * lado
	area = (9 * lado^2) / (4 * Tan(180/9))
	
	Escribir "El �rea del non�gono es: ", area
	Escribir "El per�metro del non�gono es: ", perimetro
	
FinSubProceso

SubProceso Decagono(lado)
	
	Definir area, perimetro Como Real
	perimetro = 10 * lado
	area = (5 * lado^2 * Raiz(5 + 2 * Raiz(5))) / 2
	
	Escribir "El �rea del dec�gono es: ", area
	Escribir "El per�metro del dec�gono es: ", perimetro
	
FinSubProceso

Algoritmo FIGURAS
	
	Definir opcion Como Caracter
	Definir lado1, lado2, lado3, base, altura, lado Como Real
	
	Escribir "Selecciona una opci�n"
	Escribir "A para el Rect�ngulo"
	Escribir "B para el Tri�ngulo"
	Escribir "C para el Pent�gono"
	Escribir "D para el Hex�gono"
	Escribir "E para el Hept�gono"
	Escribir "F para el Oct�gono"
	Escribir "G para el Non�gono"
	Escribir "H para el Dec�gono"
	
	Leer opcion
	
	Segun opcion hacer
		'A':
			Escribir "Ingresa la base del rect�ngulo"
			Leer base
			Escribir "Ingresa la altura del rect�ngulo"
			Leer altura
			Rectangulo(base, altura)
			
		'B':
			Escribir "Ingresa la base del tri�ngulo"
			Leer base
			Escribir "Ingresa la altura del tri�ngulo"
			Leer altura
			Escribir "Ingresa el lado 1 del tri�ngulo"
			Leer lado1
			Escribir "Ingresa el lado 2 del tri�ngulo"
			Leer lado2
			Escribir "Ingresa el lado 3 del tri�ngulo"
			Leer lado3
			Triangulo(base, altura, lado1, lado2, lado3)
			
		'C':
			Escribir "Ingresa el lado del pent�gono"
			Leer lado
			Pentagono(lado)
			
		'D':
			Escribir "Ingresa el lado del hex�gono"
			Leer lado
			Hexagono(lado)
			
		'E':
			Escribir "Ingresa el lado del hept�gono"
			Leer lado
			Heptagono(lado)
			
		'F':
			Escribir "Ingresa el lado del oct�gono"
			Leer lado
			Octagono(lado)
			
		'G':
			Escribir "Ingresa el lado del non�gono"
			Leer lado
			Nonagono(lado)
			
		'H':
			Escribir "Ingresa el lado del dec�gono"
			Leer lado
			Decagono(lado)
	
	FinSegun
	
FinAlgoritmo
