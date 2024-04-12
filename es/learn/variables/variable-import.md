> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/variable-import

Este artículo se centra en el aspecto crucial de la importación en Python. Dominar la declaración `import` es esencial para incorporar sin problemas variables de un archivo a otro. En otras palabras, puedes importar fácilmente variables en Python con esta declaración. Exploremos la eficiencia y la modularidad ganadas al aprovechar import para acceder a variables en archivos Python.

## Cómo Importar una Variable de Otro Archivo en Python

Para importar una variable en Python, necesitas usar la declaración `import`. Supongamos que tienes un archivo Python llamado `file1.py` que contiene una variable llamada `my_variable`.

```python
# file2.py
from file1 import my_variable

# Now you can use the variable in this file
print(my_variable)
```

En el código anterior, estamos importando la `my_variable` de `file1.py` usando la sintaxis `from ... import`. Después de importar la variable, podemos usarla en `file2.py` igual que cualquier otra variable. Este método te permite exportar variables de un archivo y utilizarlas en otros archivos de Python, promoviendo la reutilización de código y la organización.

## Importando Variables de Otro Archivo mediante Importación de Módulo

Alternativamente, puedes cargar variables desde otro archivo importando todo el módulo - simplemente importa `file1.py` y accede a la variable usando el nombre del módulo de esta manera:

```python
# file2.py
import file1

# Accessing the variable using the module name
print(file1.my_variable)
```

En este caso, estamos importando el módulo completo `file1.py` usando la instrucción de importación. Luego accedemos a la variable `my_variable` usando el prefijo del nombre del módulo `file1`.

## Importando Múltiples Variables de Otro Archivo

Python permite importar múltiples variables de un archivo usando la sintaxis `from ... import`. Considera un escenario donde `file1.py` contiene múltiples variables: `var1`, `var2` y `var3`.

```python
# file2.py
from file1 import var1, var2, var3

# Using the imported variables in this file
print(var1)
print(var2)
print(var3)
```

Al especificar múltiples variables separadas por comas después de la instrucción `from ... import`, puedes importar directamente y usar esas variables dentro de `file2.py`. Este método mejora la legibilidad del código al importar explícitamente solo las variables necesarias.

## Importando con Alias para Mayor Claridad

A veces, los nombres de las variables pueden chocar o ser ambiguos cuando se importan de diferentes archivos. Para mitigar esto, Python te permite importar variables con alias.

```python
# file2.py
from file1 import my_variable as alias_variable

# Utilizing the imported variable with an alias
print(alias_variable)
```

Al asignar un alias durante la importación (como `alias_variable`), puede proporcionar un nombre más claro dentro del contexto del archivo actual, mejorando la comprensión del código.

## Importando Módulos de Diferentes Directorios

Python admite la importación de módulos desde diferentes directorios usando rutas absolutas o relativas. Supongamos que `file1.py` reside en una carpeta separada llamada `module_folder`.

```python
# file2.py
import sys
sys.path.append('path_to_module_folder')  # Include the path to module_folder

import file1

# Accessing the variable from the module in a different directory
print(file1.my_variable)
```

Al agregar la ruta al directorio que contiene el módulo a `sys.path`, Python puede localizar e importar el módulo, permitiendo el acceso a sus variables desde dentro de `file2.py`.

## Importaciones Dinámicas Usando `importlib`

La biblioteca `importlib` de Python permite importaciones dinámicas, permitiéndote importar módulos o variables basadas en condiciones de tiempo de ejecución.

```python
# file2.py
import importlib

module_name = 'file1'
module = importlib.import_module(module_name)

# Accessing the variable dynamically
print(module.my_variable)
```

Aquí, `importlib.import_module()` permite importar un módulo especificado por una cadena (`module_name`), otorgando flexibilidad al determinar las importaciones durante el tiempo de ejecución.
