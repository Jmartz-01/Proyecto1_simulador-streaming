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

[📖 Manual de usuario](https://github.com/user-attachments/files/26235749/final.Manual.de.Usuario.Gestor.de.Decisiones.de.Contenido.Streaming.pdf)

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
<img src="Diagramas%20de%20flujo/ClasificarImpacto.png" alt="Clasificar impacto" width="45%">
<img src="Diagramas%20de%20flujo/DecisionFinal.png" alt="Decisión final" width="45%">
</p>
</details>

## Recursos adicionales

- **Archivo PSeInt**  
  El código original en pseudocódigo se encuentra en:  
  `Diagramas de flujo/Projecto_GestorDecisiones_Fase1.psc`

- **Roadmap interactivo e interfaz**  
  [Descargar roadmap](https://github.com/user-attachments/files/26171365/markmap.html)
  
  <video src="https://github.com/user-attachments/assets/93bca3db-a43e-4faf-ac5e-88583e269b9b" controls="controls" style="max-width: 100%;"></video>
