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
Funcion n1 <- Validacion_ClasificacionContenido(opcion1)
	Definir n1 Como entero // cambio de variable a entero para mejor versatilidad
	Segun opcion1 Hacer
		1: n1 <- 2; // indica que es para todas las edades
		2: n1 <- 13;
		3: n1 <- 18;
		De Otro Modo: n1 <- 0;
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


// Validación técnica: clasificación vs horario
Funcion mensaje <- Validacion_Clasificacion_Horario(clasificacion, horaPrograma)
	Definir mensaje Como Caracter
	mensaje <- ""   // definir variable sin error
	Si clasificacion == 2 Entonces
		// Todo público: siempre permitido
		mensaje <- ""   // sin error por defecto
	SiNo
		Si clasificacion == 13 Entonces
			Si horaPrograma < 6 O horaPrograma > 22 Entonces
				mensaje <- "Clasificación +13 solo puede emitirse entre 06:00 y 22:00."
			FinSi
		SiNo
			Si clasificacion == 18 Entonces
				Si horaPrograma >= 6 Y horaPrograma <= 21 Entonces
					mensaje <- "Clasificación +18 solo puede emitirse entre 22:00 y 05:00."
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion


// Validación técnica: duración (ejemplo: entre 1 y 300 minutos)
Funcion mensaje <- Validacion_Duracion(contenido, duracion)
	Definir mensaje Como Caracter
	mensaje <- ""   // por defecto, sin error
	Segun contenido Hacer
		"Película":
			Si duracion < 60 O duracion > 180 Entonces
				mensaje <- "Las películas deben durar entre 60 y 180 minutos."
			FinSi
		"Serie":
			Si duracion < 20 O duracion > 90 Entonces
				mensaje <- "Las series deben durar entre 20 y 90 minutos."
			FinSi
		"Documental":
			Si duracion < 30 O duracion > 120 Entonces
				mensaje <- "Los documentales deben durar entre 30 y 120 minutos."
			FinSi
		"Evento en vivo":
			Si duracion < 30 O duracion > 240 Entonces
				mensaje <- "Los eventos en vivo deben durar entre 30 y 240 minutos."
			FinSi
		De Otro Modo:
			mensaje <- "Tipo de contenido no reconocido para validar duración."
	FinSegun
FinFuncion

// Validación técnica: nivel de producción (opcional: rechazar nivel bajo)
Funcion mensaje <- Validacion_NivelProduccion(nivel, clasificacion)
	Definir mensaje Como Caracter
	mensaje <- ""   // sin error por defecto
	Si nivel = "Bajo" Y clasificacionNum = 18 Entonces
		mensaje <- "No se permite producción baja para contenido +18."
	FinSi
	// Para otros casos (Bajo con +13 o Todo público, o cualquier nivel Medio/Alto) no hay error
FinFuncion

// Main
Algoritmo Projecto1_GestorDecisiones_fase1
	// Defincion variables
	Definir Usuario Como Caracter
	
	// Variables del contenido para transportar datos a variables 
	definir nombreContenido Como Caracter
	Definir contenido Como Caracter
	Definir duracion Como Entero
	Definir clasificacion Como Entero
	Definir clasificacionTexto Como Caracter
	Definir horaPrograma Como Entero
	Definir nivelProduccion Como Caracter
	
	// Variables del contenidos 1 - 4
	Definir infoContenido1 Como Caracter
	Definir infoContenido2 Como Caracter
	Definir infoContenido3 Como Caracter
	Definir infoContenido4 Como Caracter
	
	// Variables auxiliares evaluacion de datos
	Definir opcionTipo Como Entero
	Definir contadorContenido Como Entero
	Definir errorAcumulado Como Caracter
	
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
					Escribir "Ingresa los siguentes datos:";
					Escribir "-----------------------------";
					Escribir "Cual es el nombre del contenido?";
					leer nombreContenido;
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
							Escribir "Error: Ingrese una duración mayor a 0."
						FinSi
						si duracion >= 241 Entonces
							Escribir "Error: Ingrese una duración menor a 240."
						FinSi
					Hasta Que duracion > 0 y duracion < 240
					
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
					
					// usando un switch para convertir valores en string
					Segun opcionTipo Hacer
						1: clasificacionTexto <- "Todo Público"
						2: clasificacionTexto <- "+13"
						3: clasificacionTexto <- "+18"
					FinSegun
					
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
					
					// ========== 2.2 VALIDACION TECNICA  ==========
					// Objetivo es hacer metodos para hacer el codigo mas limpio
					errorAcumulado <- ""
					
					// 1. Clasificación y horario
					errorAcumulado = Validacion_Clasificacion_Horario(clasificacion, horaPrograma)
					
					// 2. Duración (solo si no hay error previo)
					Si errorAcumulado = "" Entonces
						errorAcumulado <- Validacion_Duracion(contenido, duracion)
					FinSi
					
					// 3. Nivel de producción (solo si no hay error previo)
					Si errorAcumulado = "" Entonces
						errorAcumulado <- Validacion_NivelProduccion(nivelProduccion, clasificacion)
					FinSi
					
					// Decidir si se aprueba el contenido
					Si errorAcumulado = "" Entonces
						Escribir "¡Contenido aprobado y guardado!"
						Escribir "----------------------------------------"
						contadorContenido = contadorContenido + 1; // expresion se puede simplicar con contadorContenido++;
						
						// Guardar iformaccion de contenido según el contador 
						Segun contadorContenido Hacer
							1: infoContenido1 <- nombreContenido + " | Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacionTexto + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion
							2: infoContenido2 <- nombreContenido + " | Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacionTexto + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion
							3: infoContenido3 <- nombreContenido + " | Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacionTexto + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion
							4: infoContenido4 <- nombreContenido + " | Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacionTexto + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion
						FinSegun
					SiNo
						Escribir "El contenido fue rechazado por la siguiente razón:"
						Escribir errorAcumulado
						Escribir "----------------------------------------"
					FinSi
				SiNo
					Escribir "Error: Bibilioteca de datos esta llena"; 
					Escribir "----------------------------------------"
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