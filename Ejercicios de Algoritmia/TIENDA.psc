Algoritmo TIENDA
	Definir Producto Como Cadena
	Definir codigoProducto, cantidad Como Entero
	Definir precio Como Real
	Mientras opcion<>5 Hacer
		Escribir '1.- Ingresa un nuevo producto'
		Escribir '2.- Actualiza un producto'
		Escribir '3.- Consulta el inventario'
		Escribir '4.- Generar reporte'
		Escribir '5.- Salir'
		Leer opcion
		Según opcion Hacer
			1:
				Escribir 'Ingressa el nombre del prodcuto'
				Leer Producto
				Escribir 'Ingresa el codigo del producto'
				Leer codigoProducto
				Escribir 'Ingresa la cantidad'
				Leer cantidad
				Escribir 'Ingresa el precio'
				Leer precio
			2:
				Escribir 'Ingresa el codgio del producto a  actualizar'
				Leer codigoProducto
				Escribir 'Ingresa la nueva cantidad'
				Leer cantidad
			3:
				Escribir 'Consultar inventario'
				Escribir 'Nombre del producto', Producto
				Escribir 'Codigod del producto', codigoProducto
				Escribir 'Precio del producto', precio
				Escribir 'Cantidad del producto', cantidad
			4:
				Escribir 'Salida'
		FinSegún
	FinMientras
FinAlgoritmo
