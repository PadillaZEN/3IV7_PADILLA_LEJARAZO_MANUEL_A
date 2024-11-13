def decimal_a_binario(num):
    binario = ""
    if num == 0:
        return "0"
    while num > 0:
        residuo = num % 2
        binario = str(residuo) + binario
        num = num // 2
    return binario

def main():
    while True:
        try:
            num = int(input("Ingrese el número decimal a convertir: "))
            if num >= 0:
                binario = decimal_a_binario(num)
                print("El número en binario es:", binario)
            else:
                print("Por favor, ingrese un número no negativo.")
        except ValueError:
            print("Entrada no válida. Por favor ingrese un número entero.")
        
        repetir = input("¿Desea convertir otro número? (1 = Sí, 2 = No): ")
        if repetir != "1":
            break

if __name__ == "__main__":
    main()
