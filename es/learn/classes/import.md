> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/import

En Python, se puede importar una clase de otro archivo, lo que proporciona una gran cantidad de beneficios en términos de organización del código, mantenibilidad y colaboración. Esta característica permite a los programadores aprovechar módulos de código preexistentes, haciendo que sus programas sean más eficientes y concisos. Al importar clases, los desarrolladores pueden acceder y utilizar la funcionalidad proporcionada por estas clases sin necesidad de reescribir todo el código desde cero. En este artículo, exploraremos cómo importar una clase desde otro archivo en Python.
  
## Importaciones y Atributos

La sentencia import en Python nos permite utilizar módulos y paquetes externos que proporcionan funcionalidad adicional. Los atributos en Python se refieren a las propiedades o valores asociados a un objeto a los que podemos acceder y modificar.

### Importando Módulos en Python Usando el Comando `Import

Podemos utilizar la sentencia `import` en Python para importar módulos externos y paquetes que proporcionan funcionalidad adicional. Por ejemplo, para usar el módulo `math` en Python, podemos escribir:

```python3
import math
print(math.pi)
```

Una vez que importamos el módulo, podemos utilizar sus funciones y atributos.

### Uso de atributos en Python

En Python, podemos acceder a los atributos de un objeto utilizando la notación `.`. Por ejemplo, dado un objeto `obj`, podemos acceder a sus atributos usando `obj.attribute`. Por ejemplo, considera la siguiente definición de clase:

```python3
import math
class Circle:
    def __init__(self, radius):
        self.radius = radius
        self.area = math.pi * radius ** 2
c = Circle(2)
print(c.radius)  # Output: 2
print(c.area)  # Output: 12.566370614359172
```

Aquí definimos una clase `Circle` que representa un círculo con un `radio` dado. Usamos el módulo `math` para calcular el área del círculo usando la fórmula `pi * radio ** 2`.
 
> Observa que asignamos el valor del área a un atributo `area` del objeto. Aquí creamos una instancia `c` de la clase `Circle` con `radio` `2`. A continuación accedemos a sus atributos utilizando la notación `.`. Imprimimos los valores de los atributos `radio` y `área`, que son `2` y `12.57` (aprox.), respectivamente.

## Importando una Clase Usando la Sentencia `From

Vamos a explorar cómo importar una sola clase de otro archivo Python utilizando la palabra clave `from`.

Puedes conseguir esto especificando el nombre del archivo y la clase que quieres importar, como esto: `from mi_modulo import MiClase`.

En este ejemplo, importamos la clase `MyClass` de un fichero llamado `my_module`. Podemos entonces crear una instancia de `MyClass` y utilizar sus métodos como deseemos.

Por ejemplo: `from ruta.a.mi_modulo import MiClase`. Importamos la clase `MiClase` de un fichero situado en una ruta específica (`ruta/a/mi_módulo`). Esto es útil cuando el archivo que desea importar se encuentra en un subdirectorio de su proyecto.

En Python, importar una clase desde otro fichero es un proceso sencillo que nos permite aprovechar las ventajas que ofrecen los ficheros importados.

## Importando Múltiples Clases

En Python, es posible importar múltiples clases desde un módulo listando los nombres de las clases y separándolos con comas.

Por ejemplo, puedes importar `clase1`, `clase2`, y `clase3` del módulo llamado `nombre_del_módulo` de la siguiente manera: from nombre_del_módulo import class1, class2, class3`.

También puedes utilizar la sintaxis `from nombre_módulo import *` para importar todas las clases de nombre_módulo. Sin embargo, vale la pena señalar que este enfoque se desaconseja porque puede dar lugar a conflictos de nombres, especialmente cuando existen varias clases con el mismo nombre en diferentes módulos.

## Importar todas las clases de un módulo usando el comando `From

Para importar todas las clases de un módulo en Python, puedes usar la notación `*`. Esto te permite evitar tener que especificar cada nombre de clase individual al importar desde otro archivo en un directorio diferente.

Suponiendo que tenemos un módulo llamado `my_module.py` que contiene las clases `Class1` y `Class2`.

```python
# my_module.py

class Class1:
    pass
    
class Class2:
    pass
```

Para importar todas las clases de `my_module.py` en otro script, puedes usar la siguiente sintaxis:

```python
# script.py

from my_module import *
```

Esto importará tanto `Class1` como `Class2` en `script.py`.

Si sólo necesitas usar una clase de un módulo, generalmente es mejor ser más específico sobre lo que importas para evitar posibles conflictos de nombres o problemas de rendimiento.

Suponiendo que tenemos un módulo llamado `my_module.py` que contiene las clases `Class1` y `Class2`.

```python
# my_module.py

class Class1:
    pass

class Class2:
    pass
```

Para importar sólo `Clase1` en otro script, puede utilizar la siguiente sintaxis:

```python
# script.py

from my_module import Class1
```

Esto sólo importará `Class1` en `script.py`.  
  
## Importar clases con alias

En Python, podemos importar clases con alias para hacer nuestro código más legible y conciso. Los alias nos permiten usar un nombre más corto y conveniente para una clase, sin tener que escribir su nombre completo cada vez que la usamos.

```python3
# Importing the math module and aliasing it as m
import math as m

# Calculating the square root of 4 using the math.sqrt() method
print(m.sqrt(4))  # Output: 2.0
```

En este ejemplo, importamos el módulo `math` y lo llamamos `m`. Esto nos permite utilizar `m` como abreviatura de `math` en todo nuestro código. Usamos el método `m.sqrt()` para calcular la raíz cuadrada de 4 e imprimir el resultado.

```python3
# Importing the square and cube functions from the math module and aliasing them as sq and cu
from math import sqrt as sq, pow as cu

# Calculating the square root of 4 using the sq() function
print(sq(4))  # Output: 2.0

# Calculating the cube of 3 using the cu() function
print(cu(3, 3))  # Output: 27.0
```

En este ejemplo, importamos las funciones `sqrt` y `pow` del módulo `math` y las llamamos `sq` y `cu`, respectivamente. Esto nos permite utilizar `sq` y `cu` como abreviaturas de `sqrt` y `pow` en todo nuestro código. A continuación, utilizamos la función `sq()` para calcular la raíz cuadrada de 4 y la función `cu()` para calcular el cubo de 3 e imprimir los resultados.

En general, el uso de alias puede hacer que nuestro código Python sea más sucinto y fácil de leer, especialmente cuando se trata de clases o módulos complicados.  
  
## Importar clases desde un submódulo o paquete

Para importar una clase desde otro archivo/módulo en Python, podemos usar la palabra clave `import` seguida del nombre del módulo o archivo donde está definida la clase, y luego acceder a la clase usando la sintaxis de puntos.

Supongamos que tenemos un módulo `my_module.py` con una clase `MyClass` definida en su interior. Para importar esa clase a otro fichero, podemos hacer `from mi_módulo import MiClase`.

Supongamos que tenemos un paquete llamado `example` que contiene un submódulo `utils` con una clase `MyUtils` definida en su interior. Para importar esa clase en otro fichero, podemos hacer:

```python
# we are importing the class MyUtils from the utils submodule inside the example package
# from example.utils import MyUtils

# creating an instance of MyUtils
# obj = MyUtils()
```

Después de importar la clase, podemos crear una instancia de la misma llamando al constructor con paréntesis.

## Importar clases desde un directorio padre con `sys.path`.

El módulo `sys` de Python proporciona acceso a varios parámetros y funciones específicos del sistema. La lista `sys.path` es uno de los atributos de este módulo y contiene los directorios donde Python busca módulos. Para importar clases o módulos desde un directorio fuera de la ruta de búsqueda por defecto, puedes manipular esta lista.

Aquí tienes una guía paso a paso para importar todas las clases desde otra carpeta del directorio padre:

1. **Identificar el directorio de destino**: Primero, necesitas identificar el directorio desde el cual quieres importar las clases. Este directorio debe estar en el directorio padre de tu script actual.
2. **Actualizar `sys.path`**: Para añadir el directorio de destino a `sys.path`, puedes utilizar el método `sys.path.append()`. Por ejemplo:

```python
import sys
sys.path.append('/path/to/your/directory')
```

Sustituya `'/ruta/a/su/directorio'` por la ruta real a su directorio de destino.

3. **Importar módulos**: Una vez que el directorio de destino se añade a `sys.path`, puede importar módulos y clases de ese directorio como si estuvieran en el directorio actual. Por ejemplo:

```python
from target_directory import module_name
```

Sustituya `directorio_de_objetivo` por el nombre de la carpeta desde la que desea importar y `nombre_del_módulo` por el nombre del módulo o clase que desea utilizar.

Si desea importar todas las clases o módulos del directorio de destino, puede utilizar un comodín de importación:

```python
from target_directory import *
```

Tenga cuidado al utilizar importaciones comodín, ya que pueden dar lugar a conflictos de nombres y hacer que su código sea más difícil de entender.

4. **Importar y usar**: Con los módulos y clases importados, puedes usarlos en tu código según necesites. Recuerda que el directorio de destino debe contener un archivo `__init__.py` para ser reconocido como paquete.

El comando `import sys` de Python puede ser una poderosa herramienta cuando necesites importar clases o módulos de directorios situados fuera de la ruta de búsqueda por defecto. Manipulando la variable `sys.path`, puedes extender las capacidades de Python para incluir directorios adicionales, permitiéndote organizar tu código más efectivamente y mantener una estructura de proyecto limpia.
