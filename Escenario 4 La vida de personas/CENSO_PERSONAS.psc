Proceso Censo_Personas_A�os
	
    // Definir las variables necesarias
    Definir num_personas, nacimientos, fallecimientos, personas_vivas, edad_mas_joven, edad_mas_anciana, anio_consulta, i, edad_persona Como Entero
    Definir primera_persona_viva Como Logico
    
    // Leer el n�mero de personas en el censo
    Escribir "Ingrese el n�mero de personas en el censo:"
    Leer num_personas
    
    // Definir las variables para cada persona
    Definir nac_anio, fall_anio Como Entero
    
    // Leer el a�o de nacimiento y fallecimiento de cada persona
    Para i=1 Hasta num_personas Con Paso 1
        Escribir "Ingrese el a�o de nacimiento de la persona ", i, ":"
        Leer nac_anio
        
        Escribir "Ingrese el a�o de fallecimiento de la persona ", i, ":"
        Leer fall_anio
    FinPara
    
    // Leer el n�mero de a�os a consultar
    Definir num_anios Como Entero
    Escribir "Ingrese el n�mero de a�os a consultar:"
    Leer num_anios
    
    Para j=1 Hasta num_anios Con Paso 1
        // Leer el a�o de consulta
        Escribir "Ingrese el a�o a consultar:"
        Leer anio_consulta
        
        // Inicializar variables para este a�o de consulta
        personas_vivas = 0
        primera_persona_viva = Falso
        
        // Recorrer todas las personas para verificar si estaban vivas en el a�o consultado
        Para i=1 Hasta num_personas Con Paso 1
            // Verificar si la persona estaba viva en el a�o de consulta
            Si nac_anio <= anio_consulta Y fall_anio >= anio_consulta Entonces
                
                // Calcular la edad de la persona en el a�o de consulta
                edad_persona = anio_consulta - nac_anio
                
                // Contabilizar personas vivas
                personas_vivas = personas_vivas + 1
                
                // Si es la primera persona viva, inicializamos las edades
                Si primera_persona_viva = Falso Entonces
                    edad_mas_joven = edad_persona
                    edad_mas_anciana = edad_persona
                    primera_persona_viva = Verdadero
                SiNo
                    // Verificar si es la persona m�s joven
                    Si edad_persona < edad_mas_joven Entonces
                        edad_mas_joven = edad_persona
                    FinSi
                    
                    // Verificar si es la persona m�s anciana
                    Si edad_persona > edad_mas_anciana Entonces
                        edad_mas_anciana = edad_persona
                    FinSi
                FinSi
            FinSi
        FinPara
        
        // Mostrar los resultados para el a�o consultado
        Escribir "En el a�o ", anio_consulta, " hab�a ", personas_vivas, " personas vivas."
        Si personas_vivas > 0 Entonces
            Escribir "La persona m�s joven ten�a ", edad_mas_joven, " a�os."
            Escribir "La persona m�s anciana ten�a ", edad_mas_anciana, " a�os."
        Sino
            Escribir "No hab�a personas vivas en ese a�o."
        FinSi
    FinPara

FinProceso
