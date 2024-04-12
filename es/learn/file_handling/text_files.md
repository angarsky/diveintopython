> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/file-handling/text-files

Los archivos de texto se utilizan para almacenar y leer datos, como un documento de texto simple o salida de una base de datos. Python ofrece diversas maneras de trabajar con [Archivos de Texto](https://en.wikipedia.org/wiki/Text_file), incluyendo leer, escribir y añadir a archivos. Entender cómo manejar archivos de texto es importante para cualquier programador que trabaje en Python, ya que puede ayudarles a gestionar y manipular datos de manera eficiente dentro de su programa.

## Cómo leer un archivo de texto en Python

Para leer un archivo de texto en Python, puedes usar la función integrada `open()` para abrir el archivo en modo de lectura. Aquí hay 2 ejemplos de código:

### Abrir Archivo de Texto

```python
with open('filename.txt', 'r') as file:
    content = file.read()
```

Aquí, la función `open()` abre el archivo `filename.txt` en modo de lectura y devuelve un objeto de archivo. La declaración `with` se utiliza para asegurar que el archivo se cierre correctamente después de su uso. La función `read()` lee el contenido del archivo y lo almacena en la variable `content`.

### Leyendo Archivo de Texto Línea por Línea

```python
with open('filename.txt', 'r') as file:
    for line in file:
        print(line)
```

Aquí, la función `open()` abre el archivo `filename.txt` en modo lectura y devuelve un objeto de archivo. La sentencia `with` se utiliza para asegurar que el archivo se cierre correctamente después de su uso. El bucle `for` lee el archivo línea por línea e imprime en la consola.

En ambos ejemplos, puedes reemplazar `filename.txt` con la ruta del archivo de texto real que deseas leer.

## Escribir en un Archivo de Texto en Python

Escribir en un archivo de texto en Python es una operación básica de archivo que involucra crear un nuevo archivo, escribir datos en él y, opcionalmente, cerrar el archivo. Aquí hay dos ejemplos de cómo escribir en un archivo de texto en Python:

```python
file = open('example.txt', 'w')
file.write('Hello, world!')
file.close()
```

En este ejemplo, creamos un nuevo archivo llamado example.txt usando el modo 'w', que significa escribir. Luego, usamos el método `write()` para agregar la cadena `Hello, world!` al archivo. Finalmente, cerramos el archivo usando el método `close()`.

```python
file = open('example.txt', 'w')
lines = ['Line 1\n', 'Line 2\n', 'Line 3\n']
file.writelines(lines)
file.close()
```

Aquí, creamos un nuevo archivo llamado example.txt y lo asignamos a la variable `file` con el modo `w`. Luego, definimos tres líneas de texto como una lista de cadenas y lo asignamos a la variable `lines`. Utilizamos el método `writelines()` para escribir todas las líneas al archivo de texto. Finalmente, cerramos el archivo utilizando el método `close()`.

### Cómo Obtener la Salida de Python en un Archivo de Texto

Si quieres guardar la salida de tu código Python en un archivo de texto, puedes usar la función `open()` en Python.

```python
output = "Hello, world!"
with open("output.txt", "w") as file:
    file.write(output)
```

En este ejemplo, tenemos una cadena `output` que contiene el texto que queremos guardar en el archivo. Abrimos un archivo llamado `output.txt` en modo de escritura usando la función `open()`. Luego, usamos el método `write()` del objeto de archivo para guardar los contenidos de `output` en el archivo.

En cualquiera de los casos, ahora puedes abrir el archivo y ver el texto que fue escrito. Aunque los ejemplos son simples, puedes modificarlos para adaptarlos a escenarios más complejos.

## Cómo Convertir Archivos Numpy a Archivos de Texto

Al trabajar con datos numéricos, `numpy` es una de las bibliotecas más populares para manipular arrays en Python. A veces, podrías necesitar convertir un archivo `numpy` a un archivo de texto para compartirlo y colaborar con otros. Aquí hay dos maneras de convertir un archivo `numpy` a un archivo de texto en Python:

La función `savetxt()` de la biblioteca `Numpy` se puede usar para guardar los datos de un array en un archivo de texto. He aquí cómo hacerlo:

```python
### Method 1
import numpy as np

data = np.load('file.npy') # load the Numpy file
np.savetxt('file.txt', data) # save the data from the Numpy file to a text file
```

También puedes usar el método `tofile()` del objeto array para guardar los datos en un archivo de texto.

```python
### Method 2
import numpy as np

data = np.load('file.npy') # load the Numpy file
data.tofile('file.txt', sep=',', format='%10.5f') # save the data to a text file
```

En el ejemplo anterior, el parámetro `sep` especifica el separador entre los valores de datos (una coma en este caso) y el parámetro `format` especifica el formato de los valores de salida.
