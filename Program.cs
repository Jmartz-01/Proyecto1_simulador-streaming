using System;
class Program
{
	// Metodo muestra el Menu inicial
	static void MenuPrincipal(string nombre)
	{
		Console.WriteLine("Bienvenido al Gestor de Streaming " + nombre);
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("1. Evaluar nuevo contenido");
		Console.WriteLine("2. Mostrar reglas del sistema");
		Console.WriteLine("3. Mostrar estadísticas");
		Console.WriteLine("4. Reiniciar estadísticas");
		Console.WriteLine("5. Salir (mostrar resumen final)");
	}

	// Metodo de mensajes (MenuPrincipal::Tipo de contenido) muestra las opciones de tipo de contenido
	static void TipoContenido()
	{
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("Que tipo de contenido es?");
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("1. Pelicula");
		Console.WriteLine("2. Serie");
		Console.WriteLine("3. Documental");
		Console.WriteLine("4. Evento en vivo");
		Console.WriteLine("----------------------------------------");
	}

	// Metodo de mensajes (MenuPrincipal::Clasificacion del contenido) muestra opciones de tipo de categorias
	static void ClasificacionContenido()
	{
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("Que tipo de clasificación es?");
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("1. Todo Público");
		Console.WriteLine("2. +13");
		Console.WriteLine("3. +18");
		Console.WriteLine("----------------------------------------");
	}

	// Metodo de mensajes (MenuPrincipal::Produccion) muestra opciones de Nivel de producción
	static void Produccion()
	{
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("Cual es el nivel de producción?");
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("1. Bajo");
		Console.WriteLine("2. Medio");
		Console.WriteLine("3. Alto");
		Console.WriteLine("----------------------------------------");
	}

	// Metodo de mensajes (MenuPrincipal: Reglas) Explica las reglas del sistema
	static void MostrarReglas()
	{
		Console.WriteLine("====== Reglas del sistema ======");
		Console.WriteLine("1. VALIDACIÓN TÉCNICA (obligatoria):");
		Console.WriteLine("   - Clasificación vs horario:");
		Console.WriteLine("        - Todo público: cualquier hora.");
		Console.WriteLine("        - +13: solo entre 06:00 y 22:00.");
		Console.WriteLine("        - +18: solo entre 22:00 y 05:00.");
		Console.WriteLine("   - Duración por tipo de contenido:");
		int i; // Definir i como iniciador del for
		for (i = 1; i <= 4; i++)
		{
			switch (i)
			{
				case 1: Console.WriteLine("        - Película: 60-180 minutos."); break;
				case 2: Console.WriteLine("        - Serie: 20-90 minutos."); break;
				case 3: Console.WriteLine("        - Documental: 30-120 minutos."); break;
				case 4: Console.WriteLine("        - Evento en vivo: 30-240 minutos."); break;
			}
		}
		Console.WriteLine("   - Nivel de producción:");
		Console.WriteLine("        - Producción baja NO permitida para contenido +18.");
		Console.WriteLine("2. CLASIFICACIÓN DE IMPACTO (solo si pasa validación):");
		Console.WriteLine("   - Alto: producción alta, duración >120 min, o programado entre 20-23h.");
		Console.WriteLine("   - Medio: producción media o duración entre 60-120 min.");
		Console.WriteLine("   - Bajo: producción baja y duración <60 min.");
		Console.WriteLine("   (Si cumple varias, se toma el nivel más alto)");
		Console.WriteLine("3. DECISIÓN FINAL (solo si pasa validación):");
		Console.WriteLine("   - Publicar: impacto Bajo o Medio, sin valores límite.");
		Console.WriteLine("   - Publicar con ajustes: impacto Bajo o Medio y algún valor en límite exacto (duración mín/máx o hora límite según clasificación).");
		Console.WriteLine("   - Enviar a revisión: impacto Alto.");
		Console.WriteLine("   - Rechazar: no cumple alguna regla técnica (se muestra el motivo).");
		Console.WriteLine("----------------------------------------");
	}

	// Metodo de mensajes (Menu Principal:: Estadisticas) Muestra estadisticas de la sesion
	static void MostrarEstadisticas(int totalEvaluados, int contPublicar, int contPublicarAjustes, int contRevision, int contRechazar, int contImpactoAlto, int contImpactoMedio, int contImpactoBajo, int contadorContenido, string infoContenido1, string infoContenido2, string infoContenido3, string infoContenido4)
	{
		double totalPublicados, porcentajeAprobacion;
		string impactoPredominante;
		totalPublicados = contPublicar + contPublicarAjustes;
		// Calcular porcentaje de aprobación
		if (totalEvaluados > 0)
		{
			porcentajeAprobacion = (totalPublicados * 100) / totalEvaluados;
		}
		else
		{
			porcentajeAprobacion = 0;
		}
		Console.WriteLine("===== Estadísticas de la sesión =====");
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("Total de contenidos evaluados: " + totalEvaluados);
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("Decisiones finales:");
		Console.WriteLine("  Publicados: " + contPublicar);
		Console.WriteLine("  Publicados con ajustes: " + contPublicarAjustes);
		Console.WriteLine("  Total publicados: " + totalPublicados);
		Console.WriteLine("  Enviar a revisión: " + contRevision);
		Console.WriteLine("  Rechazados: " + contRechazar);
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("Porcentaje de aprobación: " + Math.Round(porcentajeAprobacion) + "%"); // uso de math.round porque se es lo mas parecido a Redon en c#
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("Impactos:");
		Console.WriteLine("  Alto: " + contImpactoAlto);
		Console.WriteLine("  Medio: " + contImpactoMedio);
		Console.WriteLine("  Bajo: " + contImpactoBajo);
		Console.WriteLine("----------------------------------------");
		Console.WriteLine("Contenidos guardados en la sesión:");
		Console.WriteLine("----------------------------------------");
		// Mostrar contenidos guardados si hay alguno
		if (infoContenido1 != "")
		{
			Console.Write("1. " + infoContenido1);
			Console.Write(" ");
			Console.WriteLine();
		}
		if (infoContenido2 != "")
		{
			Console.Write("2. " + infoContenido2);
			Console.Write(" ");
			Console.WriteLine();
		}
		if (infoContenido3 != "")
		{
			Console.Write("3. " + infoContenido3);
			Console.Write(" ");
			Console.WriteLine();
		}
		if (infoContenido4 != "")
		{
			Console.Write("4. " + infoContenido4);
			Console.Write(" ");
			Console.WriteLine();
		}
		if (infoContenido1 == "" && infoContenido2 == "" && infoContenido3 == "" && infoContenido4 == "")
		{
			Console.WriteLine("No hay contenidos guardados.");
		}
		// Calcular impacto predominante solo si hay contenidos guardados
		if (contadorContenido > 0)
		{
			if (contImpactoAlto >= contImpactoMedio && contImpactoAlto >= contImpactoBajo)
			{
				impactoPredominante = "Alto";
			}
			else
			{
				if (contImpactoMedio >= contImpactoBajo)
				{
					impactoPredominante = "Medio";
				}
				else
				{
					impactoPredominante = "Bajo";
				}
			}
		}
		else
		{
			impactoPredominante = "Ninguno (sin contenidos guardados)";
		}
		Console.WriteLine("========================================");
		Console.WriteLine("Impacto predominante: " + impactoPredominante);
		Console.WriteLine("========================================");
	}

	// Metodo de reinicio y asignacion de valores (con ref para modificar los originales)
	static void ReiniciarEstadisticas(ref int totalEvaluados, ref int contPublicar, ref int contPublicarAjustes, ref int contRevision, ref int contRechazar, ref int contImpactoAlto, ref int contImpactoMedio, ref int contImpactoBajo, ref int contadorContenido, ref string infoContenido1, ref string infoContenido2, ref string infoContenido3, ref string infoContenido4)
	{
		totalEvaluados = 0;
		contPublicar = 0;
		contPublicarAjustes = 0;
		contRevision = 0;
		contRechazar = 0;
		contImpactoAlto = 0;
		contImpactoMedio = 0;
		contImpactoBajo = 0;
		contadorContenido = 0;
		infoContenido1 = "";
		infoContenido2 = "";
		infoContenido3 = "";
		infoContenido4 = "";
		Console.WriteLine("Estadísticas y datos reiniciados.");
		Console.WriteLine("----------------------------------------");
	}

	// Función que retorna el nombre del tipo de contenido según opcion1
	static string Validacion_TipoContenido(int opcion1)
	{
		string txt;
		switch (opcion1)
		{
			case 1: txt = "Película"; break;
			case 2: txt = "Serie"; break;
			case 3: txt = "Documental"; break;
			case 4: txt = "Evento en vivo"; break;
			default: txt = "Desconocido"; break;
		}
		return txt;
	}

	// Función que retorna la clasificacion del contenido según opcion1
	static int Validacion_ClasificacionContenido(int opcion1)
	{
		int n1; // cambio de variable a entero para mejor versatilidad y manejo
		switch (opcion1)
		{
			case 1: n1 = 2; break; // indica que es para todas las edades
			case 2: n1 = 13; break;
			case 3: n1 = 18; break;
			default: n1 = 0; break;
		}
		return n1;
	}

	// Función que retorna el nivel de produccion del contenido según opcion1
	static string Validacion_Produccion(int opcion1)
	{
		string txt;
		switch (opcion1)
		{
			case 1: txt = "Bajo"; break;
			case 2: txt = "Medio"; break;
			case 3: txt = "Alto"; break;
			default: txt = "Desconocido"; break;
		}
		return txt;
	}

	// Validación técnica: clasificación vs horario
	static string Validacion_Clasificacion_Horario(int clasificacion, int horaPrograma)
	{
		string mensaje = ""; // definir variable sin error
		if (clasificacion == 2)
		{
			// Todo público: siempre permitido
			mensaje = ""; // asegurar que este definido con nada para evitar error
		}
		else
		{
			if (clasificacion == 13)
			{
				if (horaPrograma < 6 || horaPrograma > 22)
				{
					mensaje = "Clasificación +13 solo puede emitirse entre 06:00 y 22:00.";
				}
			}
			else
			{
				if (clasificacion == 18)
				{
					if (horaPrograma >= 6 && horaPrograma <= 21)
					{
						mensaje = "Clasificación +18 solo puede emitirse entre 22:00 y 05:00.";
					}
				}
			}
		}
		return mensaje;
	}

	// Validación técnica: duración (ejemplo: entre 1 y 300 minutos)
	static string Validacion_Duracion(string contenido, int duracion)
	{
		string mensaje = ""; // por defecto, sin error
		switch (contenido)
		{
			case "Película":
				if (duracion < 60 || duracion > 180)
				{
					mensaje = "Las películas deben durar entre 60 y 180 minutos.";
				}
				break;
			case "Serie":
				if (duracion < 20 || duracion > 90)
				{
					mensaje = "Las series deben durar entre 20 y 90 minutos.";
				}
				break;
			case "Documental":
				if (duracion < 30 || duracion > 120)
				{
					mensaje = "Los documentales deben durar entre 30 y 120 minutos.";
				}
				break;
			case "Evento en vivo":
				if (duracion < 30 || duracion > 240)
				{
					mensaje = "Los eventos en vivo deben durar entre 30 y 240 minutos.";
				}
				break;
			default:
				mensaje = "Tipo de contenido no reconocido para validar duración.";
				break;
		}
		return mensaje;
	}

	// Validación técnica: nivel de producción (opcional: rechazar nivel bajo)
	static string Validacion_NivelProduccion(string nivel, int clasificacion)
	{
		string mensaje = ""; // sin error por defecto
		if (nivel == "Bajo" && clasificacion == 18)
		{
			mensaje = "No se permite producción baja para contenido +18.";
		}
		// Para otros casos (Bajo con +13 o Todo público, o cualquier nivel Medio/Alto) no hay error
		return mensaje;
	}

	// ======================================
	// Función: Clasificación de impacto
	// Clasifica el impacto del contenido según producción, duración y hora.
	static string ClasificarImpacto(string nivel, int duracion, int hora)
	{
		string impacto;
		if (nivel == "Alto" || duracion > 120 || (hora >= 20 && hora <= 23))
		{
			// Alto: producción alta, duración > 120, o entre 20-23h
			impacto = "Alto";
		}
		else
		{
			if (nivel == "Medio" || (duracion >= 60 && duracion <= 120))
			{
				// Medio: producción media o duración entre 60 y 120
				impacto = "Medio";
			}
			else
			{
				// Bajo: en caso contrario (producción baja y duración < 60)
				impacto = "Bajo";
			}
		}
		return impacto;
	}

	// ============================
	// Función: DecisionFinal
	// Saber la acción final para un contenido que ha pasado las validaciones técnicas.
	static string DecisionFinal(string impacto, int duracion, int horaPrograma, string clasificacionTexto, string contenido)
	{
		string decision, motivoAjuste;
		motivoAjuste = "";
		// 1. Si impacto Alto -> Enviar a revisión
		if (impacto == "Alto")
		{
			decision = "Enviar a revisión: El contenido tiene impacto Alto.";
		}
		else
		{
			// 2. Verificar duración en límites según tipo
			switch (contenido)
			{
				case "Película":
					if (duracion == 60 || duracion == 180)
					{
						motivoAjuste = "Duración en el límite permitido (60-180 min).";
					}
					break;
				case "Serie":
					if (duracion == 20 || duracion == 90)
					{
						motivoAjuste = "Duración en el límite permitido (20-90 min).";
					}
					break;
				case "Documental":
					if (duracion == 30 || duracion == 120)
					{
						motivoAjuste = "Duración en el límite permitido (30-120 min).";
					}
					break;
				case "Evento en vivo":
					if (duracion == 30 || duracion == 240)
					{
						motivoAjuste = "Duración en el límite permitido (30-240 min).";
					}
					break;
			}
			// 3. Verificar horario en límites de clasificación
			if (clasificacionTexto == "+13" && (horaPrograma == 6 || horaPrograma == 22))
			{
				if (motivoAjuste != "")
				{
					motivoAjuste = motivoAjuste + " Además, horario en el límite permitido (6-22 h).";
				}
				else
				{
					motivoAjuste = "Horario en el límite permitido para +13 (6-22 h).";
				}
			}
			if (clasificacionTexto == "+18" && (horaPrograma == 22 || horaPrograma == 5))
			{
				if (motivoAjuste != "")
				{
					motivoAjuste = motivoAjuste + " Además, horario en el límite permitido (22-5 h).";
				}
				else
				{
					motivoAjuste = "Horario en el límite permitido para +18 (22-5 h).";
				}
			}
			// Si hay algún ajuste -> Publicar con ajustes
			if (motivoAjuste != "")
			{
				decision = "Publicar con ajustes: " + motivoAjuste;
			}
			else
			{
				decision = "Publicar: Contenido apto para publicación.";
			}
		}
		return decision;
	}

	// Main
	static void Main(string[] args)
	{
		// Definición de variables
		string Usuario;

		// Variables del contenido para transportar datos a variables strings
		string nombreContenido;
		string contenido;
		int duracion;
		int clasificacion;
		string clasificacionTexto;
		int horaPrograma;
		string nivelProduccion;
		string ImpactoContenido; // Variable de almacenamiento 2.3 Clasificación de impacto
		string decision;         // Variable para 2.4 Decisión final

		// Variables del contenidos soportados 1 - 4
		string infoContenido1 = "";
		string infoContenido2 = "";
		string infoContenido3 = "";
		string infoContenido4 = "";

		// Variables auxiliares evaluacion de datos
		int opcionTipo;
		string errorAcumulado;
		string confirmacion;

		// Contadores globales para estadisticas
		int totalEvaluados = 0, contPublicar = 0, contPublicarAjustes = 0, contRevision = 0, contRechazar = 0;
		int contImpactoAlto = 0, contImpactoMedio = 0, contImpactoBajo = 0;
		int contadorContenido = 0;

		// Mensaje de bienvenida
		Console.WriteLine("Ingresa el nombre de tu usuario");
		Usuario = Console.ReadLine();

		// variable para menu de do-while
		int menu;

		do // ciclo do-while
		{
			MenuPrincipal(Usuario);
			try
			{
				menu = int.Parse(Console.ReadLine());
			}
			catch (FormatException)
			{
				Console.WriteLine("Error: Solo ingresar un número, no letras.");
				menu = 0; // reinicio de valor del menu
				continue; // Regresa al inicio del do-while para mostar informacion
			}
			switch (menu)
			{
				case 1: // Ingresar nuevos datos
						// Condicional para verificar si soportamos datos aun
					if (contadorContenido < 4)
					{
						totalEvaluados++; // Registro de intentos de evaluo de un contenido
						Console.WriteLine("Ingresa los siguentes datos:");
						Console.WriteLine("-----------------------------");
						Console.WriteLine("Cual es el nombre del contenido?");
						nombreContenido = Console.ReadLine();

						// Validar tipo de contenido
						do
						{
							TipoContenido();
							// implemtacion de try catch
							try
							{
								opcionTipo = int.Parse(Console.ReadLine());
							}
							catch (FormatException)
							{
								Console.WriteLine("Error: Solo ingresar un número, no letras.");
								opcionTipo = 0; // reinicio de valor que se recogio
								continue; // Regresa al inicio del do-while para mostar informacion
							}

							if (opcionTipo < 1 || opcionTipo > 4)
							{
								Console.WriteLine("Error: Elije una opción válida (1-4).");
							}
						} while (!(opcionTipo >= 1 && opcionTipo <= 4)); // Mitigar posibles errores de entrada

						// Usando return para asignar valor a contenido
						contenido = Validacion_TipoContenido(opcionTipo);

						// Validación de duración (Usando su propia variable)
						do
						{
							Console.WriteLine("Cual es la duración del contenido (minutos)?");
							duracion = int.Parse(Console.ReadLine());
							if (duracion <= 0)
							{
								Console.WriteLine("Error: Ingrese una duración mayor a 0.");
							}
						} while (!(duracion > 0));

						// Validar Clasificacion del Contenido
						do
						{
							ClasificacionContenido();
							// implemtacion de try catch
							try
							{
								opcionTipo = int.Parse(Console.ReadLine());
							}
							catch (FormatException)
							{
								Console.WriteLine("Error: Solo ingresar un número, no letras.");
								opcionTipo = 0; // reinicio de valor que se recogio
								continue; // Regresa al inicio del do-while para mostar informacion
							}
							if (opcionTipo < 1 || opcionTipo > 3)
							{
								Console.WriteLine("Error: Elije una opción válida (1-3).");
							}
						} while (!(opcionTipo >= 1 && opcionTipo <= 3));

						// Usando return para asignar valor a clasificacion
						clasificacion = Validacion_ClasificacionContenido(opcionTipo);

						// usando un switch para convertir valores en string
						switch (opcionTipo)
						{
							case 1: clasificacionTexto = "Todo Público"; break;
							case 2: clasificacionTexto = "+13"; break;
							case 3: clasificacionTexto = "+18"; break;
							default: clasificacionTexto = ""; break;
						}

						// Validación de HORA (Usando su propia variable)
						do
						{
							Console.WriteLine("A que hora esta programado emitirse? (0-23):");
							horaPrograma = int.Parse(Console.ReadLine());
							if (horaPrograma < 0 || horaPrograma > 23)
							{
								Console.WriteLine("Error: Hora es incorrecta, usa valores de 0 - 23.");
							}
						} while (!(horaPrograma >= 0 && horaPrograma <= 23));

						// Validar Nivel de producción (bajo, medio, alto)
						do
						{
							Produccion();
							// implemtacion de try catch
							try
							{
								opcionTipo = int.Parse(Console.ReadLine());
							}
							catch (FormatException)
							{
								Console.WriteLine("Error: Solo ingresar un número, no letras.");
								opcionTipo = 0; // reinicio de valor que se recogio
								continue; // Regresa al inicio del do-while para mostar informacion
							}
							if (opcionTipo < 1 || opcionTipo > 3)
							{
								Console.WriteLine("Error: Elije una opción válida (1-3).");
							}
						} while (!(opcionTipo >= 1 && opcionTipo <= 3));

						// Usando return para asignar valor a produccion
						nivelProduccion = Validacion_Produccion(opcionTipo);

						// ========== 2.2 VALIDACION TECNICA ==========
						errorAcumulado = ""; // definicion error a zero para resear transporte de variables

						// 1. Clasificación y horario
						errorAcumulado = Validacion_Clasificacion_Horario(clasificacion, horaPrograma);

						// 2. Duración (solo si no hay error previo)
						if (errorAcumulado == "")
						{
							errorAcumulado = Validacion_Duracion(contenido, duracion);
						}

						// 3. Nivel de producción (solo si no hay error previo)
						if (errorAcumulado == "")
						{
							errorAcumulado = Validacion_NivelProduccion(nivelProduccion, clasificacion);
						}

						// Decidir si se aprueba el contenido
						if (errorAcumulado == "")
						{
							// ========== 2.3 CLASIFICACION DE IMPACTO ==========
							ImpactoContenido = ClasificarImpacto(nivelProduccion, duracion, horaPrograma);
							decision = DecisionFinal(ImpactoContenido, duracion, horaPrograma, clasificacionTexto, contenido);
							Console.WriteLine("----------------------------------------");
							Console.WriteLine("Contenido aprobó la Fase Técnica!");
							Console.WriteLine("Impacto: " + ImpactoContenido);
							Console.WriteLine("Decisión: " + decision);
							Console.WriteLine("----------------------------------------");

							// Confirmación del usuario
							Console.WriteLine("¿Deseas guardar este contenido? (S/N)");
							confirmacion = Console.ReadLine();
							if (confirmacion.ToUpper() == "S")
							{
								contadorContenido = contadorContenido + 1; // añadiendo cada que el usuario confirma contenido en contadorContenido++;

								// Registro de Contadores de impacto
								switch (ImpactoContenido)
								{
									case "Alto": contImpactoAlto = contImpactoAlto + 1; break;
									case "Medio": contImpactoMedio = contImpactoMedio + 1; break;
									case "Bajo": contImpactoBajo = contImpactoBajo + 1; break;
								}

								// Registro de Contadores de decision
								if (decision == "Publicar: Contenido apto para publicación.")
								{
									contPublicar = contPublicar + 1;
								}
								else
								{
									// Aqui se extrae los primeros 20 caracteres
									// para clasificar la decisión sin depender del texto adicional.
									// Entonces aqui Compara solo el inicio de la cadena porque el resto puede cambiar (el motivo del ajuste)
									if (decision.Substring(0, Math.Min(20, decision.Length)) == "Publicar con ajustes")
									{
										contPublicarAjustes = contPublicarAjustes + 1;
									}
									else
									{
										if (decision.Substring(0, Math.Min(18, decision.Length)) == "Enviar a revisión")
										{
											contRevision = contRevision + 1;
										}
									}
								}
								Console.WriteLine("Contenido guardado correctamente.");
								Console.WriteLine("----------------------------------------");
								// Guardar toda la información de contenido según el contador usando switch para mejor logica
								string infoActual = nombreContenido + " | Tipo: " + contenido + " | Duración: " + duracion.ToString() + " min | Clasificación: " + clasificacionTexto + " | Hora: " + horaPrograma.ToString() + ":00 | Producción: " + nivelProduccion + " | Impacto: " + ImpactoContenido + " | Decisión: " + decision;
								switch (contadorContenido)
								{
									case 1: infoContenido1 = infoActual; break;
									case 2: infoContenido2 = infoActual; break;
									case 3: infoContenido3 = infoActual; break;
									case 4: infoContenido4 = infoActual; break;
								}
							}
							else
							{
								Console.WriteLine("Contenido descartado por el usuario.");
								Console.WriteLine("----------------------------------------");
							}
						}
						else
						{
							Console.WriteLine("El contenido fue rechazado por la siguiente razón:");
							Console.WriteLine(errorAcumulado);
							Console.WriteLine("----------------------------------------");
							contRechazar++; // registra contenido que es rechazado técnicamente
						}
					}
					else
					{
						Console.WriteLine("Error: Biblioteca de datos esta llena");
						Console.WriteLine("----------------------------------------");
					}
					break;
				case 2: // Llamada de metodo MostrarReglas
					MostrarReglas();
					break;
				case 3: // Mostrar estadísticas
					MostrarEstadisticas(totalEvaluados, contPublicar, contPublicarAjustes, contRevision, contRechazar, contImpactoAlto, contImpactoMedio, contImpactoBajo, contadorContenido, infoContenido1, infoContenido2, infoContenido3, infoContenido4);
					break;
				case 4: // Reiniciar estadísticas
					ReiniciarEstadisticas(ref totalEvaluados, ref contPublicar, ref contPublicarAjustes, ref contRevision, ref contRechazar, ref contImpactoAlto, ref contImpactoMedio, ref contImpactoBajo, ref contadorContenido, ref infoContenido1, ref infoContenido2, ref infoContenido3, ref infoContenido4);
					break;
			}
		} while (menu != 5); // menu se repite hasta que el usuario ingrese 5
							 // Resumen para final de la sesion.
		MostrarEstadisticas(totalEvaluados, contPublicar, contPublicarAjustes, contRevision, contRechazar, contImpactoAlto, contImpactoMedio, contImpactoBajo, contadorContenido, infoContenido1, infoContenido2, infoContenido3, infoContenido4);
		Console.WriteLine("Gracias por usar el Gestor de Streaming :D " + Usuario);
	}
}
