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


// Metodo de mesajes (MenuPrincipal::Clasificaion del contenido) muestra opciones de tipo de categorias	
SubProceso ClasificacionContenido
	Escribir "----------------------------------------";
	Escribir "Que tipo de clasificación es?"
	Escribir "----------------------------------------";
	Escribir "1. Todo Público";
	Escribir "2. +13";
	Escribir "3. +18";
	Escribir "----------------------------------------";
FinSubProceso

// Metodo de mesajes (MenuPrincipal::Produccion) muestra opciones de Nivel de producción
SubProceso Produccion
	Escribir "----------------------------------------";
	Escribir "Cual es el nivel de producción?"
	Escribir "----------------------------------------";
	Escribir "1. Bajo";
	Escribir "2. Medio";
	Escribir "3. Alto";
	Escribir "----------------------------------------";
FinSubProceso


// Función que retorna el nombre del tipo de contenido según opción1
Funcion txt <- Validacion_TipoContenido(opcion1)
	Definir txt Como Caracter
	Segun opcion1 Hacer
		1: txt <- "Película";
		2: txt <- "Serie";
		3: txt <- "Documental";
		4: txt <- "Evento en vivo";
		De Otro Modo: txt <- "Desconocido";
	FinSegun
FinFuncion

// Función que retorna la clasificacion del contenido según opción1
Funcion txt <- Validacion_ClasificacionContenido(opcion1)
	Definir txt Como Caracter
	Segun opcion1 Hacer
		1: txt <- "Todo Público";
		2: txt <- "+13";
		3: txt <- "+18";
		De Otro Modo: txt <- "Desconocido";
	FinSegun
FinFuncion


// Función que retorna el nivel de produccion del contenido según opción1
Funcion txt <- Validacion_Produccion(opcion1)
	Definir txt Como Caracter
	Segun opcion1 Hacer
		1: txt <- "Bajo";
		2: txt <- "Medio";
		3: txt <- "Alto";
		De Otro Modo: txt <- "Desconocido";
	FinSegun
FinFuncion

// Main
Algoritmo Projecto1_GestorDecisiones_fase1
	// Defincion variables Menu Principal
	Definir Usuario Como Caracter
	Definir submenu1 Como Entero
	
	// Variables del contenido para transportar datos a variables 
	Definir contenido Como Caracter
	Definir duracion Como Entero
	Definir clasificacion Como Caracter
	Definir horaPrograma Como Entero
	Definir nivelProduccion Como Caracter
	
	// Variables del contenido 1
	Definir infoContenido1 Como Caracter
	Definir contenido1 Como Caracter
	Definir duracion1 Como Entero
	Definir clasificacion1 Como Caracter
	Definir horaPrograma1 Como Entero
	Definir nivelProduccion1 Como Caracter
	
	// Variables del contenido 2
	Definir infoContenido2 Como Caracter
	Definir contenido2 Como Caracter
	Definir duracion2 Como Entero
	Definir clasificacion2 Como Caracter
	Definir horaPrograma2 Como Entero
	Definir nivelProduccion2 Como Caracter
	
	// Variables del contenido 3
	Definir infoContenido3 Como Caracter
	Definir contenido3 Como Caracter
	Definir duracion3 Como Entero
	Definir clasificacion3 Como Caracter
	Definir horaPrograma3 Como Entero
	Definir nivelProduccion3 Como Caracter
	
	// Variables del contenido 4
	Definir infoContenido4 Como Caracter
	Definir contenido4 Como Caracter
	Definir duracion4 Como Entero
	Definir clasificacion4 Como Caracter
	Definir horaPrograma4 Como Entero
	Definir nivelProduccion4 Como Caracter
	
	// Variables auxiliares menu
	Definir opcionTipo Como Entero
	Definir contadorContenido Como Entero
	
	Escribir "Ingresa el nombre de tu usuario";
	leer Usuario;
	
	// variable para do-while en c#
	Definir menu Como Entero 
	
	Repetir // ciclo do-while
		MenuPrincipal(Usuario);
		leer menu;
		Segun menu hacer
			1:
				// Condicional para verificar si suportamos datos aun
				si contadorContenido < 4 Entonces
					contadorContenido = contadorContenido + 1; // expresion se puede simplicar con contadorContenido++;
					Escribir "Ingresa los siguentes datos:"
					// Validar tipo de contenido
					Repetir
						TipoContenido()
						Leer opcionTipo
						Si opcionTipo < 1 O opcionTipo > 4 Entonces
							Escribir "Error: Elije una opción válida (1-4).";
						FinSi
					Hasta Que opcionTipo >= 1 Y opcionTipo <= 4
					
					// Usando return para asignar valor a contenido
					contenido <- Validacion_TipoContenido(opcionTipo) 
					
					// Validación de duaracion (Usando su propia variable)
					Repetir
						Escribir "Cual es la duración del contenido (minutos)?"
						Leer duracion
						Si duracion <= 0 Entonces
							Escribir "Error: Ingrese una duración positiva."
						FinSi
					Hasta Que duracion > 0
					
					// Validar Clasificacion del Contenido
					Repetir
						ClasificacionContenido()
						Leer opcionTipo
						Si opcionTipo < 1 O opcionTipo > 3 Entonces
							Escribir "Error: Elije una opción válida (1-3).";
						FinSi
					Hasta Que opcionTipo >= 1 Y opcionTipo <= 3
					
					// Usando return para asignar valor a clasificacion
					clasificacion <- Validacion_ClasificacionContenido(opcionTipo) 
					
					// Validación de HORA (Usando su propia variable)
					Repetir
						Escribir "A que hora esta programado emitirse? (0-23):"
						Leer horaPrograma
						Si horaPrograma < 0 O horaPrograma > 23 Entonces
							Escribir "Error: Hora es incorrecta, usa valores de 0 - 23."
						FinSi
					Hasta Que horaPrograma >= 0 Y horaPrograma <= 23
					
					// Validar Nivel de producción (bajo, medio, alto)
					Repetir
						Produccion()
						Leer opcionTipo
						Si opcionTipo < 1 O opcionTipo > 3 Entonces
							Escribir "Error: Elije una opción válida (1-3).";
						FinSi
					Hasta Que opcionTipo >= 1 Y opcionTipo <= 3
					
					// Usando return para asignar valor a produccion
					nivelProduccion <- Validacion_Produccion(opcionTipo)
					
					// bloque de condicionales y asignacion de datos para guardar en el espacio correspondiente
					si contadorContenido == 1 Entonces
						infoContenido1 <- "Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacion + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion
					FinSi
					si contadorContenido == 2 Entonces
						infoContenido2 <- "Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacion + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion
					FinSi
					si contadorContenido == 3 Entonces
						infoContenido3 <- "Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacion + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion
					FinSi
					si contadorContenido == 4 Entonces
						infoContenido4 <- "Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacion + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion
					FinSi
					
				SiNo
					Escribir "Error: Bibilioteca de datos esta llena"; 
				FinSi
			2:
				Escribir "Seleccionaste la opción 2"
			3:
				Escribir "Seleccionaste la opción 3"
				// TESTEO DE GUARDADO DE CONTENIDO (Se eleminara cuando se termine la seccion)
				Imprimir infoContenido1;
				Imprimir infoContenido2;
				Imprimir infoContenido3;
				Imprimir infoContenido4;
			4:
				Escribir "Seleccionaste la opción 4"
			De Otro Modo:
				Escribir "Error: Ingresa una opción valida!"
		FinSegun
	Hasta Que menu = 5 // se repite hasta que el usuario ingrese 5
FinAlgoritmo