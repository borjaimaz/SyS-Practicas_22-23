# Practicas de Señales y Sistemas, curso 22-23: Repositorio.
## Autores: Samuel Rey Escudero, Borja Imaz Lueje. Universidad Rey Juan Carlos

Este repositorio aloja diferentes códigos en formato **MATLAB** (software comercial de uso genérico, especializado en cálculo y computación matricial), cuya finalidad es la compresión de diferentes conceptos de la asignatura de **Señales y Sistemas**.

## Contenido del Repositorio

A continuación se detalla el software contenido en cada carpeta del repositorio:

### Práctica 1: Sistemas continuos.

Esta práctica se centra en realizar una representación gráfica de la operación **convolución**, muy utilizada en el procesamiento de señales. Para ello, la práctica propone al estudiante que interactúe con una interfaz del repositorio, introduciendo diferentes señales y obteniendo el resultado de la convolución. 

**Objetivo:** Servir como apoyo al alumno para comprender la operación de convolución y su implicación para obtener la respuesta en sistemas lineales e invariantes (SLIT).

**Esta carpeta se compone de los siguientes ficheros:**
- **Practica1.pdf**: Guión de la práctica, con los enunciados y manual de usuario de la interfaz.
- **codigo.zip**: Carpeta que contiene todos los ficheros que utiliza la herramienta de convolución. Para su ejecución, es preciso ejecutar el fichero **Practica2.m** que se encuentra en esta carpeta. Es preciso descomprimir el fichero para su correcto funcionamiento.

### Práctica 2: Sistemas discretos.

Esta práctica se centra en el análisis de diferentes sistemas en **tiempo discreto**. Plantea diferentes ejercicios que incluyen señales discretas y sistemas discretos, a destacar:
- Análisis de secuencias complejas.
- Cálculo de salidas de sistemas lineales invariantes (SLIT) a través de la convolución discreta.
- Sistemas definidos por ecuaciones en diferencias.

**Objetivo:** Comprender los conceptos vistos en la teoría sobre señales y sistemas discretos, así como introducir al alumno en el diseño de estos sistemas.

**Esta carpeta se compone de los siguientes ficheros:**
- **Practica2.mlx**: Código en formato MATLAB LIVE EDITOR con la resolución de la práctica. Incluye diferentes líneas de código que sirven como base para visualizar y analizar las señales y sistemas planteados en cada ejercicio.

### Práctica 3: Introducción al Filtrado Digital

Esta práctica se centra en el procesado de un registro de señal de voz, el cual tiene un tono agudo interferente que se desea eliminar. La práctica propone el uso de un filtro **rechaza banda** centrado a la frecuencia del tono interferente.

**Objetivo:** Comprender el análisis de señales con distorsiones o componentes de frecuencias no deseadas, y el uso de filtros digitales para mitigar o eliminar tales distorsiones. Asimismo, aprender la metodología típica en el diseño de filtros digitales.

**Esta carpeta se compone de los siguientes ficheros:**
- **Practica3.pdf**: Guión de la práctica, con los enunciados en formato PDF.
- **voz.wav**: Registro que contiene la señal de voz a procesar en la práctica.
- **Practica3_res.mlx**: Código en formato MATLAB LIVE EDITOR con la resolución de la práctica. Incluye las principales líneas de código a utilizar durante la práctica, sin tanto el razonamiento crítico de las preguntas planteadas.
