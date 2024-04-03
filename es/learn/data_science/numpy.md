> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/data-science/numpy

NumPy, abreviatura de Numerical Python, es un paquete fundamental para la informática científica de alto rendimiento y análisis de datos en Python. Proporciona un objeto de array multidimensional eficiente llamado ndarray, que permite computaciones aritméticas rápidas orientadas a arrays. Más allá de su objeto de array principal, NumPy también ofrece una amplia gama de funciones matemáticas para realizar operaciones en estos arrays, desde álgebra lineal básica y operaciones estadísticas hasta complejas transformaciones de Fourier. Al proporcionar herramientas para operar eficientemente en grandes conjuntos de datos, NumPy sirve como la columna vertebral de una plétora de aplicaciones científicas e ingenieriles, convirtiéndolo en una herramienta indispensable para investigadores, científicos de datos y cualquier persona involucrada en cálculos intensivos de datos. Con su combinación de potencia, flexibilidad y velocidad, NumPy se ha convertido en una piedra angular en el ecosistema de computación científica de Python, interfazando bien con otras bibliotecas y plataformas para proporcionar un entorno robusto para cómputos numéricos.

## ¿Qué es `numpy` en Python?

Numpy, representando Numerical Python, es una parte integral del ambiente de computación científica en Python. Es una biblioteca que ofrece soporte para arrays, junto con una rica colección de funciones matemáticas para realizar varias operaciones en estos arrays. La biblioteca [numpy](https://pypi.org/project/numpy/) en Python es ampliamente utilizada en análisis de datos, aprendizaje automático e ingeniería por su eficiencia y funcionalidad. Está diseñada para manejar grandes arrays y matrices multidimensionales, lo que la convierte en una herramienta indispensable para desarrolladores e investigadores trabajando en dominios intensivos en datos.

### Importancia de Numpy

La biblioteca `numpy` en Python ofrece varias características que la hacen esencial para los cálculos numéricos:

1. **Objeto de array multidimensional de alto rendimiento**: Los arrays de Numpy son más compactos, rápidos y más convenientes para operaciones matemáticas que las listas tradicionales de Python.
2. **Amplia colección de funciones matemáticas**: Estas funciones permiten operaciones eficientes en arrays sin la necesidad de bucles explícitos.
3. **Capacidades de broadcasting de arrays**: Numpy puede procesar arrays de diferentes formas durante operaciones aritméticas, haciendo el código más limpio y rápido.
4. **Herramientas para integrar código C/C++ y Fortran**: Es fácil incorporar código compilado directamente en aplicaciones Python para aún más velocidad.

> Nota: Las poderosas estructuras de datos y herramientas computacionales de Numpy son la base sobre la cual se construyen bibliotecas como Pandas, Matplotlib, SciPy y scikit-learn.

## Cómo Empezar a Usar `numpy`

### Instalando NumPy

Para comenzar a usar NumPy en tus proyectos de Python, el primer paso es **instalar numpy**. NumPy puede ser instalado usando varios gestores de paquetes, pero el método más común y directo es a través de `pip`, el instalador de paquetes de Python. Aquí hay una guía paso a paso sobre **cómo instalar `numpy` en python**:

1. Abre tu línea de comandos o terminal.
2. Escribe el siguiente comando y presiona Enter:

```pythonbash
pip install numpy
```

Este comando obtiene el paquete NumPy de PyPI (Índice de Paquetes de Python) y lo instala en tu entorno de Python.

> Nota: Asegúrate de que tu pip esté actualizado para evitar cualquier problema de instalación. Puedes actualizar pip usando el comando `pip install --upgrade pip`.

### Cómo Importar NumPy en Python

Una vez que la descarga e instalación de `numpy` esté completa, necesitarás `importar`lo en tu script de Python para comenzar a utilizar sus funcionalidades. Así es como puedes hacerlo:

```python
import numpy as np
```

Usar `np` como un alias para NumPy es una convención ampliamente aceptada y ayuda a mantener tu código limpio y legible.

### Trabajando con NumPy

Después de instalar e importar NumPy, puedes empezar a usarlo para realizar diversas computaciones numéricas. Aquí tienes un par de ejemplos para comenzar:

### `np.array()`

Una de las operaciones fundamentales en NumPy es crear arreglos. Utiliza la función `np.array()` para crear un arreglo de NumPy:

```python3
import numpy as np
my_array = np.array([1, 2, 3, 4, 5])
print(my_array)
```

Este código resultará en un arreglo unidimensional que contiene los números del 1 al 5.

### `np.arange()`

Otra función útil para generar arreglos es `np.arange()`, que crea arreglos con valores que incrementan regularmente.

```python3
import numpy as np
range_array = np.arange(0, 10, 2)
print(range_array)
```

Este fragmento de código crea un arreglo que comienza desde 0 hasta (pero sin incluir) `10,` con un paso de 2, resultando en `[0, 2, 4, 6, 8]`.

### Funciones Esenciales en NumPy

Hay numerosas funciones disponibles en NumPy; a continuación se presenta un breve resumen de algunas funciones frecuentemente usadas y su propósito.

| Función | Descripción |
| ---------|-------------|
| `np.array()` | Crea un arreglo. |
| `np.arange()` | Devuelve un arreglo con intervalos uniformemente espaciados. |
| `np.zeros()` | Devuelve un nuevo arreglo de una forma y tipo dados, lleno de ceros. |
| `np.ones()` | Devuelve un nuevo arreglo de una forma y tipo dados, lleno de unos. |
| `np.linspace()` | Devuelve un arreglo de números uniformemente espaciados sobre un intervalo especificado. |

Estas funciones básicas y ejemplos proporcionan una base sólida para comenzar tu viaje con NumPy. A medida que te vuelvas más cómodo con estas operaciones, encontrarás que NumPy es una herramienta increíblemente poderosa para el cálculo numérico en Python.

## Arreglos en NumPy

Los arreglos juegan un papel crucial en Python, especialmente para el cálculo numérico, que se hace más fácil y eficiente con la biblioteca Numpy. Un arreglo de `numpy` es una cuadrícula de valores, todos del mismo tipo, e indexada por una tupla de enteros no negativos. El número de dimensiones es el rango del arreglo; la forma de un arreglo es una tupla de enteros que da el tamaño del arreglo a lo largo de cada dimensión.

### Entendiendo los Arreglos NumPy

Los arreglos Numpy vienen con muchas propiedades incorporadas que facilitan la realización de cálculos complejos. Algunas propiedades importantes se resumen en la tabla a continuación:

| Propiedad | Descripción |
|----------|-------------|
| dtype | El tipo de datos de los elementos del arreglo |
| shape | Las dimensiones del arreglo (filas, columnas) |
| size | El número total de elementos en el arreglo |
| ndim | El número de dimensiones (o ejes) del arreglo |

Estas propiedades ayudan a entender la estructura y el tipo de datos que tu arreglo Numpy está manejando, llevando a una manipulación y análisis de datos más eficiente y efectivo.

### Creando un Arreglo NumPy

Para comenzar a trabajar con arreglos `numpy`, primero necesitas `importar` la biblioteca Numpy. Luego podrías convertir una lista de python en un arreglo `numpy` o instanciarlo directamente:

```python3
import numpy as np

# Python list
my_list = [1, 2, 3]

# Converting Python list to numpy array
np_array = np.array(my_list)
print(np_array)
```

### Imprimir un arreglo de `numpy`

Para `imprimir` un arreglo de `numpy`, simplemente puedes utilizar la función `print` de Python:

```python3
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3])

# Printing numpy array
print(np_array)
```

### Agregar Elementos con NumPy `append()`

Agregar elementos a un array es una operación común. Con `numpy`, puedes agregar fácilmente elementos utilizando el método `np.append()`:

```python3
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3])

# Appending an element to numpy array
new_np_array = np.append(np_array, [4])

print(new_np_array)
```

> Nota: El método `np.append()` retorna un nuevo arreglo. No cambia el arreglo original.

### Calculando la Suma con `np.sum()`

Numpy proporciona una manera conveniente de calcular la `sum` de los elementos en un arreglo usando el método `np.sum()`. Esto es muy útil para cálculos numéricos:

```python3
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3, 4])

# Calculating the sum of array elements
sum = np.sum(np_array)

print(sum)
```

> Nota: `np.sum()` puede ser muy poderoso, especialmente cuando se utiliza con arreglos multidimensionales, ya que puedes calcular sumas a lo largo de ejes específicos.

### Operaciones con Arreglos de NumPy Más Usadas

Para referencia rápida, aquí están algunas de las operaciones con arreglos de `numpy` más utilizadas, junto con sus descripciones:

| Operación | Descripción |
|----------------|-------------------------------------------------|
| `np.array()` | Convierte una lista de Python en un arreglo de `numpy`. |
| `np.append()` | Agrega elementos al final de un arreglo. |
| `np.sum()` | Calcula la `suma` de los elementos del arreglo. |
| `print()` | Muestra el arreglo `numpy`. |

### Resumiendo Puntos Clave

Utilizar operaciones con arreglos de `numpy` como convertir listas de Python a arreglos de `numpy`, agregar elementos y calcular sumas, puede mejorar enormemente la eficiencia y el rendimiento de la manipulación de datos y los cálculos numéricos en Python. Recuerda `importar` Numpy y aprovechar estas funciones integradas para una codificación más efectiva.

## Numpy Matrix

Numpy es un paquete fundamental para la computación científica en Python. Proporciona un poderoso objeto para operaciones matriciales, que es un aspecto esencial de la ciencia de datos y la computación matemática. La multiplicación de matrices es una de las operaciones críticas que Numpy hace muy eficiente y fácil de realizar.

### Qué es Numpy Matrix

Una matriz Numpy es un arreglo 2D especializado que conserva su naturaleza bidimensional a través de operaciones. Ofrece varios métodos para manipulaciones matriciales, incluyendo pero no limitado a multiplicación de matrices, inversa y transpuesta. Usar matriz Numpy para operaciones simplifica la sintaxis y mejora el rendimiento de cálculos complejos.

### Multiplicación de Matrices Python Numpy

La multiplicación de matrices, también conocida como el producto punto, es una operación fundamental en álgebra lineal. Python con la biblioteca Numpy simplifica significativamente este proceso. La función clave para esta operación es `numpy.dot()` para arreglos bidimensionales, pero para una matriz Numpy, puedes usar directamente el operador `*` o el método `.dot()`.

### Cómo Realizar la Multiplicación de Matrices

1. **Usando `numpy.dot()`**

Esta función es versátil y puede manejar tanto matrices como arreglos 2D, entregando el producto punto.

```python3
import numpy as np

# Define two matrices
A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])

# Perform matrix multiplication
C = np.dot(A, B)

print(C)
```

2. **Usando el operador `*`**

Cuando se trabaja con matrices de Numpy de forma explícita, puedes usar directamente el operador `*` para la multiplicación de matrices.

```python3
import numpy as np

# Define two matrices
A = np.matrix([[1, 2], [3, 4]])
B = np.matrix([[5, 6], [7, 8]])

# Perform matrix multiplication
C = A * B

print(C)
```

> Nota: Aunque puedes usar el operador `*` para matrices Numpy, se recomienda usar arrays de Numpy con el operador `np.dot()` o `@` por consistencia y para evitar la posible obsolescencia de la clase matrix en futuras versiones de Numpy.

### Comparando Métodos para la Multiplicación de Matrices

Cuando se trata de multiplicación de matrices en Python usando Numpy, hay varios métodos para lograr el mismo resultado. Elegir entre estos métodos a menudo se reduce a preferencias y casos de uso específicos. Aquí hay una comparación simplificada:

| Método                | Uso                                                       |
|----------------------|-----------------------------------------------------------|
| `numpy.dot()`        | Recomendado por consistencia, funciona para arrays y matrices |
| Operador `*`         | Sintaxis simple pero solo para objetos matriz de Numpy    |
| Método `.dot()`      | Otra opción para realizar productos punto                 |

Comprender y realizar la multiplicación de matrices usando Python y Numpy es sencillo, gracias a las funciones y métodos bien diseñados proporcionados por la biblioteca. Ya sea que prefieras la simplicidad del operador `*` con matrices Numpy o la versatilidad y funcionalidad recomendada de `np.dot()`, Numpy hace estas operaciones eficientes y fácilmente integrables en flujos de trabajo de procesamiento de datos más amplios o en la computación científica.
