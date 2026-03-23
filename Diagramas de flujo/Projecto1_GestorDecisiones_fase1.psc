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

// Metodo de mesajes (MenuPrincipal: Reglas) Explica las reglas del sistema 
SubProceso MostrarReglas
    Escribir "====== Reglas del sistema ======";
    Escribir "1. VALIDACIÓN TÉCNICA (obligatoria):";
    Escribir "   - Clasificación vs horario:";
    Escribir "        - Todo público: cualquier hora.";
    Escribir "        - +13: solo entre 06:00 y 22:00.";
    Escribir "        - +18: solo entre 22:00 y 05:00.";
    Escribir "   - Duración por tipo de contenido:";
	Definir i Como Entero // Definir i como inciador del for
    Para i <- 1 Hasta 4 Hacer
        Segun i Hacer
            1: Escribir "        - Película: 60-180 minutos.";
            2: Escribir "        - Serie: 20-90 minutos.";
            3: Escribir "        - Documental: 30-120 minutos.";
            4: Escribir "        - Evento en vivo: 30-240 minutos.";
        FinSegun
    FinPara
    Escribir "   - Nivel de producción:";
    Escribir "        - Producción baja NO permitida para contenido +18.";
    Escribir "2. CLASIFICACIÓN DE IMPACTO (solo si pasa validación):";
    Escribir "   - Alto: producción alta, duración >120 min, o programado entre 20-23h.";
    Escribir "   - Medio: producción media o duración entre 60-120 min.";
    Escribir "   - Bajo: producción baja y duración <60 min.";
    Escribir "   (Si cumple varias, se toma el nivel más alto)";
    Escribir "3. DECISIÓN FINAL (solo si pasa validación):";
    Escribir "   - Publicar: impacto Bajo o Medio, sin valores límite.";
    Escribir "   - Publicar con ajustes: impacto Bajo o Medio y algún valor en límite exacto (duración mín/máx o hora límite según clasificación).";
    Escribir "   - Enviar a revisión: impacto Alto.";
    Escribir "   - Rechazar: no cumple alguna regla técnica (se muestra el motivo).";
    Escribir "----------------------------------------";
FinSubProceso

// Metodo de mensajes (Menu Pricipal:: Estadisticas) Muestra estadisticas de la sesion
SubProceso MostrarEstadisticas(totalEvaluados, contPublicar, contPublicarAjustes, contRevision, contRechazar, contImpactoAlto, contImpactoMedio, contImpactoBajo, contadorContenido, infoContenido1, infoContenido2, infoContenido3, infoContenido4)
    Definir totalPublicados, porcentajeAprobacion Como Real
    Definir impactoPredominante Como Caracter
    totalPublicados <- contPublicar + contPublicarAjustes
    // Calcular porcentaje de aprobación
    Si totalEvaluados > 0 Entonces
        porcentajeAprobacion <- (totalPublicados * 100) / totalEvaluados
    Sino
        porcentajeAprobacion <- 0
    FinSi
    Escribir "===== Estadísticas de la sesión ====="
    Escribir "----------------------------------------"
    Escribir "Total de contenidos evaluados: ", totalEvaluados
    Escribir "----------------------------------------"
    Escribir "Decisiones finales:"
    Escribir "  Publicados: ", contPublicar
    Escribir "  Publicados con ajustes: ", contPublicarAjustes
    Escribir "  Total publicados: ", totalPublicados
    Escribir "  Enviar a revisión: ", contRevision
    Escribir "  Rechazados: ", contRechazar
    Escribir "----------------------------------------"
    Escribir "Porcentaje de aprobación: ", Redon(porcentajeAprobacion), "%"
    Escribir "----------------------------------------"
    Escribir "Impactos:"
    Escribir "  Alto: ", contImpactoAlto
    Escribir "  Medio: ", contImpactoMedio
    Escribir "  Bajo: ", contImpactoBajo
    Escribir "----------------------------------------"
    Escribir "Contenidos guardados en la sesión:"
    Escribir "----------------------------------------"
	// Mostrar contenidos guardados si hay alguno 
	Si infoContenido1 <> "" Entonces 
		Imprimir "1. " + infoContenido1; 
		Imprimir " ";
	FinSi
	Si infoContenido2 <> "" Entonces 
		Imprimir "2. " + infoContenido2; 
		Imprimir " ";
	FinSi
	Si infoContenido3 <> "" Entonces 
		Imprimir "3. " + infoContenido3; 
		Imprimir " ";
	FinSi
	Si infoContenido4 <> "" Entonces 
		Imprimir "4. " + infoContenido4; 
		Imprimir " ";
	FinSi
    Si infoContenido1 = "" Y infoContenido2 = "" Y infoContenido3 = "" Y infoContenido4 = "" Entonces
        Escribir "No hay contenidos guardados."
    FinSi
    // Calcular impacto predominante solo si hay contenidos guardados
	Si contadorContenido > 0 Entonces
		Si contImpactoAlto >= contImpactoMedio Y contImpactoAlto >= contImpactoBajo Entonces
			impactoPredominante <- "Alto"
		SiNo
			Si contImpactoMedio >= contImpactoBajo Entonces
				impactoPredominante <- "Medio"
			SiNo
				impactoPredominante <- "Bajo"
			FinSi
		FinSi
	Sino
		impactoPredominante <- "Ninguno (sin contenidos guardados)"
	FinSi
    Escribir "========================================"
    Escribir "Impacto predominante: ", impactoPredominante
    Escribir "========================================"
FinSubProceso

// Metodo de reinicio y asignacion de valores
SubProceso ReiniciarEstadisticas(totalEvaluados, contPublicar, contPublicarAjustes, contRevision, contRechazar, contImpactoAlto, contImpactoMedio, contImpactoBajo, contadorContenido, infoContenido1, infoContenido2, infoContenido3, infoContenido4)
    totalEvaluados <- 0
    contPublicar <- 0
    contPublicarAjustes <- 0
    contRevision <- 0
    contRechazar <- 0
    contImpactoAlto <- 0
    contImpactoMedio <- 0
    contImpactoBajo <- 0
    contadorContenido <- 0
    infoContenido1 <- ""
    infoContenido2 <- ""
    infoContenido3 <- ""
    infoContenido4 <- ""
    Escribir "Estadísticas y datos reiniciados."
    Escribir "----------------------------------------"
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
	Si nivel = "Bajo" Y clasificacion = 18 Entonces
		mensaje <- "No se permite producción baja para contenido +18."
	FinSi
	// Para otros casos (Bajo con +13 o Todo público, o cualquier nivel Medio/Alto) no hay error
FinFuncion

// =====================================================================
// Función:  Clasificación de impacto: Si paso modulo Validación técnica se ejecuta esta funcion
// Clasifica el impacto del contenido según producción, duración y hora.
// Reglas:
//   - Alto: producción alta, duración > 120 min, o programado entre 20-23h.
//   - Medio: producción media o duración entre 60-120 min.
//   - Bajo: producción baja y duración <60 min.
// Si el contenido cumple condiciones de varios niveles, se toma el más alto.
// La función evalúa en orden descendente (Alto > Medio > Bajo) para garantizar la prioridad.
// =====================================================================
Funcion impacto <- ClasificarImpacto(nivel, duracion, hora)
    Definir impacto Como Caracter
    Si nivel = "Alto" O duracion > 120 O (hora >= 20 Y hora <= 23) Entonces
		// Alto: producción alta, duración > 120, o entre 20-23h
        impacto <- "Alto"
    SiNo
        Si nivel = "Medio" O (duracion >= 60 Y duracion <= 120) Entonces
			// Medio: producción media o duración entre 60 y 120
            impacto <- "Medio"
        SiNo
			// Bajo: en caso contrario (producción baja y duración < 60)
            impacto <- "Bajo"
        FinSi
    FinSi
FinFuncion

// =====================================================================
// Función: DecisionFinal
// Saber la acción final para un contenido que ha pasado las validaciones técnicas.
// Lógica:
//   1. Si errorAcumulado no está vacío ? Rechazar (con el motivo).
//   2. Si impacto = "Alto" ? Enviar a revisión.
//   3. Si impacto es Bajo o Medio:
//        - Verifica si la duración está en los límites exactos (mínimo o máximo)
//          según el tipo de contenido.
//        - Verifica si la hora está en los límites de la clasificación:
//            +13: hora = 6 o 22.
//            +18: hora = 22 o 5.
//        - Si alguna condición se cumple, se acumula un mensaje de ajuste.
//        - Si hay ajuste ? "Publicar con ajustes: [razón]".
//        - Si no ? "Publicar: Contenido apto para publicación".
// =====================================================================
Funcion decision <- DecisionFinal(impacto, duracion, horaPrograma, clasificacionTexto, contenido)
    Definir decision, motivoAjuste Como Caracter
    motivoAjuste <- ""
    // 1. Si impacto Alto -> Enviar a revisión
    Si impacto = "Alto" Entonces
        decision <- "Enviar a revisión: El contenido tiene impacto Alto."
	SiNo
		// 2. Verificar duración en límites según tipo
		Segun contenido Hacer
			"Película":
				Si duracion = 60 O duracion = 180 Entonces
					motivoAjuste <- "Duración en el límite permitido (60-180 min)."
				FinSi
			"Serie":
				Si duracion = 20 O duracion = 90 Entonces
					motivoAjuste <- "Duración en el límite permitido (20-90 min)."
				FinSi
			"Documental":
				Si duracion = 30 O duracion = 120 Entonces
					motivoAjuste <- "Duración en el límite permitido (30-120 min)."
				FinSi
			"Evento en vivo":
				Si duracion = 30 O duracion = 240 Entonces
					motivoAjuste <- "Duración en el límite permitido (30-240 min)."
				FinSi
		FinSegun
		// 3. Verificar horario en límites de clasificación
		Si clasificacionTexto = "+13" Y (horaPrograma = 6 O horaPrograma = 22) Entonces
			Si motivoAjuste <> "" Entonces
				motivoAjuste <- motivoAjuste + " Además, horario en el límite permitido (6-22 h)."
			Sino
				motivoAjuste <- "Horario en el límite permitido para +13 (6-22 h)."
			FinSi
		FinSi
		Si clasificacionTexto = "+18" Y (horaPrograma = 22 O horaPrograma = 5) Entonces
			Si motivoAjuste <> "" Entonces
				motivoAjuste <- motivoAjuste + " Además, horario en el límite permitido (22-5 h)."
			Sino
				motivoAjuste <- "Horario en el límite permitido para +18 (22-5 h)."
			FinSi
		FinSi
		// Si hay algún ajuste -> Publicar con ajustes
		Si motivoAjuste <> "" Entonces
			decision <- "Publicar con ajustes: " + motivoAjuste
		Sino
			decision <- "Publicar: Contenido apto para publicación."
		FinSi
    FinSi
	// =====================================================================
	// Lógica:
	// 1. Si error técnico = Rechazar. Hecho ya con fase de validacion tecnica
	// 2. Si impacto Alto = Enviar a revisión. Cumplido
	// 3. Si impacto Bajo o Medio:
	//		Duración = mínimo o máximo = acumula motivo de ajuste.
	//		Hora = límite de clasificación (+13 a 6/22, +18 a 22/5) = acumula motivo de ajuste.
	//		Si hay motivo = Publicar con ajustes: [motivo].
	//		Si no = Publicar.
	// =====================================================================
FinFuncion

// Main
Algoritmo Projecto1_GestorDecisiones_fase1
	// Defincion variables
	Definir Usuario Como Caracter
	
	// Variables del contenido para transportar datos a variables strings
	definir nombreContenido Como Caracter
	Definir contenido Como Caracter
	Definir duracion Como Entero
	Definir clasificacion Como Entero
	Definir clasificacionTexto Como Caracter
	Definir horaPrograma Como Entero
	Definir nivelProduccion Como Caracter
	Definir ImpactoContenido Como Caracter // Variable de almacenamiento 2.3 Clasificación de impacto (si pasó validación)
	Definir decision Como Caracter // Variable para 2.4 Decisión final (según impacto)
	
	// Variables del contenidos 1 - 4
	Definir infoContenido1 Como Caracter
	Definir infoContenido2 Como Caracter
	Definir infoContenido3 Como Caracter
	Definir infoContenido4 Como Caracter
	
	// Variables auxiliares evaluacion de datos
	Definir opcionTipo Como Entero
	Definir errorAcumulado Como Caracter
	Definir confirmacion Como Caracter
	
	// Varibales que se usan en MostrarEstadisticas
	// Definir totalPublicados, porcentajeAprobacion Como Real
	// Definir impactoPredominante Como Caracter
	
	// Contadores globales para estadisticas
	Definir totalEvaluados, contPublicar, contPublicarAjustes, contRevision, contRechazar Como Entero
	Definir contImpactoAlto, contImpactoMedio, contImpactoBajo Como Entero
	Definir contadorContenido Como Entero
	
	// Mensaje de bienvenida
	Escribir "Ingresa el nombre de tu usuario";
	leer Usuario;
	
	// variable para do-while en c#
	Definir menu Como Entero 
	
	Repetir // ciclo do-while
		MenuPrincipal(Usuario);
		leer menu;
		Segun menu hacer
			1: // Ingresar nuevos datos
				// Condicional para verificar si suportamos datos aun
				si contadorContenido < 4 Entonces
					totalEvaluados <- totalEvaluados + 1   // Registro de intentos de evaluo de un contenido
					Escribir "Ingresa los siguentes datos:";
					Escribir "-----------------------------";
					Escribir "Cual es el nombre del contenido?";
					leer nombreContenido;
					// Validar tipo de contenido
					Repetir
						TipoContenido()
						Leer opcionTipo;
						Si opcionTipo < 1 O opcionTipo > 4 Entonces
							Escribir "Error: Elije una opción válida (1-4).";
						FinSi
					Hasta Que opcionTipo >= 1 Y opcionTipo <= 4
					
					// Usando return para asignar valor a contenido
					contenido <- Validacion_TipoContenido(opcionTipo) 
					
					// Validación de duaracion (Usando su propia variable)
					Repetir
						Escribir "Cual es la duración del contenido (minutos)?"
						Leer duracion;
						Si duracion <= 0 Entonces
							Escribir "Error: Ingrese una duración mayor a 0."
						FinSi
					Hasta Que duracion > 0
					
					// Validar Clasificacion del Contenido
					Repetir
						ClasificacionContenido()
						Leer opcionTipo;
						Si opcionTipo < 1 O opcionTipo > 3 Entonces
							Escribir "Error: Elije una opción válida (1-3).";
						FinSi
					Hasta Que opcionTipo >= 1 Y opcionTipo <= 3
					
					// Usando return para asignar valor a clasificacion
					clasificacion <- Validacion_ClasificacionContenido(opcionTipo) 
					
					// usando un switch para convertir valores en string
					Segun opcionTipo Hacer
						1: clasificacionTexto <- "Todo Público";
						2: clasificacionTexto <- "+13";
						3: clasificacionTexto <- "+18";
					FinSegun
					
					// Validación de HORA (Usando su propia variable)
					Repetir
						Escribir "A que hora esta programado emitirse? (0-23):";
						Leer horaPrograma;
						Si horaPrograma < 0 O horaPrograma > 23 Entonces
							Escribir "Error: Hora es incorrecta, usa valores de 0 - 23.";
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
					errorAcumulado <- ""
					
					// 1. Clasificación y horario
					errorAcumulado <- Validacion_Clasificacion_Horario(clasificacion, horaPrograma)
					
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
						// ========== 2.3 CLASIFICACION DE IMPACTO  ==========
						ImpactoContenido <- ClasificarImpacto(nivelProduccion, duracion, horaPrograma)
						decision <- DecisionFinal(ImpactoContenido, duracion, horaPrograma, clasificacionTexto, contenido)
						Escribir "----------------------------------------";
						Escribir "Contenido aprobo la Fase Tecnica!";
						Escribir "Impacto: ", ImpactoContenido;
						Escribir "Decisión: ", decision;
						Escribir "----------------------------------------";
						
						// Confirmación del usuario
						
						Escribir "¿Deseas guardar este contenido? (S/N)";
						Leer confirmacion
						Si Mayusculas(confirmacion) = "S" Entonces
							contadorContenido = contadorContenido + 1; // expresion se puede simplicar con contadorContenido++;
							
							// Registro de Contadores de impacto
							Segun ImpactoContenido Hacer
								"Alto":  contImpactoAlto <- contImpactoAlto + 1
								"Medio": contImpactoMedio <- contImpactoMedio + 1
								"Bajo":  contImpactoBajo <- contImpactoBajo + 1
							FinSegun
							
							// Registro de Contadores de decision
							Si decision = "Publicar: Contenido apto para publicación." Entonces
								contPublicar <- contPublicar + 1
							Sino
								Si Subcadena(decision, 1, 17) = "Publicar con ajustes" Entonces
									contPublicarAjustes <- contPublicarAjustes + 1
								Sino
									Si Subcadena(decision, 1, 18) = "Enviar a revisión" Entonces
										contRevision <- contRevision + 1
									FinSi
								FinSi
							FinSi
							Escribir "Contenido guardado correctamente.";
							Escribir "----------------------------------------";
							// Guardar toda la informaccion de contenido según el contador 
							Segun contadorContenido Hacer
								1: infoContenido1 <- nombreContenido + " | Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacionTexto + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion + " | Impacto: " + ImpactoContenido + " | Decisión: " + decision;
								2: infoContenido2 <- nombreContenido + " | Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacionTexto + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion + " | Impacto: " + ImpactoContenido + " | Decisión: " + decision;
								3: infoContenido3 <- nombreContenido + " | Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacionTexto + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion + " | Impacto: " + ImpactoContenido + " | Decisión: " + decision;
								4: infoContenido4 <- nombreContenido + " | Tipo: " + contenido + " | Duración: " + ConvertirATexto(duracion) + " min | Clasificación: " + clasificacionTexto + " | Hora: " + ConvertirATexto(horaPrograma) + ":00 | Producción: " + nivelProduccion + " | Impacto: " + ImpactoContenido + " | Decisión: " + decision;
							FinSegun
						SiNo
							Escribir "Contenido descartado por el usuario.";
							Escribir "----------------------------------------";
						FinSi
					SiNo
						Escribir "El contenido fue rechazado por la siguiente razón:";
						Escribir errorAcumulado;
						Escribir "----------------------------------------";
						contRechazar <- contRechazar + 1   // registro de contenido que es rechazado técnicamente
					FinSi
				SiNo
					Escribir "Error: Bibilioteca de datos esta llena"; 
					Escribir "----------------------------------------"
				FinSi
			2: // Llamada de metodo MostrarReglas
				MostrarReglas()
			3: // Mostrar estadísticas
				MostrarEstadisticas(totalEvaluados, contPublicar, contPublicarAjustes, contRevision, contRechazar, contImpactoAlto, contImpactoMedio, contImpactoBajo, contadorContenido, infoContenido1, infoContenido2, infoContenido3, infoContenido4)
			4: // Reiniciar estadísticas 
				ReiniciarEstadisticas(totalEvaluados, contPublicar, contPublicarAjustes, contRevision, contRechazar, contImpactoAlto, contImpactoMedio, contImpactoBajo, contadorContenido, infoContenido1, infoContenido2, infoContenido3, infoContenido4)
		FinSegun
	Hasta Que menu = 5 // se repite hasta que el usuario ingrese 5
	MostrarEstadisticas(totalEvaluados, contPublicar, contPublicarAjustes, contRevision, contRechazar, contImpactoAlto, contImpactoMedio, contImpactoBajo, contadorContenido, infoContenido1, infoContenido2, infoContenido3, infoContenido4)
	Escribir "Gracias por usar el Gestor de Streaming ", Usuario, "."
FinAlgoritmo