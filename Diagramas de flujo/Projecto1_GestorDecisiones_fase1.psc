// Metodo muestra el Menu incial
SubProceso MenuPrincipal(nombre)
	Imprimir "Bienvenido al Gestor de Streaming ", nombre;
	Imprimir "----------------------------------------";
	Imprimir "1. Evaluar nuevo contenido";
	Imprimir "2. Mostrar reglas del sistema";
	Imprimir "3. Mostrar estadísticas";
	Imprimir "4. Reiniciar estadísticas";
	Imprimir "5. Salir (mostrar resumen final)";
FinSubProceso

// Metodo de mesajes (MenuPrincipal::Tipo de contenido) muestra las opciones de tipo de contenido
SubProceso TipoContenido
	Escribir "----------------------------------------";
	Escribir "Que tipo de contenido es?"
	Escribir "----------------------------------------";
	Escribir "1. Pelicula";
	Escribir "2. Serie";
	Escribir "3. Documental";
	Escribir "4. Evento en vivo";
	Escribir "----------------------------------------";
FinSubProceso

// Función que retorna el nombre del tipo de contenido según la opción
Funcion txt <- Validacion_TipoContenido(opcion1)
	Definir txt Como Caracter
	Segun opcion1 Hacer
		1: txt <- "Película"
		2: txt <- "Serie"
		3: txt <- "Documental"
		4: txt <- "Evento en vivo"
		De Otro Modo: txt <- "Desconocido"
	FinSegun
FinFuncion

// Main
Algoritmo Projecto1_GestorDecisiones_fase1
	// Defincion variables Menu Principal
	Definir Usuario Como Caracter
	Definir submenu1 Como Entero
	
	// Variables del contenido
	Definir contenido Como Caracter
	Definir duracion Como Entero
	Definir clasificacion Como Caracter
	Definir horaPrograma Como Entero
	Definir nivelProduccion Como Caracter
	
	// Variables auxiliares menu
	Definir opcionTipo Como Entero
	
	Escribir "Ingresa el nombre de tu usuario";
	leer Usuario;
	
	// variable para do-while en c#
	Definir menu Como Entero 
	
	Repetir // ciclo do-while
		MenuPrincipal(Usuario);
		leer menu;
		Segun menu hacer
			1:
				Escribir "Ingresa los siguentes datos:"
				// Validar tipo de contenido
				Repetir
                    TipoContenido()
                    Leer opcionTipo
                    Si opcionTipo < 1 O opcionTipo > 4 Entonces
                        Escribir "Error: Elije una opción válida (1-4)."
                    FinSi
                Hasta Que opcionTipo >= 1 Y opcionTipo <= 4
				contenido <- Validacion_TipoContenido(opcionTipo)
				
				Escribir "Cual es la duración del contenido?"
				leer submenu1;
				Escribir "En que clasificacion esta?";
				leer submenu1;
				Escribir "A que hora esta programado emitirse? formato 24 hrs"; 
				leer submenu1;
			2:
				Escribir "Seleccionaste la opción 2"
			3:
				Escribir "Seleccionaste la opción 3"
			4:
				Escribir "Seleccionaste la opción 4"
			De Otro Modo:
				Escribir "Error: Ingresa una opción valida!"
		FinSegun
	Hasta Que menu = 5 // se repite hasta que el usuario ingrese 5
FinAlgoritmo