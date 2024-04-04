> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/file-handling/directories

Los directorios son una parte crítica de la gestión de archivos y juegan un papel crucial en el desarrollo de programas integrales en Python.

## Módulo OS

El módulo [os](https://docs.python.org/3/library/os.html) en Python proporciona una manera de utilizar funcionalidades dependientes del sistema operativo. Ayuda a realizar varias operaciones tales como crear directorios, eliminar `files`, cambiar el `directory` de trabajo actual, etc.

Para usar el módulo OS, primero, necesitamos `import`arlo usando la declaración `import os`. Aquí hay dos ejemplos de cómo usar el módulo OS:

### Ejemplo 1: Crear un Nuevo Directorio

Para crear un directorio usando el módulo OS, podemos usar la función `os.mkdir()`. Aquí hay un ejemplo:

```python
import os

# specify the path where you want to create the directory
path = "/home/user/newdir"

# create the directory
try:
    os.mkdir(path)
    print("Directory created successfully!")
except OSError as error:
    print(error)
```

### Ejemplo 2: Obtener el Directorio de Trabajo Actual

Para obtener el directorio de trabajo actual utilizando el módulo `os` en Python, podemos usar la función `os.getcwd()`. Aquí hay un ejemplo:

```python
import os

# get the current working directory
cwd = os.getcwd()

# print the current working directory
print("Current working directory:", cwd)
```

Al usar el módulo `os`, podemos realizar diversas operaciones relacionadas con el sistema operativo, incluidas operaciones de archivos, operaciones de `directory` y gestión de procesos.

## Cómo Obtener Lista de Archivos en un Directorio

Para obtener una lista de archivos en un directorio, puedes usar la función `os.listdir()`. Esta función devuelve una lista de todos los archivos y directorios en el directorio especificado.

```python
import os

# get list of files in the current directory
files = os.listdir()

# print the list of files
print(files)

### Output
# ['file1.txt', 'file2.jpg', 'directory1', 'directory2']
```

```python
import os

# get list of files in a directory
directory = "/path/to/directory"
files = os.listdir(directory)

# print the list of files
print(files)
### Output

# ['file1.pdf', 'file2.docx', 'file3.txt']
```

En resumen, usando `os.listdir()` puedes obtener fácilmente una lista de archivos en un directorio. Esto puede ser útil para varias tareas como la manipulación de archivos, análisis de datos, y más.

## Cómo Obtener el Directorio Actual

Para obtener el directorio actual, puedes usar el módulo `os`. El método `os.getcwd()` devuelve el directorio de trabajo actual como una cadena de texto.

```python
import os

### Get current directory

current_directory = os.getcwd()

### Print current directory

print(current_directory)
```

También puedes usar el módulo [pathlib](https://docs.python.org/3/library/pathlib.html) para obtener el directorio actual:

```python
from pathlib import Path

### Get current directory

current_directory = Path.cwd()

### Print current directory

print(current_directory)
```

Para cambiar el directorio actual, puedes usar el método `os.chdir()`:

```python
import os

### Change current directory

os.chdir('/path/to/new/directory')

### Get current directory

current_directory = os.getcwd()

### Print current directory

print(current_directory)
```

Recuerda `importar` el módulo requerido para cambiar de directorios antes de que intentes cambiar el directorio de trabajo actual.

## Importar desde Otro Directorio

Para `importar` módulos desde otro directorio, puedes usar el siguiente código:

```python
import sys
sys.path.insert(0, '../path/to/parent/directory')

from module_name import function_name
```

En el ejemplo anterior, primero insertamos la `path` al directorio padre en el `path` del sistema usando `sys.path.insert`. Luego, podemos `importar` el módulo o función requerida desde el `directorio` especificado usando la palabra clave `from`.

Otra manera de `importar` módulos desde un directorio padre es usar el archivo `__init__.py`. Este archivo es un archivo especial que se ejecuta cuando el directorio se importa como un módulo. En este archivo, puedes añadir el siguiente código:

```python
import os
import sys
sys.path.append(os.path.dirname(os.path.abspath(__file__)) + "/../")

from module_name import function_name
```

En este enfoque, primero `import` el módulo `os` para acceder a la ruta del archivo y a la información del directorio. Luego, agregamos el directorio principal al `path` del sistema usando `sys.path.append`. Finalmente, podemos `import` el módulo o función requerido del directorio principal usando la palabra clave `from`.

Al usar estos métodos, puedes fácilmente `import` módulos desde un directorio principal y organizar tu proyecto de manera más eficiente.

## Verificar si el Directorio Existe

Para comprobar si un directorio existe, puedes utilizar la función `os.path.exists()`. Si el directorio existe, retornará `True`, de lo contrario retornará `False`.

```python
import os

if os.path.exists('/my/directory'):
    print('Directory exists')
else:
    print('Directory does not exist')
```

Si quieres crear el directorio si no existe, puedes usar la función `os.makedirs()`. Esto creará el directorio y cualquier directorio padre necesario.

```python
import os

if not os.path.exists('/my/directory'):
    os.makedirs('/my/directory')

### Now you can use the directory for your operations

```

Asegúrate de reemplazar `/my/directory` con la ruta de acceso real del directorio que deseas verificar o crear.

## Creando Directorio en Python

Para crear un directorio en Python, puedes utilizar el módulo `os`. También puedes verificar si el directorio ya existe o no antes de crearlo usando el método `os.path.exists()`. El método `os.makedirs()` crea un directorio y todos sus directorios padres si no existen.

```python
import os

# Directory Path
path = "/example/directory"

# Check if directory already exists
if not os.path.exists(path):
    # Create directory
    os.makedirs(path)
    print("Directory created successfully")
else:
    print("Directory already exists")
```

El método `os.mkdir()` crea un directorio solo si este no existe ya. Lanza un `FileExistsError` si el directorio ya existe.

```python
import os

# Directory Path
path = "/example/directory"

try:
    # Create directory
    os.mkdir(path)
    print("Directory created successfully")
except FileExistsError:
    print("Directory already exists")
```

Utilizando cualquiera de estos métodos, puedes crear fácilmente un directorio en Python y comprobar si ya existe.

## Copiar Archivo a Otro Directorio

Copiar un archivo de un directorio a otro en Python es una tarea común. Hay varias maneras de lograr esto, pero el método más sencillo es usando el módulo [shutil](https://docs.python.org/3/library/shutil.html), que proporciona una función `copy` para copiar archivos.

### Usando `shutil.copy()` para copiar un archivo de un directorio a otro

La función `copy` en el módulo `shutil` toma dos argumentos - el archivo de origen y el directorio de destino.

```python
import shutil

src_file = '/home/user/filename.txt'
dst_dir = '/home/user/new_directory'

shutil.copy(src_file, dst_dir)
```

Esto copiará el archivo `filename.txt` del directorio `/home/user` al directorio `/home/user/new_directory`.

### Usando `os.rename()` para mover un archivo de un directorio a otro en Python

Otro método para copiar un archivo de un directorio a otro en Python es utilizando la función `os.rename()`.

```python
import os

src_file = '/home/user/filename.txt'
dst_dir = '/home/user/new_directory'

new_path = os.path.join(dst_dir, os.path.basename(src_file))
os.rename(src_file, new_path)
```

Esto moverá el archivo `filename.txt` del directorio `/home/user` al directorio `/home/user/new_directory`.

En conclusión, los dos métodos anteriores se pueden utilizar para copiar un archivo de un directorio a otro en Python con facilidad.

## Cómo Eliminar un Directorio

Para eliminar un directorio en Python, podemos usar el módulo `os` que nos proporciona los métodos necesarios para eliminar archivos y directorios. Una manera de eliminar todos los archivos en un directorio es iterando sobre todos los archivos y eliminándolos uno por uno. Otra manera es simplemente eliminar el directorio usando el método `os.rmdir()`.

### Eliminar todos los Archivos en un Directorio

Podemos eliminar todos los archivos dentro de un directorio iterando sobre cada archivo y eliminándolo usando el método `os.remove()`. Aquí hay un ejemplo:

```python
import os

dir_name = '/path/to/directory'

# iterate over each file and delete it
for file_name in os.listdir(dir_name):
    file_path = os.path.join(dir_name, file_name)
    if os.path.isfile(file_path):
        os.remove(file_path)
```

### Eliminando el Directorio

Podemos eliminar un directorio utilizando el método `os.rmdir()`. Este método solo funciona si el directorio está vacío; si hay archivos dentro del directorio, el método generará un error. Para eliminar un directorio no vacío, podemos utilizar el método `rmtree()` del módulo `shutil`. Aquí hay un ejemplo:

```python
import os
import shutil

dir_name = '/path/to/directory'

# remove the directory
try:
    os.rmdir(dir_name)
except OSError:
    shutil.rmtree(dir_name)
```

Con los ejemplos de código anteriores, ahora puedes eliminar fácilmente todos los archivos en un directorio y eliminar el propio directorio usando Python.

## Leer todos los archivos en un directorio

Si quieres leer todos los `files` en un directorio usando Python, puedes utilizar el módulo `os`. Aquí hay dos ejemplos de cómo lograr esta tarea:

```python
import os

### Method 1

files = os.listdir('/path/to/directory')
for filename in files:
    with open(filename, 'r') as f:
        ##### do something with the file
        pass

### Method 2

for dirpath, dirnames, filenames in os.walk('/path/to/directory'):
    for filename in filenames:
        with open(os.path.join(dirpath, filename), 'r') as f:
            ##### do something with the file
            pass

```

En el Método 1, la función `os.listdir()` devuelve una lista de todos los `filenames` en el directorio. Luego puedes usar un bucle `for` para iterar a través de la lista y abrir cada archivo.

En el Método 2, la función `os.walk()` itera a través del árbol de directorios, devolviendo una 3-tupla de `(dirpath, `dirnames,` filenames)` para cada directorio que encuentra. Luego puedes usar bucles `for` anidados para iterar a través de todos los `filenames` y abrir cada archivo.

En ambos casos, puede que necesites ajustar la ruta `/path/to/directory` para que coincida con la ubicación real del directorio que deseas leer.
  
## Cómo Importar desde el Directorio Padre  

Para `importar` un módulo desde un directorio padre en Python, necesitas agregar el directorio padre a la lista `sys.path` de tu sistema. Esto se puede hacer utilizando la función `sys.path.append()`.

1. Si tu directorio de trabajo es un directorio hijo del directorio padre, puedes agregar el directorio padre a la ruta de esta manera:

```python
import sys
sys.path.append('..')

# from parent_module import parent_function
```

2. Si tu directorio de trabajo no es un directorio hijo del directorio padre, puedes agregar la ruta completa del directorio padre a la ruta de esta manera:

```python
import sys
sys.path.append('/path/to/parent_directory')

# from parent_module import parent_function
```

Asegúrate de reemplazar `parent_module` y `parent_function` con el nombre de tu módulo y función padre.

Al agregar el directorio padre a la lista `sys.path` de tu sistema, puedes `importar` módulos desde el directorio padre en tu código Python.
