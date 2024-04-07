> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/functions/import-functions

En Python, las funciones juegan un papel vital en la programación ya que ayudan a crear código reutilizable. Sin embargo, a veces puede ser tedioso reescribir la misma función una y otra vez. Afortunadamente, Python facilita la reutilización de funciones al permitirte importarlas de diferentes archivos. En este artículo, exploraremos cómo importar funciones desde otro archivo de Python.

## Función de `import` de Python: Cómo Usarla para Mejorar la Reusabilidad del Código

La **función de importación** de Python es una herramienta poderosa para mejorar la reusabilidad del código. Nos permite importar funciones de otros archivos, lo que puede ahorrarnos mucho tiempo y esfuerzo al construir proyectos más grandes.

Para importar funciones de un archivo, primero necesitamos crear un módulo de Python. Esto es simplemente un archivo con una extensión `.py` que contiene las funciones que queremos importar. Luego podemos usar la palabra clave `import` para traer esas funciones a nuestro script principal: `from my_module import my_function`

Alternativamente, también podemos importar todo el módulo y acceder a sus funciones utilizando la notación de punto: `import my_module`

Al usar la función de `import` en Python, podemos reutilizar fácilmente el código en múltiples proyectos y mejorar nuestra eficiencia general como desarrolladores.

## Las Diferentes Formas de Importar Funciones de Archivos en Python

Importar funciones en Python es una práctica común para reutilizar código y mejorar la organización del código. Hay diferentes formas de importar funciones en Python, incluyendo importar una función de un archivo o importar una función como un módulo.

Para importar una función de un archivo en Python, utiliza la siguiente sintaxis: `from file_name import function_name`

Esto te permite usar la función en tu código sin tener que escribir todo el código nuevamente. Por ejemplo:

Alternativamente, puedes importar una función como un módulo, lo que puede ser útil si quieres importar múltiples funciones de Python del mismo módulo: `import file_name`

En general, importar funciones en Python es una forma poderosa de hacer que tu código sea más eficiente y legible.

## Llamar a una Función desde Otro Archivo

Una de las prácticas comunes en Python es reutilizar código importando funciones de otros archivos de Python. Esto te permite traer funciones específicas a tu script actual. Para hacer esto, usa la siguiente sintaxis:

```python
from file_name import function_name
```

Por ejemplo, para importar la función `add` de un archivo llamado `math_operations.py`, puedes usar:

```python
from math_operations import add
```

Una vez que hayas importado la función, puedes usarla fácilmente en tu código. Aquí tienes un ejemplo:

```python
result = add(2, 3)
print(result)  # Output: 5
```

Para importar múltiples funciones específicas, como `add` y `subtract`, de `math_operations.py`, puedes usar la siguiente sintaxis:

```python
from math_operations import add, subtract
```

Ahora tanto las funciones `add` como `subtract` del archivo `math_operations.py` se pueden llamar de la siguiente manera:

```python
print(add(2, 3))
print(subtract(5, 3))
```

Este proceso es una manera poderosa de mejorar la reusabilidad del código en Python. Al importar funciones de otros archivos, puedes ahorrar tiempo y esfuerzo y hacer que tu código sea más eficiente y organizado.

## Errores Comunes al Importar Funciones en Python y Cómo Solucionarlos

Al importar funciones en Python, los errores comunes incluyen **errores de importación**, **errores de sintaxis** y **errores de atributo de módulo**.

Si encuentras un error al intentar llamar a una función de otro archivo, hay algunas cosas que puedes intentar para solucionarlo. Primero, asegúrate de que el archivo del que estás tratando de importar esté ubicado en el mismo directorio que tu script de Python. Si no, es posible que necesites especificar la ruta al archivo.

A continuación, verifica la sintaxis de la instrucción de importación para asegurarte de que sea correcta. Si estás usando la palabra clave `from`, asegúrate de haber incluido el nombre de la función correcto. Si estás usando la palabra clave `import`, asegúrate de estar refiriéndote al nombre del módulo correcto.

Finalmente, verifica dos veces el nombre de la función para asegurarte de que esté escrito correctamente y que esté definido en el archivo del que estás intentando importar.

Por ejemplo, digamos que quieres importar la función `runsqlscript` del módulo `sqlideutils`. Así es como podrías hacerlo utilizando la palabra clave `from`: `from sqlideutils import runsqlscript`

Y así es como podrías hacerlo utilizando la palabra clave `import`: `import sqlideutils` con `runsqlscript = sqlideutils.runsqlscript`

## Organizando Tu Código Python: Cómo Crear un Módulo Personalizado con Funciones Importables

Organizar tu código Python es crucial para hacerlo legible, mantenible y reutilizable. Una manera de lograr esto es creando un módulo personalizado que contenga **funciones importables**.

Para crear un módulo personalizado con funciones importables, sigue estos pasos:

1. **Crea** un nuevo archivo Python con la extensión `.py` y dale un nombre descriptivo (p. ej., `myfunctions.py`).
2. **Define** una o más funciones en el archivo usando la palabra clave `def` y un nombre de función (p. ej., `mod_function`).
3. **Guarda** el archivo.
4. **Importa** la(s) función(es) del archivo en otro script Python usando la palabra clave `import` y el nombre del archivo sin la extensión `.py` (p. ej., `import myfunctions`).
5. **Llama** a la(s) función(es) importada(s) en el script usando el nombre de la función tal como se definió en el archivo (p. ej., `myfunctions.mod_function()`).

## Técnicas Avanzadas de Python: Cómo Construir e Importar Paquetes Externos con Múltiples Funciones

**Importar funciones** es una técnica avanzada de Python que nos permite construir e importar paquetes externos con **múltiples funciones**. Es una característica poderosa que mejora la reusabilidad del código y la organización.

Hay varias maneras de importar múltiples funciones en Python. Una manera es definir funciones en un archivo separado y luego importarlas en el script principal usando la sintaxis `import function from file`. Otra manera es usar la función `map` con múltiples argumentos para aplicar una función a varios iterables simultáneamente.

Aquí hay dos ejemplos de cómo usar funciones de importación en Python:

### Ejemplo 1: Importar Funciones de un Archivo Separado

```python3
# Suppose we have a file named `my_functions.py` that contains the following functions:
def add(a, b):
    return a + b

def subtract(a, b):
    return a - b
# To import these functions into a main script, we can use the following syntax:
# from my_functions import add, subtract

result1 = add(10, 5)
result2 = subtract(10, 5)

print(result1)  # Output: 15
print(result2)  # Output: 5
```

Aquí, importamos las funciones `add` y `subtract` del archivo `my_functions.py` y las usamos en el script principal.

### Ejemplo 2: Uso de la Función Map con Múltiples Argumentos

Supongamos que tenemos dos listas, `numbers1` y `numbers2`, y queremos sumarlas elemento por elemento. Podemos usar la **función map con múltiples argumentos** para lograrlo:

```python3
numbers1 = [1, 2, 3, 4, 5]
numbers2 = [5, 4, 3, 2, 1]

def add(a, b):
    return a + b

result = list(map(add, numbers1, numbers2))

print(result)  # Output: [6, 6, 6, 6, 6]
```

Aquí, definimos la función `add` y utilizamos la función map para aplicarla a las listas `numbers1` y `numbers2` elemento por elemento. El `result` es una nueva lista que contiene la suma elemento por elemento de las dos listas.
