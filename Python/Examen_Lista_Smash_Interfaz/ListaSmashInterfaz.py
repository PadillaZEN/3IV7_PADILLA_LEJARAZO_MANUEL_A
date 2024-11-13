import tkinter as tk
from tkinter import messagebox, simpledialog, ttk
import os

ARCHIVO = "personajes.txt"
personajes = []

def cargar_datos():
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for linea in f:
                partes = linea.strip().split(",")
                if len(partes) >= 8:
                    personaje = {
                        "nombre": partes[0],
                        "saga": partes[1],
                        "smash_aparicion": partes[2],
                        "tier_list": partes[3],
                        "jump_height": float(partes[4]),
                        "weight": int(partes[5]),
                        "gravity": float(partes[6]),
                        "run_speed": float(partes[7]),
                        "out_of_shield": partes[8]
                    }
                    personajes.append(personaje)

def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for personaje in personajes:
            f.write(f"{personaje['nombre']},{personaje['saga']},{personaje['smash_aparicion']},{personaje['tier_list']},{personaje['jump_height']},{personaje['weight']},{personaje['gravity']},{personaje['run_speed']},{personaje['out_of_shield']}\n")

def registrar_personaje():
    nombre = simpledialog.askstring("Registro", "Ingresa el nombre del personaje:")
    if nombre:
        saga = simpledialog.askstring("Registro", "Ingresa la saga del personaje:")
        smash_aparicion = simpledialog.askstring("Registro", "Ingresa el Smash de aparición:")
        tier_list = simpledialog.askstring("Registro", "Ingresa la posición en la Tier List:")
        jump_height = float(simpledialog.askstring("Registro", "Ingresa la altura de salto:"))
        weight = int(simpledialog.askstring("Registro", "Ingresa el peso:"))
        gravity = float(simpledialog.askstring("Registro", "Ingresa la gravedad:"))
        run_speed = float(simpledialog.askstring("Registro", "Ingresa la velocidad de carrera:"))
        out_of_shield = simpledialog.askstring("Registro", "Ingresa el ataque fuera de escudo:")

        personaje = {
            "nombre": nombre,
            "saga": saga,
            "smash_aparicion": smash_aparicion,
            "tier_list": tier_list,
            "jump_height": jump_height,
            "weight": weight,
            "gravity": gravity,
            "run_speed": run_speed,
            "out_of_shield": out_of_shield
        }

        personajes.append(personaje)
        guardar_datos()
        messagebox.showinfo("Registro", "Personaje registrado exitosamente")

def consultar_personajes():
    ventana_lista = tk.Toplevel()
    ventana_lista.title("Lista de Personajes")

    tree = ttk.Treeview(ventana_lista, columns=("Nombre", "Saga", "Aparición", "Tier", "Salto", "Peso", "Gravedad", "Velocidad", "Escudo"), show="headings")
    tree.heading("Nombre", text="Nombre")
    tree.heading("Saga", text="Saga")
    tree.heading("Aparición", text="Aparición")
    tree.heading("Tier", text="Tier")
    tree.heading("Salto", text="Salto")
    tree.heading("Peso", text="Peso")
    tree.heading("Gravedad", text="Gravedad")
    tree.heading("Velocidad", text="Velocidad")
    tree.heading("Escudo", text="Escudo")

    for personaje in personajes:
        tree.insert("", tk.END, values=(
            personaje['nombre'], personaje['saga'], personaje['smash_aparicion'], personaje['tier_list'],
            personaje['jump_height'], personaje['weight'], personaje['gravity'], personaje['run_speed'], personaje['out_of_shield']
        ))

    tree.pack(expand=True, fill="both")
    ventana_lista.geometry("800x400")

def buscar_personaje():
    nombre = simpledialog.askstring("Buscar", "Ingresa el nombre del personaje a buscar:")
    for personaje in personajes:
        if personaje['nombre'].lower() == nombre.lower():
            detalles = (
                f"Nombre: {personaje['nombre']}\n"
                f"Saga: {personaje['saga']}\n"
                f"Aparición: {personaje['smash_aparicion']}\n"
                f"Tier List: {personaje['tier_list']}\n"
                f"Salto: {personaje['jump_height']}\n"
                f"Peso: {personaje['weight']}\n"
                f"Gravedad: {personaje['gravity']}\n"
                f"Velocidad: {personaje['run_speed']}\n"
                f"Escudo: {personaje['out_of_shield']}"
            )
            messagebox.showinfo("Resultado de búsqueda", detalles)
            return
    messagebox.showwarning("Buscar", "Personaje no encontrado")

def editar_personaje():
    nombre = simpledialog.askstring("Editar", "Ingresa el nombre del personaje a editar:")
    for personaje in personajes:
        if personaje['nombre'].lower() == nombre.lower():
            personaje['saga'] = simpledialog.askstring("Editar", "Ingresa la nueva saga:", initialvalue=personaje['saga'])
            personaje['smash_aparicion'] = simpledialog.askstring("Editar", "Ingresa el nuevo Smash de aparición:", initialvalue=personaje['smash_aparicion'])
            personaje['tier_list'] = simpledialog.askstring("Editar", "Ingresa la nueva posición en la Tier List:", initialvalue=personaje['tier_list'])
            personaje['jump_height'] = float(simpledialog.askstring("Editar", "Ingresa la nueva altura de salto:", initialvalue=str(personaje['jump_height'])))
            personaje['weight'] = int(simpledialog.askstring("Editar", "Ingresa el nuevo peso:", initialvalue=str(personaje['weight'])))
            personaje['gravity'] = float(simpledialog.askstring("Editar", "Ingresa la nueva gravedad:", initialvalue=str(personaje['gravity'])))
            personaje['run_speed'] = float(simpledialog.askstring("Editar", "Ingresa la nueva velocidad de carrera:", initialvalue=str(personaje['run_speed'])))
            personaje['out_of_shield'] = simpledialog.askstring("Editar", "Ingresa el nuevo ataque fuera de escudo:", initialvalue=personaje['out_of_shield'])
            guardar_datos()
            messagebox.showinfo("Editar", "Personaje editado exitosamente")
            return
    messagebox.showwarning("Editar", "Personaje no encontrado")

def eliminar_personaje():
    nombre = simpledialog.askstring("Eliminar", "Ingresa el nombre del personaje a eliminar:")
    for personaje in personajes:
        if personaje['nombre'].lower() == nombre.lower():
            personajes.remove(personaje)
            guardar_datos()
            messagebox.showinfo("Eliminar", "Personaje eliminado exitosamente")
            return
    messagebox.showwarning("Eliminar", "Personaje no encontrado")

def main():
    cargar_datos()
    ventana_principal = tk.Tk()
    ventana_principal.title("Gestión de Personajes")

    tk.Button(ventana_principal, text="Registrar Personaje", command=registrar_personaje).pack(fill='x')
    tk.Button(ventana_principal, text="Buscar Personaje", command=buscar_personaje).pack(fill='x')
    tk.Button(ventana_principal, text="Editar Personaje", command=editar_personaje).pack(fill='x')
    tk.Button(ventana_principal, text="Eliminar Personaje", command=eliminar_personaje).pack(fill='x')
    tk.Button(ventana_principal, text="Listar Todos los Personajes", command=consultar_personajes).pack(fill='x')
    tk.Button(ventana_principal, text="Salir", command=ventana_principal.quit).pack(fill='x')

    ventana_principal.geometry("300x250")
    ventana_principal.mainloop()

main()
