## Projecto 1: Gestor de Decisiones Streaming
El proyecto simula un sistema de decisiones de una plataforma de contenido digital. Este sistema es desarrollado en C# que va de la mano con fundamentos de pensamiento computacional usando estructuras selectivas, ciclos, funciones y métodos, sin hacer uso de arreglos ni listas.

Esta pensado para un equipo de cualquier plataforma que recibe propuestas de contenido y evalua cada contenido (películas, series, documentales, eventos en vivo) aplicando reglas de clasificación como son el horario, duración y nivel de producción. En base a esas reglas el sistema recomienda si el contenido debe:

- *Publicarse*
- *Publicarse con ajustes*  
- *Enviarse a revisión*  
- *Rechazarse*

## Como ejecutar el programa?

1. Clona el repositorio y copia el url del repositorio
2. Tambien puedes descargar el archivo `Program.cs` y ejecuta el programa con un compilador.

[📖 Manual de usuario 1]([https://github.com/user-attachments/files/26235749/final.Manual.de.Usuario.Gestor.de.Decisiones.de.Contenido.Streaming.pdf](https://github.com/user-attachments/files/26250093/CORREGIDO.Manual.de.Usuario.Gestor.de.Decisiones.de.Contenido.Streaming.pdf)) | [📖 Manual de usuario 2](https://github.com/user-attachments/files/26235909/Manual.de.Usuario.Gestor.de.Decisiones.de.Contenido.Streaming.pdfERROR)



> El programa guía paso a paso al usuario. No almacena una lista de contenidos, solo evalúa cada propuesta y mantiene estadísticas generales de la sesión.

### Obejetivos del programa

- Hacer la lógica desde zero de un sistema de decisiones.
- Implementar estructuras selectivas, ciclos y funciones.
- Aplicar validaciones de datos para garantizar la calidad.
- Organizar el código en funciones y evitar el uso de arreglos o listas.
- Testear el programa con varios escenarios (mínimo 20 evaluaciones).
- Documentar el funcionamiento con un diagrama de flujo y un manual de usuario.
- Explicar el proceso de desarrollo mediante podcasts.
- Mantener el repositorio de GitHub con commits mostrando el progreso.

####  Requisitos técnicos

| **Requisito** | **Descripción** |
|-----------|-------------|
| `switch` | Control del menú principal |
| `do-while` | Bucle principal que mantiene activo el programa |
| `while` | Validación de entradas de usuario |
| `for` | Usado al menos en una parte del sistema |
| `if/else` encadenado y anidado | Lógica de evaluación de reglas e impacto |
| Funciones | Organización del código en métodos reutilizables |
| Sin arreglos ni listas | Toda la información se maneja con variables simples y contadores |

## Podcasts
- **Podcast #1 – Inicio y menú**  
  [▶️ 1.1 De la idea al código: construyendo un gestor de streaming con reglas inteligentes](https://correo2urledu-my.sharepoint.com/:u:/g/personal/jpmartinezci_correo_url_edu_gt/IQD3Q1poOLTzSIsM7YVhXvHPAQMMRcp14XqWhmVlnRNLbkY?e=IoNYBi&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D)

- **Podcast #2 – Lógica de evaluación**  
  [▶️ 1.2 La Evolución del Guardián de Streaming](https://correo2urledu-my.sharepoint.com/:u:/g/personal/jpmartinezci_correo_url_edu_gt/IQDkbA8zYy2sQKtPkIb3lekTARS-yPVPhBU6QTD7u5Ep7k0?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=4vwegk)  
  [▶️ 1.3 La Bitácora del Desarrollador (Commits y Estándares)](https://correo2urledu-my.sharepoint.com/:u:/g/personal/jpmartinezci_correo_url_edu_gt/IQAH_6_YCJI2QJkDMoMGkWlfAc4yMKXFaSpRPvnDdcAyanw?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=da8G7R)

- **Podcast #3 – Estadísticas y reglas**  
  [▶️ 1.4 La Anatomía del Flujo (Explicación del Diagrama)](https://correo2urledu-my.sharepoint.com/:u:/g/personal/jpmartinezci_correo_url_edu_gt/IQBmPbQ-4ib6S5JvPgKKSf1PATl753anq26-wey7P5JJV6Q?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=wLaNbY)

## Diagramas de flujo 

<img width="4494" height="1643" alt="diagram-export-3-23-2026-4_10_08-PM" src="https://github.com/user-attachments/assets/c14c3bbe-02fb-4a4d-b5f0-eda728555a6d" />

> 📁 _Archivo PSeint tambien disponible en directorio Diagramas de flujo/Projecto_GestorDecisiones_Fase1.psc_

Los diagramas de flujo documentan la lógica de cada módulo del sistema. Se encuentran en el directorio `Diagramas de flujo/` del repositorio.

<details>
<summary><strong>1. Ciclo de Vida Principal (Main Flow)</strong></summary>
<p align="center">


<em>Representación del algoritmo general: gestión de sesión, navegación del menú y persistencia temporal de datos.</em>



<img src="Diagramas%20de%20flujo/FlujoPrincipal.png" alt="Flujo principal" width="80%">
</p>
</details>

<details>
<summary><strong>2. Procesamiento de Inputs y Normalización</strong></summary>
<p>Módulos encargados de la captura y transformación de datos de entrada en constantes lógicas para el motor de decisiones.</p>
<ul>
<li><strong>Validación de Tipo:</strong> Mapeo de categorías comerciales.


<img src="Diagramas%20de%20flujo/ValidacionTipoContenido.png" alt="Validación tipo" width="70%">
</li>
<li><strong>Validación de Clasificación:</strong> Normalización de audiencias etarias.


<img src="Diagramas%20de%20flujo/Validacion_ClasificacionContenido.png" alt="Validación clasificación" width="70%">
</li>
<li><strong>Nivel de Producción:</strong> Cuantificación de estándares técnicos.


<img src="Diagramas%20de%20flujo/Validacion_Produccion.png" alt="Validación producción" width="70%">
</li>
</ul>
</details>

<details>
<summary><strong>3. Motor de Reglas Técnicas (Filtros de Integridad)</strong></summary>


<p>Validaciones de cumplimiento obligatorio. El sistema aplica una lógica de <strong>cortocircuito</strong>: si una regla falla, se interrumpe el procesamiento para optimizar recursos.</p>
<ul>
<li><strong>Matriz Horaria:</strong> Cruce de seguridad entre audiencia y franja de emisión.</li>
<li><strong>Rango de Duración:</strong> Validación de parámetros según formato.</li>
<li><strong>Seguridad +18:</strong> Restricción de calidad para contenidos sensibles.</li>
</ul>
<p align="center">
<strong>Diagrama Integrado de Validación Técnica:</strong>


<img src="Diagramas%20de%20flujo/Diagrama%20detalladoValidación%20técnica%20completa.png" alt="Validación completa" width="90%">
</p>
</details>

<details>
<summary><strong>4. Determinación de Impacto y Resolución Final</strong></summary>


<p>Fase final donde se ponderan las variables aprobadas para generar el dictamen de publicación.</p>
<p align="center">
<ul>
  <li>Flujo de la funcion ClasificarImpacto</li>
  <li><img src="Diagramas%20de%20flujo/ClasificarImpacto.png" alt="Clasificar impacto" width="45%"></li>
  <li><strong>Flujo total de la decision final</strong></li>
  <li><img src="Diagramas%20de%20flujo/DecisionFinal.png" alt="Decisión final" width="45%"></li>
</ul>
</p>
</details>

## Recursos adicionales

- **Archivo PSeInt**  
  El código original en pseudocódigo se encuentra en:  
  `Diagramas de flujo/Projecto_GestorDecisiones_Fase1.psc`

- **Roadmap interactivo e interfaz**  
  [Descargar roadmap](https://github.com/user-attachments/files/26171365/markmap.html)
  
  <video src="https://github.com/user-attachments/assets/93bca3db-a43e-4faf-ac5e-88583e269b9b" controls="controls" style="max-width: 100%;"></video>

#### Testeo de errores del programa 🦠

<details>
<summary> ⌦ Testeo de errores y funcionalidad del programa</summary>

##  Validaciones Técnicas – Rechazos

| # | Nombre | Tipo | Duración (min) | Clasificación | Hora | Producción | Regla evaluada |
|---|--------|------|:--------------:|:-------------:|:----:|:----------:|----------------|
| 1 | Horario +13 fuera | Película | 120 | +13 | 23 | Alto | Hora 23 > 22 → rechazo horario +13 |
| 2 | Horario +18 en día | Serie | 45 | +18 | 14 | Medio | Hora 14 (6–21) → rechazo horario +18 |
| 3 | Película corta | Película | 50 | Todo público | 12 | Medio | Duración < 60 |
| 4 | Película larga | Película | 190 | +13 | 20 | Alto | Duración > 180 |
| 5 | Serie larga | Serie | 95 | Todo público | 15 | Bajo | Duración > 90 |
| 6 | Documental corto | Documental | 25 | Todo público | 18 | Medio | Duración < 30 |
| 7 | Documental largo | Documental | 130 | +13 | 16 | Alto | Duración > 120 |
| 8 | Evento muy largo | Evento en vivo | 250 | +13 | 21 | Alto | Duración > 240 |
| 9 | Evento muy corto | Evento en vivo | 25 | Todo público | 20 | Medio | Duración < 30 |
| 10 | Producción baja +18 | Película | 100 | +18 | 23 | Bajo | Prohibido producción baja en +18 |


## ✅ Aprobados – Impacto BAJO

| # | Nombre | Tipo | Duración (min) | Clasificación | Hora | Producción | Decisión | Notas |
|---|--------|------|:--------------:|:-------------:|:----:|:----------:|:--------:|-------|
| 11 | Película normal baja | Película | 90 | Todo público | 14 | Bajo | Publicar | Cumple todo, sin límites |
| 12 | Serie corta baja | Serie | 25 | Todo público | 18 | Bajo | Publicar | Producción baja, duración <60, hora no prime |
| 13 | Documental bajo | Documental | 50 | +13 | 10 | Bajo | Publicar | Duración <60, producción baja |


## ✅ Aprobados – Impacto MEDIO

| # | Nombre | Tipo | Duración (min) | Clasificación | Hora | Producción | Decisión | Notas |
|---|--------|------|:--------------:|:-------------:|:----:|:----------:|:--------:|-------|
| 14 | Película producción media | Película | 90 | +13 | 15 | Medio | Publicar | Producción media → impacto Medio |
| 15 | Serie duración media | Serie | 60 | Todo público | 19 | Bajo | Publicar | Duración 60 (rango medio) |
| 16 | Documental duración media | Documental | 90 | Todo público | 14 | Bajo | Publicar | Duración en 60–120, producción baja |
| 17 | Evento duración media | Evento en vivo | 120 | +13 | 16 | Bajo | Publicar | Duración 120 (rango medio) |


## ✅ Aprobados – Impacto ALTO

| # | Nombre | Tipo | Duración (min) | Clasificación | Hora | Producción | Decisión | Notas |
|---|--------|------|:--------------:|:-------------:|:----:|:----------:|:--------:|-------|
| 18 | Producción alta | Película | 100 | +13 | 15 | Alto | Enviar a revisión | Producción Alta → impacto Alto |
| 19 | Duración >120 | Serie | 130 | Todo público | 14 | Medio | Enviar a revisión | Duración >120 → impacto Alto |
| 20 | Horario prime | Documental | 90 | +13 | 21 | Bajo | Enviar a revisión | Hora 21 (20–23) → impacto Alto |
| 21 | Combinación múltiple | Película | 150 | +18 | 22 | Alto | Enviar a revisión | Producción alta + duración >120 + horario prime |


## ✅ Aprobados – Publicar con Ajustes

| # | Nombre | Tipo | Duración (min) | Clasificación | Hora | Producción | Impacto | Notas |
|---|--------|------|:--------------:|:-------------:|:----:|:----------:|:-------:|-------|
| 22 | Duración límite inferior | Serie | 20 | Todo público | 14 | Medio | Medio | Duración mínima (20) |
| 23 | Duración límite superior | Película | 180 | +13 | 21 | Bajo | Bajo | Duración máxima (180) |
| 24 | Horario límite +13 inferior | Película | 100 | +13 | 6 | Medio | Medio | Hora límite inferior +13 (6) |
| 25 | Horario límite +13 superior | Película | 100 | +13 | 22 | Bajo | Bajo | Hora límite superior +13 (22) |
| 26 | Horario límite +18 | Película | 100 | +18 | 22 | Alto | Alto | Impacto Alto prevalece → Enviar a revisión |
| 27 | Horario límite +18 noche | Película | 100 | +18 | 5 | Alto | Alto | Impacto Alto domina → Enviar a revisión |
| 28 | Doble límite | Película | 60 | +13 | 22 | Bajo | Bajo | Duración mínima + hora límite superior +13 |


## Pruebas de Límite de Almacenamiento, Cancelación y Reinicio

| # | Nombre | Descripción |
|---|--------|-------------|
| 29 | Quinto contenido | Técnicamente válido pero biblioteca llena (4 ya guardados) → no se guarda |
| 30 | Cancelado por usuario | Aprobado técnicamente, usuario elige `N` → no se guarda |
| 31 | Reinicio (opción 4) | Todos los contadores y el almacenamiento se reinician a cero |


## Pruebas de Valores Límite / Borde

| # | Nombre | Tipo | Duración (min) | Clasificación | Hora | Producción | Impacto | Decisión | Notas |
|---|--------|------|:--------------:|:-------------:|:----:|:----------:|:-------:|:--------:|-------|
| 32 | Película límite inferior | Película | 60 | Todo público | 12 | Medio | Medio | Publicar con ajustes | Duración exacta 60 |
| 33 | Película límite superior | Película | 180 | Todo público | 13 | Alto | Alto | Enviar a revisión | Duración máxima + producción alta |
| 34 | Serie límite inferior | Serie | 20 | Todo público | 14 | Bajo | Bajo | Publicar con ajustes | Duración mínima, producción baja |
| 35 | Serie límite superior | Serie | 90 | Todo público | 15 | Medio | Medio | Publicar con ajustes | Duración máxima |
| 36 | Documental límite inferior | Documental | 30 | Todo público | 16 | Alto | Alto | Enviar a revisión | Duración mínima, producción alta |
| 37 | Documental límite superior | Documental | 120 | Todo público | 17 | Medio | Medio | Publicar con ajustes | Duración máxima, producción media |
| 38 | Evento límite inferior | Evento en vivo | 30 | Todo público | 18 | Alto | Alto | Enviar a revisión | Duración mínima, producción alta |
| 39 | Evento límite superior | Evento en vivo | 240 | Todo público | 19 | Medio | Medio | Publicar con ajustes | Duración máxima, producción media |
| 40 | +13 hora límite 6 | Película | 100 | +13 | 6 | Alto | Alto | Enviar a revisión | Hora límite, producción alta |
| 41 | +13 hora límite 22 | Película | 100 | +13 | 22 | Bajo | Bajo | Publicar con ajustes | Hora límite, producción baja |
| 42 | +18 hora límite 22 | Película | 100 | +18 | 22 | Alto | Alto | Enviar a revisión | Hora límite, impacto Alto |
| 43 | +18 hora límite 5 | Película | 100 | +18 | 5 | Alto | Alto | Enviar a revisión | Hora límite, impacto Alto |
</details>
