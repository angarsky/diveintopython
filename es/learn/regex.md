> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/regex

Las expresiones regulares, o `regex` para abreviar, son herramientas esenciales en el conjunto de herramientas del programador de Python. Proporcionan una manera poderosa de coincidir patrones dentro del texto, permitiendo a los desarrolladores buscar, manipular e incluso validar datos de manera eficiente. Ya sea que estés analizando grandes volúmenes de archivos de registros, limpiando datos de entrada de usuarios o buscando patrones específicos dentro de un bloque de texto, regex ofrece una manera concisa y rápida de realizar el trabajo.

En su núcleo, regex en Python es compatible a través del módulo `re`, que viene integrado en la biblioteca estándar. Este módulo encapsula toda la funcionalidad para operaciones de regex, incluyendo funciones para buscar, dividir, reemplazar y compilar expresiones regulares. Entender la sintaxis y los caracteres especiales usados en regex puede parecer desalentador inicialmente, pero dominar estos puede mejorar significativamente tu productividad y capacidades como programador.

En este artículo, veremos los conceptos básicos de regex, incluyendo casos de uso comunes, funciones clave en el módulo `re`, y algunos consejos para hacer tus expresiones tanto efectivas como eficientes. Ya seas nuevo en la programación o busques refinar tus habilidades de coincidencia de patrones, regex en Python es una herramienta versátil que vale la pena aprender.

## Ventajas de las Expresiones Regulares en Python

- **Eficiencia en el Procesamiento de Texto:** Busca, coincide o reemplaza rápidamente patrones en el texto.
- **Versatilidad:** Desde la validación de datos hasta el web scraping, regex encuentra su aplicación.
- **Sintaxis Simplificada:** El módulo [re](https://docs.python.org/3/library/re.html) de Python simplifica la implementación de regex.
- **Poder de Coincidencia de Patrones:** Permite coincidir patrones complejos que serían desafiantes de encontrar con métodos tradicionales.

## Uso de Expresiones Regulares en Python

Las expresiones regulares pueden emplearse en una miríada de escenarios que van desde la coincidencia de cadenas simples hasta tareas complejas de análisis de texto como:

- Validación de datos (correos electrónicos, números de teléfono)
- Web scraping
- Análisis de archivos de registro
- Pre-procesamiento de datos de texto en tareas de Aprendizaje Automático

Para aquellos que buscan experimentar con regex de Python en línea, numerosas plataformas y probadores de regex están disponibles que permiten retroalimentación e aprendizaje inmediatos.

### Ejemplo: Dirección de Correo Electrónico Encontrada

```python
import re

text = "For more information, contact us at info@example.com."
match = re.findall(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b', text)

print("Email Address Found:", match)
```

### Ejemplo: Validar Número de Teléfono

```python
import re

def validate_phone_number(number):
    if re.match(r'^\+?1?\d{9,15}$', number):
        return True
    return False

number = "+1234567890"
print("Is Valid Phone Number:", validate_phone_number(number))
```

Explorar las capacidades de las expresiones regulares en Python abre una nueva dimensión de posibilidades para el procesamiento de texto y la manipulación de datos. Ya sea a través de plataformas en línea o codificación práctica, dominar `regex` es una habilidad valiosa en el conjunto de herramientas de cualquier programador.

## Características Clave de la Biblioteca Regex de Python

- **Regex en Python** ayuda en la coincidencia de patrones, búsqueda y manipulación de texto compleja.
- **Límite de palabra regex de Python** (`\b`) permite búsquedas precisas al marcar el inicio o el fin de una palabra, mejorando la precisión de tus tareas de procesamiento de texto.

### Ejemplo: el Uso de `findall()`

En este ejemplo, usamos `regex` para encontrar ocurrencias de una palabra específica en un texto, demostrando el uso del límite de palabra regex de Python.

```python
import re

text = "Python is powerful. Python is easy to learn."
pattern = r'\bPython\b'

matches = re.findall(pattern, text)
print("Occurrences of 'Python':", len(matches))
```

### Ejemplo: Validar Correo Electrónico

Aquí, validamos una dirección de `email` utilizando una expresión regular, mostrando la versatilidad de regex en Python.

```python
import re

def validate_email(email):
    pattern = r'^[\w\.-]+@[\w\.-]+\.\w+$'
    if re.match(pattern, email):
        return True
    return False

email = "example@example.com"
print("Is the email valid?", validate_email(email))
```

## Comparador Regex

Las funciones clave en el módulo `re` de Python son `match` y `search`, cada una sirve a un propósito distinto en la coincidencia regex.

### Match vs. Search

- **python match regex**: La función `re.match()` verifica si hay una coincidencia solo al inicio de la cadena. Si el patrón no está al principio, retorna None.
- **python regex search**: Contrario a match, `re.search()` escanea toda la cadena buscando una coincidencia en cualquier parte del texto.

Aquí hay dos ejemplos que demuestran el uso de `re.match()` y `re.search()` en Python.

### Ejemplo: Usando `re.match()`

```python
import re

pattern = r"Python"
text = "Learning Python with regex"

match = re.match(pattern, text)

if match:
    print("Match found:", match.group())
else:
    print("No match found")
```

En este escenario, dado que Python no está al inicio, `re.match()` devolverá `No match found`.

### Ejemplo: Usando `re.search()`

```python
import re

pattern = r"Python"
text = "Learning Python with regex"

search = re.search(pattern, text)

if search:
    print("Match found:", search.group())
else:
    print("No match found")
```

Aquí, `re.search()` examina toda la cadena y encuentra exitosamente Python, devolviendo `Coincidencia encontrada: Python`.

Entender la diferencia entre coincidencia y `search` en las coincidencias de expresiones regulares de Python es crucial para manipular y buscar cadenas de manera efectiva en aplicaciones de Python.

## Regex Reemplazar

¿Estás buscando dominar el arte de **Python Regex Reemplazar**? Esta poderosa técnica te permite buscar patrones dentro de cadenas y reemplazarlos con texto deseado, haciendo que la manipulación de datos sea más suave que nunca. Ya sea que estés trabajando con limpieza de datos, procesamiento o incluso raspar web, entender cómo utilizar **Python string replace regex** puede aumentar significativamente tu eficiencia en la codificación. Aquí tienes una guía concisa con ejemplos prácticos para comenzar:

## Usando `re.sub()` para Python Regex Reemplazar Todo

El módulo `re` en Python proporciona un método llamado `sub()` que significa sustituir. Es la piedra angular para realizar operaciones de **python replaceall regex**. La sintaxis es sencilla: `re.sub(pattern, replacement, string)`. Este método busca el patrón en la cadena dada y lo reemplaza con la cadena de reemplazo.

### Ejemplo: Reemplazo Simple de Palabra

```python
import re

text = "Hello World! Welcome to the World of Python."
new_text = re.sub(r"World", "Universe", text)
print(new_text)
```

Salida: `¡Hola Universo! Bienvenido al Universo de Python.`

Este ejemplo demuestra cómo reemplazar todas las instancias de `World` con `Universe` en la cadena dada.

### Ejemplo: Removiendo Puntuación

```python
import re

text = "Hello, World! How are you today?"
clean_text = re.sub(r"[,!.?]", "", text)
print(clean_text)
```

Salida: `Hello World How are you today`

Aquí, eliminamos eficientemente todos los signos de puntuación comunes de nuestra cadena, mostrando la utilidad de `re.sub()` para fines de limpieza de texto.

Dominar **Python string replace regex** con la función `re.sub()` ofrece una manera flexible y poderosa de manipular cadenas en Python. Su capacidad para buscar y reemplazar patrones lo hace una herramienta invaluable para cualquier persona que busque realizar tareas de procesamiento de texto sofisticadas sin esfuerzo.

Recuerda, la clave para la competencia con **Python replaceall regex** es la práctica. Implementa estos ejemplos en tus proyectos, y pronto descubrirás aún más formas de optimizar tu código con las capacidades de regex de Python.

## Probador de Regex

¿Buscas un probador de regex de Python para validar y refinar tus expresiones regulares de manera eficiente? Probar patrones de regex de Python es esencial en tareas de análisis, limpieza y preparación de datos. Con un probador de regex de Python, puedes probar, depurar y optimizar rápidamente tus expresiones regulares para coincidir o extraer exactamente el conjunto de datos que necesitas.

### Ejemplo: Buscar correos electrónicos por patrón

```python
import re

text = "Contact us at support@example.com or sales@example.net"
pattern = r"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

# Test Python regex
matches = re.findall(pattern, text)

for match in matches:
    print("Email found:", match)
```

### Ejemplo: Buscar Números Telefónicos por Patrón

```python
import re

text = "Reach us at +1-555-123-4567 or +1-555-765-4321"
pattern = r"\+\d{1,3}-\d{3}-\d{3}-\d{4}"

# Python regex tester
matches = re.findall(pattern, text)

for match in matches:
    print("Phone number found:", match)
```

Estos ejemplos destacan la utilidad de un probador de regex de Python en extraer y verificar patrones de datos rápidamente. Ya sea que estés trabajando en tareas de raspado de datos, validación o preprocesamiento, las expresiones regulares son herramientas invaluables en tu kit de herramientas de Python. Al aprovechar un probador de regex de Python, puedes asegurarte de que tus expresiones sean precisas, eficientes y listas para cualquier desafío de datos.

## Dominando Regex de Python

Las expresiones regulares (regex) en Python son indispensables para cualquiera que necesite gestionar, buscar o manipular texto de manera eficiente. Ya sea que estés buscando refinar tus habilidades de codificación o optimizar tus tareas de procesamiento de datos, esta hoja de trucos de regex Python cubre patrones esenciales, funciones y consejos para mejorar tu flujo de trabajo de programación. Profundicemos en las funciones de búsqueda de regex Python, cómo utilizar la característica de grupo de regex python para hacer coincidir patrones complejos, y dónde probar tus expresiones con herramientas en línea de regex python.

### Funciones Esenciales de Regex

- **search()**: Encuentra la primera ocurrencia de un patrón dentro de una cadena. Retorna un objeto de coincidencia si se encuentra, de lo contrario None.

```python
import re
result = re.search(r'\d+', 'Episode 8: The Last Stand')
print(result.group())  # Output: 8
```

- **findall()**: Devuelve todas las coincidencias no superpuestas de un patrón en una cadena, como una lista de cadenas.

```python
import re
results = re.findall(r'\d+', '3 apples, 5 oranges, 9 berries')
print(results)  # Output: ['3', '5', '9']
```

### Agrupación con Paréntesis

La agrupación en regex te permite seleccionar partes del texto que coincide. Usa el método `group()` para acceder a patrones coincidentes.

```python
import re
pattern = re.compile(r'(\d+)([a-z]+)')
match = pattern.search("123abc")
print(match.group(1))  # Output: 123
print(match.group(2))  # Output: abc
```

## Prueba Tu Regex En Línea

Antes de integrar expresiones complejas en tu código, aprovecha un probador de regex en línea de Python como [Regex101](https://regex101.com/). Estas herramientas proporcionan retroalimentación en tiempo real y explicaciones útiles sobre tus patrones de regex y sus coincidencias.

Incorporar estos consejos y funciones de hoja de trucos de regex de Python en tu arsenal de programación agilizará tus tareas de procesamiento de texto y análisis de datos. Recuerda, la práctica hace al maestro, especialmente cuando se domina el arte de regex en Python.

## Método `split()` de RegEx 

Descubre cómo dividir cadenas de manera eficiente en Python utilizando expresiones regulares (regex). Los métodos de división con regex de Python permiten capacidades avanzadas de división de cadenas, más allá de lo que ofrece la función básica `split()`. Dominar la división con regex en Python, dividir en Python usando regex o dividir por regex en Python puede elevar tus habilidades de manipulación de cadenas en la programación en Python.

Para usar la división con regex en Python, primero necesitas `importar` el módulo `re` que contiene el método `split`. Este poderoso método te permite dividir una cadena por las ocurrencias de un patrón definido por regex.

### Ejemplo: Dividiendo la Cadena por Coma Seguida de un Espacio

```python
import re

# Example string
text = "Words, separated, by, commas."
# Splitting the string by comma followed by a space
words = re.split(r',\s', text)

print(words)
# Output: ['Words', 'separated', 'by', 'commas.']
```

En este ejemplo, `\s` es un regex que coincide con cualquier carácter de espacio en blanco. Combinado con `,`, efectivamente divide la cadena dondequiera que se encuentre una coma seguida de un espacio.

### Ejemplo: Dividiendo por Múltiples Delimitadores

```python
import re

# Example string with multiple delimiters
text = "Words; separated by, different. delimiters!"
# Splitting by multiple delimiters: semicolon, comma, and period
words = re.split(r'[;,.]\s', text)

print(words)
# Output: ['Words', 'separated by', 'different', 'delimiters!']
```

Aquí, `[;,.]` significa un conjunto de caracteres que consiste en un punto y coma, coma y punto. Esto permite que la división ocurra en cualquiera de estos caracteres seguidos por un espacio, mostrando la versatilidad de usar la división por regex en python para tareas de manipulación de cadenas más complejas.

Al incorporar la división por regex de Python en tus proyectos, desbloqueas un nivel superior de capacidad de procesamiento de cadenas, permitiendo técnicas de análisis y manipulación de datos más precisas y variadas.

## Cómo usar `re.findall()`

Descubrir todas las ocurrencias que coinciden con un patrón en una cadena es una tarea común en el procesamiento y análisis de datos. Python, con su rico ecosistema de bibliotecas, ofrece un enfoque directo para esto a través del módulo `re`, especialmente cuando se trabaja con expresiones regulares (regex). En esta publicación, exploraremos cómo usar las funciones de regex de Python para encontrar todas las coincidencias, centrándonos en tareas comunes como la extracción de correos electrónicos.

La función `re.findall()` en Python está diseñada para recuperar todas las coincidencias no superpuestas de un patrón en una cadena, devolviéndolas como una lista. Esta capacidad es increíblemente útil para tareas que requieren coincidencia de patrones, como extraer direcciones de correo electrónico de un texto.

### Métodos Clave

- `re.findall(pattern, string, flags=0)`: Busca en la cadena todas las coincidencias del patrón y las devuelve como una lista.

Para una aplicación más práctica, usemos `re.findall()` para extraer direcciones de correo electrónico de un texto:

```python
import re

text = "For more information, contact us at info@example.com or support@example.org."
email_pattern = r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'

emails = re.findall(email_pattern, text)
print(emails)
# Output: ['info@example.com', 'support@example.org']
```

## RegEx: `sub()` y `search()` métodos

En Python, las regex (expresiones regulares) se utilizan para la búsqueda y manipulación de cadenas. Dos funciones poderosas en este dominio son `regex.sub()` y `regex.search()`. Al dominar estas, puedes realizar de manera eficiente **sustitución de regex en Python** y operaciones de búsqueda en tus tareas de procesamiento de texto.

### Sustitución Regex en Python con re.sub()

La función `re.sub()` en Python se utiliza para **sustitución de regex en Python**. Reemplaza ocurrencias de un patrón en una cadena con un reemplazo especificado. Es particularmente útil cuando quieres modificar cadenas de una manera sofisticada, incluyendo el uso de **grupos de captura de sub regex en Python** para manipular partes específicas del texto coincidente.

```python
import re

text = "2024 is the year of code"
# Replace all instances of a digit sequence with 'XXXX'
result = re.sub(r'\d+', 'XXXX', text)
print(result)  # Output: XXXX is the year of code
```

### Búsqueda Regex en Python

La función `regex.search()` en Python escanea una cadena en busca de la primera ubicación donde se encuentra un patrón regex especificado. Devuelve un objeto de coincidencia si se encuentra una coincidencia y `None` si no se encuentra ninguna coincidencia. Esto es perfecto para verificar la presencia de patrones en cadenas.

```python
import re

text = "Reach me at email@example.com"
# Search for an email pattern
match = re.search(r'[\w\.-]+@[\w\.-]+', text)
if match:
    print("Email found:", match.group())  # Output: Email found: email@example.com
else:
    print("No email found.")
```

Al incorporar técnicas de `regex.search()` junto con la funcionalidad de **grupo de subcaptura regex**, puedes lograr un análisis y manipulación de texto comprensivos. Estas herramientas son vitales para la limpieza de datos, el análisis sintáctico y tareas de procesamiento de texto más sofisticadas.
