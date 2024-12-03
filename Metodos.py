import tkinter as tk
from tkinter import messagebox
from time import time

# Métodos de ordenamiento
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

def selection_sort(arr):
    n = len(arr)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    return arr

def insertion_sort(arr):
    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    return arr

def merge_sort(arr):
    if len(arr) > 1:
        mid = len(arr) // 2
        L = arr[:mid]
        R = arr[mid:]

        merge_sort(L)
        merge_sort(R)

        i = j = k = 0

        while i < len(L) and j < len(R):
            if L[i] < R[j]:
                arr[k] = L[i]
                i += 1
            else:
                arr[k] = R[j]
                j += 1
            k += 1

        while i < len(L):
            arr[k] = L[i]
            i += 1
            k += 1

        while j < len(R):
            arr[k] = R[j]
            j += 1
            k += 1
    return arr

def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quick_sort(left) + middle + quick_sort(right)

# Función para procesar los datos
def ordenar():
    try:
        numeros = list(map(int, entry.get().split(',')))
        if len(numeros) > 40:
            messagebox.showerror("Error", "La lista no puede tener más de 40 números.")
            return
        metodo = metodo_var.get()
        if not metodo:
            messagebox.showerror("Error", "Debe seleccionar un método de ordenamiento.")
            return

        lista_original = numeros[:]
        start_time = time()

        if metodo == "Bubble Sort":
            lista_ordenada = bubble_sort(numeros)
        elif metodo == "Selection Sort":
            lista_ordenada = selection_sort(numeros)
        elif metodo == "Insertion Sort":
            lista_ordenada = insertion_sort(numeros)
        elif metodo == "Merge Sort":
            lista_ordenada = merge_sort(numeros)
        elif metodo == "Quick Sort":
            lista_ordenada = quick_sort(numeros)

        end_time = time()
        tiempo_total = end_time - start_time

        # Mostrar resultados
        resultado.set(f"Lista Original: {lista_original}\n"
                      f"Lista Ordenada: {lista_ordenada}\n"
                      f"Tiempo de Ordenamiento: {tiempo_total:.6f} segundos")
    except ValueError:
        messagebox.showerror("Error", "Debe ingresar una lista de números enteros separados por comas.")

# Interfaz gráfica
ventana = tk.Tk()
ventana.title("Ordenamiento de Listas")

# Entrada de datos
tk.Label(ventana, text="Ingrese una lista de números separados por comas (máximo 40):").pack()
entry = tk.Entry(ventana, width=50)
entry.pack()

# Selección de método de ordenamiento
tk.Label(ventana, text="Seleccione un método de ordenamiento:").pack()
metodo_var = tk.StringVar()
tk.Radiobutton(ventana, text="Bubble Sort", variable=metodo_var, value="Bubble Sort").pack()
tk.Radiobutton(ventana, text="Selection Sort", variable=metodo_var, value="Selection Sort").pack()
tk.Radiobutton(ventana, text="Insertion Sort", variable=metodo_var, value="Insertion Sort").pack()
tk.Radiobutton(ventana, text="Merge Sort", variable=metodo_var, value="Merge Sort").pack()
tk.Radiobutton(ventana, text="Quick Sort", variable=metodo_var, value="Quick Sort").pack()

# Botón para ordenar
tk.Button(ventana, text="Ordenar", command=ordenar).pack()

# Resultados
resultado = tk.StringVar()
tk.Label(ventana, textvariable=resultado, wraplength=400, justify="left").pack()

# Ejecutar interfaz
ventana.mainloop()
