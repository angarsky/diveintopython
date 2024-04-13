> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/file-handling/json

Los archivos JSON han ganado una inmensa popularidad debido a su compatibilidad perfecta con los sistemas basados en la web. JSON, abreviatura de [Notación de Objetos de JavaScript](https://en.wikipedia.org/wiki/JSON), sirve como un formato ligero para el intercambio de datos, convirtiéndolo en una opción favorita para aplicaciones web. Python, equipado con herramientas robustas, se presenta como una excelente plataforma para manejar archivos JSON. Este artículo tiene como objetivo profundizar en la lectura, manipulación de archivos JSON y sus aplicaciones prácticas utilizando Python. Comprender cómo usar JSON en Python es crucial para el desarrollo web moderno, análisis de datos e integración de sistemas.\n",

## Importando el Módulo JSON\
       
Python proporciona instrumentos flexibles que permiten trabajar con JSON.
Para iniciar operaciones con archivos JSON en Python, primero se debe importar el módulo `json`. Este módulo equipa a Python con funcionalidades específicamente adaptadas para manejar datos JSON.

Ejemplo de importación del módulo JSON:

```python
import json
```

Esta función se emplea para importar archivos JSON al entorno Python para su posterior manejo y manipulación.

## Cómo leer archivos JSON en Python

La lectura de archivos JSON en Python implica el uso de la función `load()` del módulo json. Empleando esta función, Python puede leer y cargar sin esfuerzo datos JSON desde un archivo a su programa.

Ejemplo de lectura de un archivo JSON:

```python
with open('data.json') as file:
    data = json.load(file)
    print(data)
```

Este ejemplo muestra cómo abrir un archivo JSON en Python y trabajar con él.

## Funciones del módulo JSON

El módulo `json` de Python ofrece varias funciones para manejar datos JSON eficientemente.

- **json.load()**: Esta función carga datos JSON desde un objeto tipo archivo y los convierte en un objeto Python. Esta función es particularmente útil cuando necesitas parsear un archivo JSON en Python y manipularlo dentro de tu programa
- **json.loads()**: json.loads() se utiliza para analizar una cadena JSON y convertirla en un objeto Python.
- **json.dump()**: La función json.dump() escribe datos Python en un archivo JSON.
- **json.dumps()**: json.dumps() se utiliza para convertir un objeto Python (como un diccionario) en una cadena con formato JSON.

## Cómo cargar JSON desde un archivo en Python usando `json.load()`.

La función `json.load()` facilita la carga de datos JSON desde un fichero a un objeto Python. Traduce directamente los datos con formato JSON de un archivo a una estructura de datos compatible con Python, permitiendo un fácil acceso y manipulación.

Ejemplo - cómo cargar un archivo JSON en Python:

```python
import json

# Reading JSON data from a file and loading it into Python
with open('data.json') as file:
    data = json.load(file)
    print(data)
```

## Análisis de cadenas JSON con `json.loads()`

`json.loads()` analiza una cadena formateada en JSON y la convierte en un objeto de Python. Esta función acepta una cadena JSON como entrada y genera la estructura de datos de Python correspondiente, facilitando la extracción y manipulación de datos sin problemas.

Ejemplo - cómo analizar una cadena JSON en Python:

```python
import json

# Parsing a JSON string into a Python object
json_string = '{"name": "John", "age": 30, "city": "New York"}'
parsed_data = json.loads(json_string)
print(parsed_data)
```

## Cómo escribir en JSON en Python usando `json.dump()`

La función `json.dump()` escribe datos Python en un archivo JSON. Toma un objeto Python y lo escribe directamente en un archivo especificado en formato JSON, adecuado para su almacenamiento o transmisión.

Ejemplo de escritura en un fichero JSON:

```python
import json

# Writing Python data to a JSON file
data = {"name": "John", "age": 30, "city": "New York"}
with open('output.json', 'w') as file:
    json.dump(data, file)
```

## Convertir objetos Python en cadenas JSON con `json.dumps()`

json.dumps()` convierte un objeto Python (como un diccionario o una lista) en una cadena con formato JSON. Esta función acepta un objeto Python como entrada y devuelve una cadena JSON representando el objeto, permitiendo un intercambio y serialización de datos eficiente.

Ejemplo de conversión de un objeto Python a una cadena JSON:

```python
import json

# Converting a Python object to a JSON-formatted string
data = {'name': 'John', 'age': 30, 'city': 'New York'}
json_string = json.dumps(data)
print(json_string)
```

## Objetos Python y representaciones JSON equivalentes

La tabla ilustra el mapeo entre tipos de datos Python y sus correspondientes representaciones en formato JSON. Al convertir objetos Python a JSON, los diccionarios y las listas se convierten directamente en objetos JSON y matrices, respectivamente. Del mismo modo, otros tipos de datos Python como cadenas, enteros, flotantes, valores booleanos y None se asignan a sus respectivos equivalentes JSON.

| Objeto Python | Representación JSON Equivalente |
| ------------- | ------------- |
| Diccionario Objeto
| Lista Matriz
| Tuple Array
| Cadena
| Número entero
| Número flotante
| Verdadero Verdadero
| Falso False
| Ninguno | null |

## Cómo escribir un objeto JSON Pretty en un fichero

Para imprimir JSON en un formato más legible y organizado, necesitas usar la bandera `pretty_print`. Esta bandera formateará el JSON añadiendo sangría, saltos de línea y espacios entre los elementos. A continuación se presentan dos maneras de escribir JSON pretty a un archivo.

```python
import json

data = {'name': 'John', 'age': 30, 'city': 'New York'}

with open('data.json', 'w') as file:
    json.dump(data, file, indent=4, sort_keys=True)
```

En este ejemplo, hemos utilizado el método `json.dump()` para convertir el objeto diccionario `data` a JSON y guardarlo en un archivo `data.json`. Hemos establecido el parámetro `indent` a 4 para añadir indentación, y el parámetro `sort_keys` a True para ordenar las claves alfabéticamente.

## Errores Comunes con Archivos JSON

Al trabajar con archivos JSON en Python, puedes encontrarte con errores comunes que pueden afectar la carga, el análisis y el procesamiento de datos JSON. Uno de esos errores es el `ValueError: Extra data error`. Este error ocurre cuando hay datos adicionales presentes en el archivo JSON que no son compatibles con la estructura JSON esperada.

Primer ejemplo - una carga de JSON con datos extra:

```python
import json

data = '{"name": "John", "age": 25} {"name": "Alice", "age": 30}'

try:
    json_data = json.loads(data)
    print(json_data)
except ValueError as e:
    print("Error:", str(e))
```

En este ejemplo, la variable `data` contiene dos objetos JSON separados por un espacio. Cuando intentamos cargar estos datos usando `json.loads()`, aparece un `ValueError` con el mensaje `Extra data` porque múltiples objetos JSON no son válidos en un único archivo JSON.

Segundo ejemplo de lectura de un fichero JSON con datos extra:

```python
import json

try:
    with open("data.json", "r") as file:
        json_data = json.load(file)
        print(json_data)
except ValueError as e:
    print("Error:", str(e))
```

En este ejemplo, estamos leyendo datos JSON de un fichero llamado `data.json`. Si el archivo contiene datos adicionales que no se ajustan a la estructura JSON esperada, el método `json.load()` lanzará un `ValueError`.

Para manejar el `ValueError: Extra data error`, puedes capturar la excepción utilizando un bloque try-except, como se muestra en los ejemplos. Esto te permite manejar el error con elegancia y proporcionar la información adecuada o tomar acciones alternativas.

Cuando se encuentre con este error, es importante examinar cuidadosamente el archivo JSON para asegurarse de su validez. Compruebe que la estructura JSON es correcta y que no hay datos adicionales o inesperados.
