> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/file-handling

Python cuenta con una variedad de funciones y bibliotecas incorporadas que hacen que trabajar con archivos sea muy fácil, y en este artículo, exploraremos las diferentes técnicas y mejores prácticas para manejar archivos en Python.

## Cómo Abrir Archivos en Python

Con Python, puedes leer y escribir archivos en el sistema fácilmente. Para leer un archivo en Python, puedes utilizar la función `open()`.

### Leyendo un Archivo

En Python, puedes leer un archivo utilizando la función `open()`. El siguiente ejemplo de código demuestra cómo leer un archivo en Python:

```python
file = open('example.txt', 'r')
data = file.read()
print(data)
```

### Leyendo un Archivo Línea-Por-Línea

A veces, puede que quieras leer un archivo línea-por-línea. Para hacer eso, puedes usar un bucle `for` para recorrer el archivo línea-por-línea. El siguiente código demuestra cómo leer un archivo línea-por-línea en Python:

```python
file = open('example.txt', 'r')
for line in file:
    print(line)
```

### Manejando el error `No such file or directory`

No es raro encontrarse con un error de `No such file or directory` al trabajar con archivos en Python. Para manejar este error, puedes usar un bloque de `try` y `except` para atrapar el error y manejarlo de manera adecuada. El siguiente código demuestra cómo manejar un error de `No such file or directory` en Python:

```python3
try:
    file = open('example.txt', 'r')
except FileNotFoundError:
    print("File not found!")
```

## Diferentes modos para el manejo de archivos en Python

En Python, hay varios modos para el manejo de archivos (modos de apertura de archivo) que incluyen:

- **Modo de lectura ('r')**: Este modo se utiliza para leer un archivo existente.

- **Modo de escritura ('w')**: Este modo se utiliza para escribir en un archivo. Creará un nuevo archivo si el archivo no existe y sobrescribirá el archivo si existe.

- **Modo de añadir ('a')**: Este modo se utiliza para añadir nuevos datos al final de un archivo existente (añadir a un archivo). Si el archivo no existe, se creará un nuevo archivo.

- **Modo binario ('b')**: Este modo se utiliza para leer o escribir datos binarios, como imágenes o archivos de audio.

### Abrir un archivo en modo de escritura

```python
file = open('example.txt', 'w')

# Write to the file
file.write('Hello, World!')

# Close the file
file.close()
```

En este ejemplo, primero abrimos un archivo llamado `example.txt` en modo de escritura. Escribimos la cadena `'Hello, World!'` en el archivo y luego lo cerramos.

### Abrir un archivo en modo de lectura

```python
file = open('example.txt', 'r')

# Read the file contents
content = file.read()

# Print the contents
print(content)

# Close the file
file.close()
```

En este ejemplo, abrimos el mismo archivo, `example.txt`, pero esta vez en modo de lectura. Leemos el contenido del archivo utilizando el método `read()`, lo guardamos en una variable llamada `content` y luego imprimimos el contenido en la consola. Finalmente, `close()` el archivo.

## Operaciones de archivos

Python proporciona módulos importantes como `os` y `shutil` para realizar operaciones de archivos como eliminar, renombrar, copiar y mover archivos.

### Eliminación de archivos

Puedes utilizar el método `os.remove()` para eliminar un archivo en Python. El siguiente fragmento de código muestra cómo eliminar el archivo llamado `example.txt`.

```python
import os

os.remove("example.txt")
```

### Renombrado de Archivos

Puedes utilizar el método `os.rename()` para renombrar un archivo en Python. El siguiente fragmento de código muestra cómo renombrar el archivo llamado `example.txt` a `new_example.txt`.

```python
import os

os.rename("example.txt", "new_example.txt")
```

### Copia de Archivos

Puedes utilizar el método `shutil.copy()` para copiar un archivo en Python. El siguiente fragmento de código muestra cómo copiar el archivo llamado `example.txt` a un nuevo archivo llamado `new_example.txt`.

```python
import shutil

shutil.copy("example.txt", "new_example.txt")
```

### Movimiento de Archivos

Puedes usar el método `shutil.move()` para mover un archivo en Python. El siguiente fragmento de código muestra cómo mover el archivo llamado `example.txt` a una nueva ubicación llamada `new_folder`.

```python
import shutil

shutil.move("example.txt", "/path/to/new_folder/example.txt")
```

## Métodos de Archivo en Python

Cuando trabajas con archivos en Python, hay varios métodos integrados que te permiten leer, escribir y manipular el contenido de los archivos. Estos métodos proporcionan opciones flexibles para el manejo de archivos. Aquí tienes una guía de algunos métodos de archivo de Python comúnmente utilizados:

### Cómo Leer un Archivo

El método `read()` lee el contenido completo de un archivo y lo devuelve como una cadena. Por otro lado, el método `readline()` lee una sola línea del archivo. Devuelve la línea como una cadena y mueve el puntero del archivo a la siguiente línea.

```python
file = open("example.txt", "w")
content = file.read()
line = file.readline()
file.close()
```

### Cómo escribir en un archivo

El método `write()` se utiliza para escribir datos en un archivo. Toma una cadena como argumento y la escribe en el archivo. Alternativamente, el método `writelines()` te permite escribir varias líneas en un archivo proporcionando una lista de cadenas.

```python
file = open("example.txt", "w")
file.write("Hello, World!")
lines = ["Line 1", "Line 2", "Line 3"]
file.writelines(lines)
file.close()
```

### Cómo Cerrar un Archivo

El método `close()` es esencial para el manejo adecuado de archivos. Cierra el archivo y libera cualquier recurso del sistema asociado con él. Es crucial cerrar el archivo después de realizar operaciones en él para evitar problemas potenciales.

```python
file = open("example.txt", "w")
# Perform operations on the file
file.close()
```

Estos son solo algunos ejemplos de métodos de archivo de Python que te permiten leer, escribir y manipular archivos. Es importante manejar las excepciones y cerrar los archivos correctamente para asegurar una gestión eficiente de archivos y la utilización de recursos. Al utilizar estos métodos de archivo de manera efectiva, puedes manejar las operaciones de archivos con facilidad en tus programas de Python.

## Operaciones de Tamaño de Archivo

Para obtener el tamaño de un archivo en Python, puedes usar varios métodos proporcionados por la biblioteca estándar de Python. Aquí hay dos ejemplos que demuestran cómo recuperar el tamaño de un archivo utilizando diferentes enfoques.

### Cómo obtener el Tamaño de un Archivo

El módulo `os.path` proporciona un método conveniente, `getsize()`, para recuperar el tamaño de un archivo en bytes.

```python3
import os

file_path = "example.txt"

try:
    file_size = os.path.getsize(file_path)
    print("File size:", file_size, "bytes")
except FileNotFoundError:
    print("File not found.")
```

En este ejemplo, utilizamos la función `getsize()` del módulo `os.path` para obtener el tamaño del archivo especificado por `file_path`. Si se encuentra el archivo, se imprime el tamaño en bytes. Si el archivo no se encuentra, se lanza un `FileNotFoundError`.

### Obtener el Tamaño de un Archivo con la Función `os.stat`

Otra forma de recuperar el tamaño de un archivo es utilizando la función `os.stat()`, que devuelve una tupla nombrada que contiene atributos del archivo, incluyendo el tamaño del archivo.

```python3
import os

file_path = "example.txt"

try:
    file_stats = os.stat(file_path)
    file_size = file_stats.st_size
    print("File size:", file_size, "bytes")
except FileNotFoundError:
    print("File not found.")
```

En este ejemplo, llamamos a `os.stat()` para obtener los atributos del archivo, incluyendo el tamaño, al cual se accede usando el atributo `st_size` de la tupla nombrada devuelta.

Al utilizar estos enfoques, puedes obtener fácilmente el tamaño de un archivo en Python. Recuerda manejar excepciones, tales como `FileNotFoundError`, para considerar casos en los que el archivo no existe.

## Operaciones con una Extensión de Archivo

Cuando trabajas con archivos en Python, a menudo puedes necesitar extraer la extensión del archivo para determinar el tipo de archivo con el que estás tratando. Python proporciona varias formas de obtener la extensión de un archivo a partir del nombre del archivo o ruta.

```python
import os

filename = "example.txt"
extension = os.path.splitext(filename)[1]

print("File Extension:", extension)
```

En este ejemplo, usamos el módulo `os.path`, específicamente la función `splitext()`, para separar la extensión del archivo del nombre de archivo dado. Retorna una tupla que contiene el nombre base y la extensión, y extraemos la `extension` usando la indexación.

## Cómo comprobar si un archivo existe con Python  

Para comprobar si un archivo existe, puedes usar el módulo integrado [os](https://docs.python.org/3/library/os.html) que proporciona funcionalidad para interactuar con el sistema operativo.

```python3
import os

# Define the path of the file to check
file_path = "/path/to/file"

# Check if the file exists
if os.path.exists(file_path):
    print("File exists!")
else:
    print("File does not exist.")
```

En este ejemplo, primero `import` el módulo `os` y luego definimos la variable `file_path` con la ruta al archivo que queremos verificar. La función `os.path.exists()` se utiliza para verificar si el archivo existe, y si es así, `print` un mensaje que indica que el archivo existe. Si el archivo no existe, `print` un mensaje que indica que no existe.

```python
import os

# Define the path of the file to check
file_path = "/path/to/file"

try:
    # Check if the file exists
    with open(file_path) as f:
        print("File exists!")
except FileNotFoundError:
    print("File does not exist.")
```

En este ejemplo, utilizamos un bloque de `try` y `except` para capturar la excepción `FileNotFoundError` que se genera si el archivo no existe. Intentamos abrir el archivo: `with open(file_path) as f:` y si el archivo existe, `print` un mensaje indicando que el archivo existe. Si el archivo no existe, capturamos la excepción `FileNotFoundError` e `print` un mensaje indicando que el archivo no existe.

Al usar uno de estos dos ejemplos de código, puedes verificar fácilmente si un archivo existe en Python y tomar la acción apropiada dependiendo del resultado.

## Cómo Crear un Archivo Simple

Para crear un archivo en Python, utiliza la función incorporada `open()`. Puedes especificar el nombre del archivo y el modo en el que quieres abrir el archivo (leer, escribir o añadir).

Para imprimir en un archivo en Python, puedes usar la función `print()` con el parámetro `file`:

```python
with open("example.txt", "w") as file:
  print("Hello, World!", file=file)
```

Este código crea un nuevo archivo llamado `example.txt` en modo de escritura, y escribe la cadena `Hello, World!` en el archivo.

Para escribir en un archivo en Python, puedes usar el método `.write()`:

```python
with open("example.txt", "w") as file:
  file.write("Hello, World!")
```

Este código crea un nuevo archivo llamado `example.txt` en modo de escritura, y escribe la cadena `Hello, World!` en el archivo usando el método `write()`.

Recuerda cerrar el archivo después de haber terminado de escribir. Usar la sentencia `with` maneja esto automáticamente.
