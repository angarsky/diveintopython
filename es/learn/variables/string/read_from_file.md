> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/string/read-from-file

Para leer un archivo en una cadena en Python, puedes usar la función incorporada `open()` para abrir el archivo y leer su contenido usando el método `read()`.

## Ejemplo de Código para Leer un Archivo de Texto

```python
with open('filename.txt', 'r') as file:
    data = file.read()
```

En este ejemplo, reemplaza `'filename.txt'` con el nombre del archivo que quieres leer. El argumento `'r'` especifica que el archivo debe ser abierto en modo de lectura.

La sentencia `with` se usa para asegurar que el archivo se cierre automáticamente al salir del bloque dentro de la sentencia `with`. Esto ayuda a prevenir fugas de recursos.

El contenido del archivo se lee entonces en la variable `data` usando el método `read()`.

Luego puedes usar la variable `data` como una cadena en tu código.
