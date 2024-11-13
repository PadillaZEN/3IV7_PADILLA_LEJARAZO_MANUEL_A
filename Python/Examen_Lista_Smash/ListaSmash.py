import tkinter as tk
from tkinter import messagebox, simpledialog
import os

ARCHIVO = "personajes.txt"
personajes = []

def cargar_datos():
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for linea in f:
                partes = linea.strip().split(",")
                if len(partes) >= 8:
                    nombre = partes[0]
                    saga = partes[1]
                    smash_aparicion = partes[2]
                    tier_list = partes[3]
                    jump_height = float(partes[4])
                    weight = int(partes[5])
                    gravity = float(partes[6])
                    run_speed = float(partes[7])
                    out_of_shield = partes[8]
                    
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

def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for personaje in personajes:
            f.write(f"{personaje['nombre']},{personaje['saga']},{personaje['smash_aparicion']},{personaje['tier_list']},{personaje['jump_height']},{personaje['weight']},{personaje['gravity']},{personaje['run_speed']},{personaje['out_of_shield']}\n")

def registrar_personaje():
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre del personaje: ")
    saga = input("Ingresa la saga del personaje: ")
    smash_aparicion = input("Ingresa el Smash de aparición del personaje: ")
    tier_list = input("Ingresa la posición en la Tier List: ")
    jump_height = float(input("Ingresa la altura de salto (Jump Height): "))
    weight = int(input("Ingresa el peso (Weight): "))
    gravity = float(input("Ingresa la gravedad (Gravity): "))
    run_speed = float(input("Ingresa la velocidad de carrera (Run Speed): "))
    out_of_shield = input("Ingresa el ataque fuera de escudo (Out of Shield): ")

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
    messagebox.showinfo("Éxito", "Personaje registrado exitosamente")

def consultar_personajes():
    if not personajes:
        print("No hay personajes registrados.")
    else:
        print("Lista de Personajes: \n")
        for personaje in personajes:
            print(f"Nombre: {personaje['nombre']}, Saga: {personaje['saga']}, Smash de Aparición: {personaje['smash_aparicion']}, Tier List: {personaje['tier_list']}, Jump Height: {personaje['jump_height']}, Weight: {personaje['weight']}, Gravity: {personaje['gravity']}, Run Speed: {personaje['run_speed']}, Out of Shield: {personaje['out_of_shield']}\n")

def editar_personaje():
    nombre = input("Ingrese el nombre del personaje que desea editar: ")
    for personaje in personajes:
        if personaje['nombre'].lower() == nombre.lower():
            personaje['saga'] = input("Ingresa la nueva saga o presiona Enter para mantener el actual:") or personaje['saga']
            personaje['smash_aparicion'] = input("Ingresa el nuevo Smash de aparición o presiona Enter para mantener el actual:") or personaje['smash_aparicion']
            personaje['tier_list'] = input("Ingresa la nueva posición en la Tier List o presiona Enter para mantener el actual:") or personaje['tier_list']
            personaje['jump_height'] = float(input("Ingresa la nueva altura de salto o presiona Enter para mantener el actual:") or personaje['jump_height'])
            personaje['weight'] = int(input("Ingresa el nuevo peso o presiona Enter para mantener el actual:") or personaje['weight'])
            personaje['gravity'] = float(input("Ingresa la nueva gravedad o presiona Enter para mantener el actual:") or personaje['gravity'])
            personaje['run_speed'] = float(input("Ingresa la nueva velocidad de carrera o presiona Enter para mantener el actual:") or personaje['run_speed'])
            personaje['out_of_shield'] = input("Ingresa el nuevo ataque fuera de escudo o presiona Enter para mantener el actual:") or personaje['out_of_shield']
            guardar_datos()
            messagebox.showinfo("Éxito", "Personaje editado exitosamente")
            break
    else:
        print("No se encontró ningún personaje con ese nombre")

def eliminar_personaje():
    nombre = input("Ingrese el nombre del personaje que desea eliminar: ")
    for personaje in personajes:
        if personaje['nombre'].lower() == nombre.lower():
            personajes.remove(personaje)
            guardar_datos()
            messagebox.showinfo("Éxito", "Personaje eliminado exitosamente")
            break
    else:
        print("No se encontró ningún personaje con ese nombre")

def main():
    cargar_datos()
    while True:
        print("Menu de Gestión de Personajes")
        print("1.- Registrar Personaje")
        print("2.- Consultar lista de Personajes")
        print("3.- Editar Personaje")
        print("4.- Eliminar Personaje")
        print("5.- Salir")

        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            registrar_personaje()
        elif opcion == "2":
            consultar_personajes()
        elif opcion == "3":
            editar_personaje()
        elif opcion == "4":
            eliminar_personaje()
        elif opcion == "5":
            print("Adiós")
            break
        else:
            print("Opción no válida")

main()