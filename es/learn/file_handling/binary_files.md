> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/file-handling/binary-files

Los archivos binarios son archivos de computadora que contienen datos en un formato que las máquinas pueden leer y manipular fácilmente. [Archivos binarios](https://en.wikipedia.org/wiki/Binary_file) son importantes porque permiten a los programadores trabajar con datos de una manera que es eficiente y segura. Este artículo discutirá los conceptos básicos de los archivos binarios en Python, cómo leerlos y escribirlos, y algunos casos de uso comunes donde son más beneficiosos.

## Cómo Leer un Archivo Binario

En Python, podemos usar la función `open()` para abrir un archivo binario y leer su contenido.

### Abrir un archivo binario en modo de lectura

```python
file = open("example.bin", "rb")

# Read the contents of the file and store it in a variable
binary_data = file.read()

# Close the file
file.close()

# Print the contents of the file
print(binary_data)
```

En el código anterior:

- Abrimos el archivo binario `example.bin` usando la función `open()`, con el modo `rb` (lectura binaria).
- Leemos el contenido del archivo usando el método `.read()` y lo almacenamos en la variable `binary_data`.
- Cerramos el archivo usando el método `.close()`.
- Imprimimos el contenido del archivo usando la función `print()`.

### Abrir un archivo binario en modo de lectura usando la declaración `with`

```python
with open("example.bin", "rb") as file:
    binary_data = file.read()

# Print the contents of the file
print(binary_data)
```

En el código anterior:

- Abrimos el archivo binario `example.bin` usando la función `open()` y el modo `rb` (leer binario) usando la declaración `with`.
- Leemos el contenido del archivo utilizando el método `.read()` y lo almacenamos en la variable `binary_data`.
- Imprimimos el contenido del archivo utilizando la función `print()`.

Usar la declaración `with` para abrir un archivo asegura que el archivo se cierre automáticamente después de leer su contenido.

## Cómo Escribir un Archivo Binario

Para escribir un archivo binario, necesitas usar la función incorporada `open()` con un parámetro de modo de `wb`. Esto abrirá el archivo en modo binario, permitiéndote escribir datos binarios en él. Aquí están los pasos para escribir un archivo binario:

1. Abrir el archivo en modo binario usando la función `open()` con un parámetro de modo de `wb`.
2. Escribir los datos binarios en el archivo utilizando el método `write()` del objeto archivo.
3. Cerrar el archivo utilizando el método `close()` del objeto archivo.

### Abrir un archivo en un modo binario

```python
file = open('binaryfile.bin', 'wb')
try:
    ##### Write binary data to file

    file.write(b'\x00\x01\x02\x03\x04\x05')
finally:
    ### Close the file

    file.close()
```

En conclusión, escribir archivos binarios es un proceso simple que involucra abrir el archivo en modo binario y escribir datos binarios en él usando el método `write()` del objeto de archivo.

## Una Lista de los Modos de Archivo para Archivos Binarios

Cuando se trabaja con archivos binarios, necesitas abrirlos en el modo de archivo correcto para asegurarte de que el archivo se esté leyendo y/o escribiendo correctamente. Hay seis modos de archivo para archivos binarios:

1. **rb**: Modo lectura (binario) - abre el archivo para leer en formato binario.
2. **rb+**: Modo lectura y escritura (binario) - abre el archivo para leer y escribir en formato binario.
3. **wb**: Modo escritura (binario) - abre el archivo para escribir en formato binario. Si el archivo ya existe, será truncado.
4. **wb+**: Modo escritura y lectura (binario) - abre el archivo para leer y escribir en formato binario. Si el archivo ya existe, será truncado.
5. **ab**: Modo adjuntar (binario) - abre el archivo para escribir en formato binario. Los nuevos datos serán escritos al final del archivo.
6. **ab+**: Modo adjuntar y leer (binario) - abre el archivo para leer y escribir en formato binario. Los nuevos datos serán escritos al final del archivo.

```python
with open("file.bin", "rb") as f:
    data = f.read()
    print(data)
```

Este código abre un archivo binario llamado `file.bin` en modo lectura usando la sentencia `with`. El modo `rb` asegura que el archivo se lea en formato binario. El método `read()` se utiliza para leer el archivo completo y luego el contenido se imprime en la consola.

```python
with open("file.bin", "wb") as f:
    data = b"\x48\x65\x6c\x6c\x6f" # Hello in binary
    f.write(data)
```

Este código crea un archivo binario llamado `file.bin` en modo escritura utilizando la instrucción `with`. El modo `wb` asegura que el archivo se escriba en formato binario. El prefijo `b` antes de la literal de cadena indica que la cadena está en formato binario. El método `write()` se utiliza para escribir datos binarios en el archivo. Este código escribe los datos binarios para la cadena `Hello` en el archivo.
