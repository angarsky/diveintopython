> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/file-handling/zip

Los archivos zip son una forma popular de comprimir y agrupar múltiples archivos en un solo archivo. Se utilizan comúnmente para tareas tales como la compresión de archivos, la copia de seguridad de datos y la distribución de archivos. Comprimir archivos en Python es una manera útil de ahorrar espacio en tu disco duro y facilitar la transferencia de archivos por internet.

## Cómo comprimir un archivo en Python

El módulo [zipfile](https://docs.python.org/3/library/zipfile.html) en Python proporciona funcionalidades para crear, leer, escribir, agregar y extraer archivos ZIP.

### Comprimir un archivo único

Puedes utilizar el módulo `zipfile` para crear un archivo [zip](https://en.wikipedia.org/wiki/ZIP_(file_format)) que contenga un solo archivo. Aquí te mostramos cómo puedes hacerlo:

```python
import zipfile

# name of the new Zip file
zip_file_name = 'new_zip_file.zip'

# name of the source file
file_name = 'file_to_compress.txt'

# Create a ZipFile Object
zip_object = zipfile.ZipFile(zip_file_name, 'w')

# Add the source file to the zip file
zip_object.write(file_name, compress_type=zipfile.ZIP_DEFLATED)

# Close the Zip File
zip_object.close()
```

En el código anterior, primero importamos el módulo `zipfile`. Luego definimos el nombre del archivo zip y el nombre del archivo fuente. Creamos un objeto `ZipFile` y agregamos el archivo fuente usando el método `write()`. Luego cerramos el archivo zip usando el método `close()`.

### Comprimir Múltiples Archivos

También puedes crear un archivo zip que contenga múltiples archivos. Aquí hay un ejemplo:

```python
import zipfile

# name of the new Zip file
zip_file_name = 'new_zip_file.zip'

# names of the source files
file_names = ['file_to_compressed1.txt',
              'file_to_compressed2.txt',
              'file_to_compressed3.txt'
             ]

# Create a ZipFile Object
zip_object = zipfile.ZipFile(zip_file_name, 'w')

# Add multiple files to the zip file
for file_name in file_names:
    zip_object.write(file_name, compress_type=zipfile.ZIP_DEFLATED)

# Close the Zip File
zip_object.close()
```

En el ejemplo anterior, definimos los nombres de varios archivos fuente en una lista. Luego agregamos cada uno de estos archivos al archivo zip usando un bucle `for` y el método `write()`. Finalmente, cerramos el archivo zip usando el método `close()`.

Para comprimir aún más el archivo zip, puedes establecer el argumento `compress_type` en `zipfile.ZIP_DEFLATED`. Esto aplica el método de compresión [DEFLATE](https://en.wikipedia.org/wiki/DEFLATE) a los archivos que se están comprimiendo.

## Descomprimir un Archivo en Python

Es sencillo extraer archivos zip en Python usando el módulo `zipfile`. Aquí tienes dos maneras de hacerlo:

```python
import zipfile

with zipfile.ZipFile('myzipfile.zip', 'r') as zip_ref:
    zip_ref.extractall('destination_folder')
```

En este ejemplo, primero importamos el módulo `zipfile`. Luego creamos una instancia de la clase `ZipFile` para el archivo zip que queremos extraer. El argumento `r` indica que queremos leer del archivo zip, y `myzipfile.zip` es el nombre del archivo que queremos extraer.

El método `extractall()` extrae todos los archivos del archivo zip y los guarda en la `destination_folder` especificada. Si `destination_folder` no existe, será creada.

```python
import zipfile

with zipfile.ZipFile('myzipfile.zip', 'r') as zip_ref:
    for file in zip_ref.namelist():
        if file.endswith('.txt'):
            zip_ref.extract(file, 'destination_folder')
```

En este ejemplo, volvemos a importar el módulo `zipfile` y creamos una instancia de la clase `ZipFile`. Luego recorremos todos los archivos en el archivo zip utilizando `namelist()`. Si un archivo tiene una extensión `.txt`, lo extraemos a `destination_folder`.

Al utilizar estos dos ejemplos de código, puedes extraer fácilmente archivos de archivos zip en Python. Recuerda ajustar las rutas de los archivos y los nombres para que se ajusten a tus necesidades específicas.
