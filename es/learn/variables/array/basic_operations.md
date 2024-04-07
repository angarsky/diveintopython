> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/array/basic-operations

Los arrays nos permiten almacenar y manipular datos de manera eficiente, lo que nos permite realizar una amplia gama de tareas. En este artículo, exploraremos las operaciones básicas esenciales más comunes asociadas con arrays en Python.

## Ordenación y Mezclado

La ordenación y el mezclado son operaciones comunes en la manipulación y análisis de datos. En Python, hay funciones y métodos integrados disponibles para realizar estas tareas de manera eficiente.

### Cómo Obtener un Array Ordenado en Python

En Python, puedes ordenar un array (o lista) usando la función `sorted()`. La función `sorted()` toma un iterable como entrada y devuelve una nueva lista ordenada que contiene los elementos del iterable original.

Aquí tienes un ejemplo de cómo usar `sorted()` para ordenar un array:

```python3
my_array = [5, 2, 1, 4, 3]
sorted_array = sorted(my_array)
print(sorted_array)  # Output: [1, 2, 3, 4, 5]
```

En este ejemplo, `sorted(my_array)` devuelve una nueva lista que contiene los elementos de `my_array` en orden. La variable `sorted_array` almacena esta lista ordenada, y luego se imprime en la consola.

Es importante señalar que la función `sorted()` devuelve una nueva lista ordenada y no modifica el arreglo original en su lugar. Si quieres ordenar el arreglo original en sí, puedes usar el método `sort()` del arreglo en su lugar:

```python3
my_array = [5, 2, 1, 4, 3]
my_array.sort()
print(my_array)  # Output: [1, 2, 3, 4, 5]
```

En este caso, `my_array.sort()` ordena los elementos de `my_array` in situ, modificando el arreglo directamente. El arreglo ordenado se imprime entonces en la consola.

### Cómo Mezclar un Arreglo

Para mezclar un arreglo en Python, puedes usar la función `random.shuffle()` del módulo `random`. Esta función mezcla los elementos de una secuencia al azar, in situ. Aquí hay un ejemplo:

```python3
import random

my_array = [1, 2, 3, 4, 5]

random.shuffle(my_array)

print(my_array)
```

## Anexar, Insertar, Concatenar y Extender

Revisemos la forma de anexar o insertar elementos a un arreglo.

### Cómo Anexar un Elemento a un Arreglo

Anexar un elemento a un arreglo existente en Python puede hacerse utilizando el método `append()` proporcionado por el tipo de datos de la lista. Aquí hay un ejemplo de cómo añadir un elemento a un arreglo (o lista):

```python3
array = ['apple', 'banana', 'orange']
array.append('grape')
print(array) # Output: ['apple', 'banana', 'orange', 'grape']
```

El método `append()` permite insertar el elemento especificado al final del array (o lista). Modifica la lista original en el lugar y no devuelve una nueva lista.

Puedes agregar elementos de cualquier tipo de dato a una lista de Python, incluidos cadenas, números, o incluso otras listas.

Como ves, el método `append()` te permite expandir fácilmente el array (o lista) agregando nuevos elementos.

> Nota: El método `append()` solo puede agregar un elemento a la vez. Si quieres agregar múltiples elementos al array, puedes usar el método `extend()` o concatenar listas usando el operador `+`.

### Cómo Introducir un Elemento en un Array

En Python, el concepto de "introducir" elementos en un array se asocia típicamente con estructuras de datos mutables como las listas. Las estructuras de datos mutables te permiten modificar los elementos agregando, eliminando o modificando valores. Por lo tanto, es el mismo enfoque que el método `append()`, puedes "introducir" elementos en un array usando una lista:

```python3
my_list = []  # Initialize an empty list

# Pushing elements into the list
my_list.append(1)
my_list.append(2)
my_list.append(3)

print(my_list)  # Output: [1, 2, 3]
```

> Nota: Este enfoque se aplica específicamente a listas en Python. Otras estructuras de datos, como arrays de NumPy o tuplas inmutables, tienen diferentes métodos o limitaciones para modificar sus contenidos.

### Cómo Concatenar Arrays en Python

Para concatenar arrays en Python, puedes usar varios métodos, dependiendo del tipo de arrays con los que estés trabajando. Aquí hay algunos ejemplos de cómo combinar arrays:

1. Usando el operador `+` con listas estándar de Python:

```python3
array1 = [1, 2, 3]
array2 = [4, 5, 6]
concatenated = array1 + array2
print(concatenated) # Output: [1, 2, 3, 4, 5, 6]
```

2. Utilizando la función `concatenate()` de NumPy:

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.concatenate((array1, array2))
print(concatenated) # Output: [1 2 3 4 5 6]
```

3. Usando las funciones `hstack()` o `vstack()` de NumPy para concatenación horizontal o vertical, respectivamente:

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.hstack((array1, array2))
print(concatenated) # Output: [1 2 3 4 5 6]
```

En este ejemplo, usamos la función `hstack()` para apilar horizontalmente `array1` y `array2`, resultando en un nuevo arreglo `concatenated` que contiene los elementos concatenados en una sola fila.

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.vstack((array1, array2))
print(concatenated)
```

Salida:

```python
[[1 2 3]
 [4 5 6]]
```

En este ejemplo, utilizamos la función `vstack()` para apilar verticalmente `array1` y `array2`, resultando en un nuevo arreglo `concatenated` que contiene los elementos concatenados en dos filas.

### Cómo Extender un Arreglo en Python

Existen varios métodos que nos permiten extender un arreglo en Python. Aquí hay algunos enfoques sobre cómo fusionar o combinar arreglos en Python:

1. Lista:

Si tienes una lista, puedes usar el método `extend()` para añadir elementos de otro iterable al final de la lista. Aquí tienes un ejemplo:

```python
my_list = [1, 2, 3]
new_elements = [4, 5, 6]

my_list.extend(new_elements)

print(my_list)
```

2. NumPy:

Si estás trabajando con arreglos de NumPy, puedes utilizar la función `concatenate()` para combinar dos arreglos a lo largo de un eje especificado. Aquí tienes un ejemplo:

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

extended_array = np.concatenate((array1, array2))

print(extended_array)
```

3. Módulo de array:

Si estás utilizando el módulo `array` incorporado, puedes usar el método `extend()` para agregar elementos de otro iterable al final del array. Aquí tienes un ejemplo:

```python3
import array as arr

my_array = arr.array('i', [1, 2, 3])
new_elements = arr.array('i', [4, 5, 6])

my_array.extend(new_elements)

print(my_array)
```

## Función `getsizeof()`

En Python, no hay una función incorporada llamada `sizeof()` para obtener directamente el tamaño de un arreglo o lista. Sin embargo, puedes usar la función `getsizeof()` del módulo `sys` para obtener una estimación del tamaño de memoria ocupado por un objeto.

Aquí hay un ejemplo:

```python3
import sys

my_list = [10, 20, 30, 40, 50]
size = sys.getsizeof(my_list)

print(size)  # Output: 104 (the size in bytes)
```

En el ejemplo anterior, importamos el módulo `sys` y usamos la función `getsizeof()` para obtener el tamaño del objeto `my_list` en bytes.
> Nota: El valor devuelto por `getsizeof()` incluye la sobrecarga del propio objeto de la lista y puede no proporcionar una representación exacta de la memoria ocupada por los elementos del array/lista.

## Invertir y Transponer

Bastante a menudo nos encontramos con situaciones en Python donde necesitamos invertir o transponer un array.

### Cómo Invertir un Array en Python

Puedes invertir o voltear un array (lista) en Python usando varios métodos. Aquí hay algunos enfoques comunes para invertir un array en Python:

1. Usando el método `reverse()`:

```python3
my_list = [10, 20, 30, 40, 50]
my_list.reverse()
print(my_list)  # Output: [50, 40, 30, 20, 10]
```

2. Utilizando la técnica de rebanado:

```python
my_list = [10, 20, 30, 40, 50]
reversed_list = my_list[::-1]
print(reversed_list)  # Output: [50, 40, 30, 20, 10]
```

3. Usando la función `reversed()`:

```python
my_list = [10, 20, 30, 40, 50]
reversed_list = list(reversed(my_list))
print(reversed_list)  # Output: [50, 40, 30, 20, 10]
```

Los tres métodos logran el mismo resultado. El primer método utiliza el método `reverse()`, que invierte los elementos de la lista en su lugar, modificando la lista original. El segundo método utiliza el rebanado con un valor de paso de -1 (`[::-1]`), lo que crea una nueva lista con los elementos en orden inverso. El tercer método utiliza la función `reversed()` para crear un iterador inverso, el cual luego se convierte en una lista usando la función `list()`.

### Cómo Transponer un Array en Python

Para transponer una lista y un array de NumPy en Python, puedes seguir los pasos a continuación:

Transponiendo una Lista:

1. Crea una lista de listas donde cada lista interna representa una fila de la matriz original.

2. Usa la función `zip(*list)` para transponer la lista.

He aquí un ejemplo:

```python
# Create a sample list
list_of_lists = [[1, 2, 3],
                 [4, 5, 6]]

# Transpose the list
transposed_list = list(zip(*list_of_lists))

print(transposed_list) # Output: [(1, 4), (2, 5), (3, 6)]
```

Transponiendo un arreglo de NumPy:

Para transponer un arreglo de NumPy, puedes usar la función `transpose()` proporcionada por la biblioteca NumPy, como se mostró en el ejemplo anterior. Aquí tienes un ejemplo específico para un arreglo de NumPy:

```python3
import numpy as np

# Create a sample array
array = np.array([[1, 2, 3],
                  [4, 5, 6]])

# Transpose the array
transposed_array = np.transpose(array)

print(transposed_array)
```

Salida:

```python
[[1 4]
 [2 5]
 [3 6]]
```

## Cómo verificar si un array está vacío

Para verificar si un array está vacío en Python, puedes usar la función `len()` o hacer una comparación directa con un array vacío. Así es como puedes hacerlo para diferentes tipos de arrays:

1. Lista:

```python
my_list = []  # Empty list

# Using len() function
if len(my_list) == 0:
    print("Array is empty")

# Direct comparison
if my_list == []:
    print("Array is empty")
```

2. Array de NumPy:

```python3
import numpy as np

my_array = np.array([])  # Empty NumPy array

# Using len() function
if len(my_array) == 0:
    print("Array is empty")

# Direct comparison
if np.array_equal(my_array, np.array([])):
    print("Array is empty")
```

## Cómo Copiar un Arreglo

Puedes copiar un arreglo en Python usando varios enfoques. Aquí hay algunos métodos comunes para copiar arreglos:

1. Lista:

Para una lista estándar de Python, puedes usar la sintaxis de rebanado `[:]` o el método `copy()` para crear una copia:

Usando rebanado:

```python
my_list = [1, 2, 3, 4, 5]
my_list_copy = my_list[:]
```

Utilizando el método `copy()`:

```python
my_list = [1, 2, 3, 4, 5]
my_list_copy = my_list.copy()
```

2. Arreglo de NumPy:

Para un arreglo de NumPy, puedes usar la función `copy()` para crear una copia:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
my_array_copy = np.copy(my_array)
```

## Cómo filtrar un arreglo

Para filtrar un arreglo en Python, puedes usar varios métodos dependiendo del tipo de arreglo con el que estés trabajando. Aquí hay algunos enfoques comunes:

1. Comprensión de listas:

Para una lista estándar de Python, puedes usar comprensión de listas para crear una nueva lista que contenga solo los elementos deseados basados en una condición específica. Aquí hay un ejemplo:

```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Filter elements greater than 5
filtered_list = [x for x in my_list if x > 5]

print(filtered_list)  # Output: [6, 7, 8, 9, 10]
```

2. Función de filtro:

También puedes usar la función de `built-in filter()` junto con una función lambda o una función personalizada para filtrar elementos de una lista basándose en una condición dada. Aquí tienes un ejemplo:

```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Filter elements greater than 5 using lambda function
filtered_list = list(filter(lambda x: x > 5, my_list))

print(filtered_list)  # Output: [6, 7, 8, 9, 10]
```

3. Arreglo de NumPy:

Para un arreglo de NumPy, puedes utilizar la indexación booleana para filtrar elementos basados en una condición. Aquí hay un ejemplo:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

# Filter elements greater than 5
filtered_array = my_array[my_array > 5]

print(filtered_array)  # Output: [ 6  7  8  9 10]
```

## Cómo unir un Array en Python

Puedes unir un array en Python utilizando varios métodos diferentes. Aquí hay algunos enfoques comunes:

1. Unir elementos de la lista:

Para una lista estándar de Python, puedes usar el método `join()` de las cadenas para unir los elementos de la lista en una única cadena. Aquí hay un ejemplo:

```python3
my_list = ['Hello', 'World', 'Python']

# Join the list elements with a space separator
joined_string = ' '.join(my_list)

print(joined_string)  # Output: 'Hello World Python'
```

En este ejemplo, el método `join()` se utiliza con un espacio `' '` como separador para unir los elementos de la lista en una sola cadena.

2. Uniendo Elementos de un Arreglo NumPy:

Para un arreglo NumPy, puedes usar el método join() del objeto char de NumPy para unir los elementos del arreglo en una sola cadena. Aquí un ejemplo:

```python3
import numpy as np

my_array = np.array(['Hello', 'World', 'Python'])

# Join the array elements with a space separator
joined_string = np.char.join(' ', my_array)

print(joined_string)  # Output: ['H e l l o' 'W o r l d' 'P y t h o n']
```

En este ejemplo, el método `join()` de `np.char` se usa con un espacio `' '` como separador para unir los elementos del arreglo en una única cadena.

## La Suma de Cálculo de Arreglo

Puedes usar diferentes métodos para calcular la suma de los elementos de un arreglo en Python. Aquí hay algunos enfoques comunes:

1. Lista:

Para una lista estándar de Python, puedes usar la función integrada `sum()` para calcular la suma de todos los elementos:

```python
my_list = [1, 2, 3, 4, 5]
array_sum = sum(my_list)
print(array_sum)
```

2. Arreglo de NumPy:

Para un arreglo de NumPy, puedes utilizar la función `sum()` de la biblioteca NumPy para computar la suma de todos los elementos:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
array_sum = np.sum(my_array)
print(array_sum)
```

## Elemento Máximo de un Arreglo

Para encontrar el valor máximo en un arreglo en Python, puedes utilizar la función integrada `max()` o la función `max()` de la biblioteca numpy. Aquí te mostramos cómo puedes usar ambos enfoques:

Usando la función integrada `max()`:

```python
my_array = [5, 2, 9, 1, 7]

# Find the maximum value in the array using the max() function
max_value = max(my_array)

print(max_value)  # Output: 9
```

Utilizando la biblioteca numpy:

```python
import numpy as np

my_array = np.array([5, 2, 9, 1, 7])

# Find the maximum value in the array using the max() function from numpy
max_value = np.max(my_array)

print(max_value)  # Output: 9
```

## Aplanamiento, División, Partición y Conversión a Arreglo 2D

En Python, aplanar, dividir y convertir a un arreglo 2D son operaciones comunes cuando se trabaja con estructuras de datos multidimensionales. Revisemos los conceptos básicos.

### Cómo Aplanar un Arreglo

Puedes utilizar varios métodos para aplanar un arreglo en Python. Aquí hay algunos enfoques para diferentes tipos de arreglos:

1. Aplanamiento de una lista anidada:

Puedes usar la comprensión de listas y recursión para aplanar una lista anidada. Aquí tienes un ejemplo:

```python3
def flatten_list(nested_list):
    flattened = []
    for item in nested_list:
        if isinstance(item, list):
            flattened.extend(flatten_list(item))
        else:
            flattened.append(item)
    return flattened

nested_list = [[1, 2, 3], [4, [5, 6]], [7, 8, 9]]
flattened_list = flatten_list(nested_list)
print(flattened_list) # Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

2. Aplanar un arreglo de NumPy:

Puedes usar el método `flatten()` proporcionado por NumPy para aplanar un arreglo. Aquí hay un ejemplo:

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])
flattened_array = array.flatten()
print(flattened_array) # Output: [1 2 3 4 5 6]
```

3. Aplanando un arreglo multidimensional con NumPy:

Si tienes un arreglo multidimensional de NumPy y quieres aplanarlo, puedes usar el método ravel(). Aquí tienes un ejemplo:

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])
flattened_array = array.ravel()
print(flattened_array) # Output: [1 2 3 4 5 6]
```

### Cómo convertir un arreglo 1d a un arreglo 2d en Python

Para convertir un arreglo 1d a un arreglo 2d en Python, puedes utilizar el método `reshape()` proporcionado por la biblioteca NumPy. El método `reshape()` te permite cambiar la forma de un arreglo sin modificar sus datos. Aquí te mostramos un ejemplo de cómo cambiar la forma de un arreglo:

```python3
import numpy as np

# 1d array
arr_1d = np.array([1, 2, 3, 4, 5, 6])

# Convert to 2d array
arr_2d = arr_1d.reshape((2, 3))

print(arr_2d)
```

Salida:

```python
[[1 2 3]
 [4 5 6]]
```

El método `reshape()` toma la forma deseada del arreglo como su argumento. En este caso, pasamos `(2, 3)` para reconfigurar el arreglo en una matriz de 2x3. El número de elementos en el arreglo original 1d debe coincidir con el número de elementos en la forma especificada. Si el número de elementos no es compatible, se generará un `ValueError`.

> Nota: El método `reshape()` devuelve un nuevo arreglo con la forma deseada; no modifica el arreglo original.

### Cómo Dividir un Arreglo en Segmentos

Para dividir un arreglo en segmentos en Python, puedes usar varios métodos dependiendo del tipo de arreglo o estructura de datos con la que estés trabajando. Aquí hay algunos enfoques:

1. Comprensión de listas:

Si tienes una lista, puedes usar la comprensión de listas para dividirla en segmentos de un tamaño específico. Aquí hay un ejemplo:

```python3
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
chunk_size = 3

chunks = [my_list[i:i+chunk_size] for i in range(0, len(my_list), chunk_size)]

print(chunks)
```

2. NumPy:

Si estás trabajando con arreglos de NumPy, puedes usar la función `array_split()` para dividir el arreglo en trozos de igual tamaño. Aquí tienes un ejemplo:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
chunk_size = 3

chunks = np.array_split(my_array, len(my_array) // chunk_size)

print(chunks)
```

3. Módulo de arreglo:

Si estás usando el módulo integrado `array`, puedes usar un bucle para dividir el arreglo en fragmentos. Aquí tienes un ejemplo:

```python3
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
chunk_size = 3

chunks = [my_array[i:i+chunk_size] for i in range(0, len(my_array), chunk_size)]

print(chunks)
```

### Cortando un Array en Python

Para cortar un array (o lista) en Python, puedes utilizar la notación de corte `array[inicio:fin:paso]`, donde:

- **inicio** es el índice donde comienza el corte (incluido).
- **fin** es el índice donde termina el corte (excluido).
- **paso** es el intervalo entre índices (opcional, el valor por defecto es 1).

Aquí hay algunos ejemplos de cómo cortar un array en Python:

```python3
my_array = [10, 20, 30, 40, 50, 60, 70, 80]

# Slice from index 2 to 5 (exclusive)
slice_1 = my_array[2:5]
print(slice_1)  # Output: [30, 40, 50]

# Slice from index 1 to the end of the array
slice_2 = my_array[1:]
print(slice_2)  # Output: [20, 30, 40, 50, 60, 70, 80]

# Slice from the beginning to index 4 (exclusive)
slice_3 = my_array[:4]
print(slice_3)  # Output: [10, 20, 30, 40]

# Slice with a step of 2
slice_4 = my_array[1:7:2]
print(slice_4)  # Output: [20, 40, 60]

# Slice in reverse order
slice_5 = my_array[::-1]
print(slice_5)  # Output: [80, 70, 60, 50, 40, 30, 20, 10]
```

En los ejemplos anteriores, tenemos un arreglo llamado `my_array`. Especificando los valores de `start`, `stop` y `step` apropiados, podemos dividir el arreglo creando diferentes segmentos del mismo.

El primer ejemplo crea un segmento desde el índice 2 hasta el 5 (exclusivo), resultando en `[30, 40, 50]`. El segundo ejemplo crea un segmento desde el índice 1 hasta el final del arreglo, resultando en `[20, 30, 40, 50, 60, 70, 80]`. El tercer ejemplo crea un segmento desde el principio hasta el índice 4 (exclusivo), resultando en `[10, 20, 30, 40]`. El cuarto ejemplo crea un segmento con un paso de 2, resultando en `[20, 40, 60]`. El quinto ejemplo crea un segmento en orden inverso utilizando un valor de paso negativo (`[::-1]`), resultando en `[80, 70, 60, 50, 40, 30, 20, 10]`.

## Cómo Graficar un Arreglo en Python

Para graficar un arreglo en Python, puedes usar varias bibliotecas dependiendo del tipo de arreglo y la gráfica deseada. Aquí hay ejemplos usando bibliotecas populares:

1. Matplotlib (para arreglos 1D y 2D):

Matplotlib es una biblioteca de graficación ampliamente utilizada en Python. Puedes usarla para graficar arreglos 1D y 2D. Aquí hay un ejemplo:

```python3
import numpy as np
import matplotlib.pyplot as plt

# Plotting a 1D array
array_1d = np.array([1, 2, 3, 4, 5])
plt.plot(array_1d)
plt.show()

# Plotting a 2D array as an image
array_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
plt.imshow(array_2d, cmap='gray')
plt.show()
```

2. Seaborn (para visualización estadística):

Seaborn es una biblioteca de visualización de datos estadísticos basada en Matplotlib. Proporciona funciones de nivel superior para crear gráficos informativos. Aquí hay un ejemplo:

```python
import numpy as np
import seaborn as sns

# Plotting a 1D array
array_1d = np.array([1, 2, 3, 4, 5])
sns.lineplot(x=np.arange(len(array_1d)), y=array_1d)
plt.show()

# Plotting a 2D array as a heatmap
array_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
sns.heatmap(array_2d, annot=True, cmap='coolwarm')
plt.show()
```

## Dimensiones de Arreglo

Puedes determinar las dimensiones de un arreglo con diferentes bibliotecas y estructuras de datos. Aquí te dejo algunos enfoques:

1. NumPy:

Si estás trabajando con arreglos de NumPy, puedes usar el atributo `shape` para obtener las dimensiones del arreglo. Aquí tienes un ejemplo:

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])

# Get the dimensions of the array
dimensions = array.shape

print(dimensions)  # Output: (2, 3)
```

2. Lista de Listas:

Si tienes un arreglo representado como una lista de listas, puedes usar la función `len()` para determinar las dimensiones. Aquí hay un ejemplo de cómo determinar la forma de un arreglo:

```python
array = [[1, 2, 3], [4, 5, 6]]

# Get the dimensions of the array
rows = len(array)
columns = len(array[0])

print(rows, columns)  # Output: 2 3
```

3. Módulo de array:

Si estás utilizando el módulo de array incorporado, puedes usar la función len() para determinar el tamaño del array. Aquí tienes un ejemplo:

```python
import array as arr

array = arr.array('i', [1, 2, 3, 4, 5])

# Get the dimensions of the array
size = len(array)

print(size)  # Output: 5
```

## ¿Contiene un Array un Elemento Particular?

Para comprobar si un valor está presente en un array en Python, puedes usar diferentes enfoques dependiendo del tipo de array o estructura de datos con la que estés trabajando. Aquí hay algunos ejemplos:

1. Lista:

Si tienes una lista, puedes usar el operador `in` para comprobar si un valor está presente. Aquí tienes un ejemplo:

```python
my_list = [1, 2, 3, 4, 5]

# Check if the value 3 is present in the list
if 3 in my_list:
    print("Value 3 is present in the list")
```

2. Matriz de NumPy:

Si estás trabajando con una matriz de NumPy, puedes usar la función `np.isin()` para verificar si un valor está presente. Aquí tienes un ejemplo:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

# Check if the value 3 is present in the array
if np.isin(3, my_array):
    print("Value 3 is present in the array")
```

3. Módulo de arreglo:

Si estás utilizando el módulo integrado `array`, puedes usar un bucle o el método `index()` para verificar si un valor está presente. Aquí tienes un ejemplo:

```python
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5])

# Check if the value 3 is present in the array
if 3 in my_array:
    print("Value 3 is present in the array")
```

## Operaciones con Arrays

En Python, puedes realizar varias operaciones en arrays utilizando diferentes bibliotecas y estructuras de datos. Aquí hay algunas operaciones comúnmente usadas:

1. Operaciones Matemáticas con NumPy:

NumPy ofrece una amplia gama de operaciones matemáticas para arrays, tales como operaciones elemento a elemento, álgebra lineal, operaciones estadísticas, y más. Aquí hay algunos ejemplos:

```python
import numpy as np

# Element-wise operations
array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

addition = array1 + array2
subtraction = array1 - array2
multiplication = array1 * array2
division = array1 / array2

# Linear algebra operations
matrix1 = np.array([[1, 2], [3, 4]])
matrix2 = np.array([[5, 6], [7, 8]])

matrix_multiplication = np.dot(matrix1, matrix2)
matrix_inverse = np.linalg.inv(matrix1)
eigenvalues, eigenvectors = np.linalg.eig(matrix1)

# Statistical operations
data = np.array([1, 2, 3, 4, 5, 6])
mean = np.mean(data)
median = np.median(data)
std_deviation = np.std(data)
```

2. Operaciones de listas:

Para arrays representados como listas de Python, puedes realizar operaciones básicas como concatenación, segmentación, añadir elementos y más. Aquí tienes algunos ejemplos:

```python
# Concatenation
list1 = [1, 2, 3]
list2 = [4, 5, 6]

concatenated_list = list1 + list2

# Slicing
array = [1, 2, 3, 4, 5]
sliced_array = array[1:4]  # [2, 3, 4]

# Appending
array = [1, 2, 3]
array.append(4)
```

Estos son solo algunos ejemplos de las operaciones que puedes realizar en arrays en Python.

## Cómo Comparar Arrays

Repasemos cómo comparar arrays en Python. Aquí hay algunos enfoques:

1. NumPy:

Si estás trabajando con arrays de NumPy, puedes usar los operadores de comparación elemento a elemento proporcionados por NumPy. Aquí hay un ejemplo:

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([1, 4, 3])

# Element-wise comparison
result = array1 == array2

print(result)
```

También puedes utilizar otros operadores de comparación elemento a elemento como `<`, `>`, `<=`, `>=`, `!=`, etc., para realizar diferentes tipos de comparaciones.

2. Lista:

Si tienes listas, puedes compararlas utilizando el operador `==`. Aquí tienes un ejemplo:

```python3
list1 = [1, 2, 3]
list2 = [1, 4, 3]

# Compare lists
result = list1 == list2

print(result)
```

> Nota: El operador `==` compara los elementos y el orden de los elementos en las listas. Si quieres verificar si las listas tienen los mismos elementos (ignorando el orden), puedes usar la función `set()` para convertir las listas en conjuntos y luego compararlos.

3. Módulo de Array:

Si estás utilizando el módulo integrado `array`, puedes comparar arrays elemento por elemento usando un bucle. Aquí tienes un ejemplo:

```python3
import array as arr

array1 = arr.array('i', [1, 2, 3])
array2 = arr.array('i', [1, 4, 3])

# Element-wise comparison
result = [a == b for a, b in zip(array1, array2)]

print(result)
```

## Multiplicación de Arreglos

Para realizar la multiplicación elemento a elemento de arreglos en Python, puedes usar el operador `*` para arreglos de NumPy o la comprensión de listas para listas regulares de Python. Aquí te mostramos cómo puedes realizar la multiplicación de arreglos usando ambos enfoques:

1. Arreglos de NumPy:

Si estás trabajando con arreglos de NumPy, puedes usar el operador `*` para realizar una multiplicación elemento a elemento. Aquí tienes un ejemplo:

```python
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

result = array1 * array2

print(result) # Output will be: [ 4 10 18]
```

2. Listas de Python utilizando comprensión de listas:

Si estás trabajando con listas regulares de Python, puedes usar la comprensión de listas para realizar multiplicaciones elemento por elemento. Aquí tienes un ejemplo:

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]

result = [a * b for a, b in zip(list1, list2)]

print(result) # Output will be: [4, 10, 18]
```

## Eliminar un Elemento o Limpiar un Arreglo

Veamos las formas de eliminar elementos de un arreglo.

### Cómo Eliminar el Primer Elemento de un Arreglo en Python

Hay varias formas de eliminar el primer elemento de un arreglo en Python. Aquí hay algunos ejemplos:

1. Eliminando el primer elemento de una lista estándar de Python usando segmentación:

```python
my_list = [1, 2, 3, 4, 5]
new_list = my_list[1:]
print(new_list) # Output: [2, 3, 4, 5]
```

2. Eliminando el primer elemento de un arreglo de NumPy usando segmentación:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
new_array = my_array[1:]
print(new_array) # Output: [2 3 4 5]
```

3. Modificar el arreglo original "in-place" usando la función `delete()` de NumPy:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
new_array = np.delete(my_array, 0)
print(new_array) # Output: [2 3 4 5]
```

> Nota: En los primeros dos ejemplos, creamos una nueva lista o array sin modificar el original. En el tercer ejemplo, la función `delete()` retorna un nuevo array, pero modifica el array original in situ.

Elige el método que se ajuste a tus necesidades basado en si quieres crear un nuevo array sin el primer elemento o modificar el array original en sí.

### Método `pop()` para Array

En Python, puedes usar el método `pop()` para eliminar y retornar un elemento de un array o lista. El método `pop()` elimina el último elemento por defecto, pero también puedes especificar el índice del elemento que quieres eliminar. Aquí hay algunos ejemplos:

1. Lista:

Si estás trabajando con una lista, puedes usar el método `pop()` para eliminar y retornar el último elemento. Aquí hay un ejemplo:

```python3
my_list = [1, 2, 3, 4, 5]

popped_element = my_list.pop()

print(popped_element)  # Output: 5
print(my_list)         # Output: [1, 2, 3, 4]
```

También puedes pasar un índice al método `pop()` para eliminar y devolver un elemento en una posición específica. Por ejemplo:

```python
my_list = [1, 2, 3, 4, 5]

popped_element = my_list.pop(2)

print(popped_element)  # Output: 3
print(my_list)         # Output: [1, 2, 4, 5]
```

2. Módulo de Array:

Si estás utilizando el módulo incorporado `array`, puedes usar el método `pop()` para eliminar y devolver el último elemento. Aquí tienes un ejemplo:

```python
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5])

popped_element = my_array.pop()

print(popped_element)  # Output: 5
print(my_array)        # Output: array('i', [1, 2, 3, 4])
```

> Nota: El método `pop()` solo está disponible para listas y no para arrays de NumPy.

### Cómo Limpiar un Array

Para limpiar un array en Python, puedes asignar un array o lista vacío a la variable que representa el array. Aquí te mostramos cómo puedes limpiar un array utilizando ambos enfoques:

1. Limpiando un array de NumPy:

Si estás trabajando con un array de NumPy, puedes asignar un array de NumPy vacío a la variable. Aquí tienes un ejemplo:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

my_array = np.array([])

print(my_array) # Output: []
```

2. Borrar una lista regular de Python:

Si estás trabajando con una lista regular de Python, puedes asignar una lista vacía a la variable. Aquí tienes un ejemplo:

```python
my_list = [1, 2, 3, 4, 5]

my_list = []

print(my_list) # Output: []
```

## Cómo eliminar duplicados de un array ordenado en Python

Veamos cómo eliminar duplicados de un array ordenado en Python. Aquí hay un método común usando una lista:

```python3
sorted_array = [1, 1, 2, 2, 3, 4, 4, 5, 5, 5]

# Create a new list with unique elements
unique_array = []
for num in sorted_array:
    if num not in unique_array:
        unique_array.append(num)

print(unique_array)  # Output: [1, 2, 3, 4, 5]
```

Alternativamente, si estás trabajando con un arreglo de NumPy, puedes utilizar la función `np.unique()` para lograr el mismo resultado:

```python3
import numpy as np

sorted_array = np.array([1, 1, 2, 2, 3, 4, 4, 5, 5, 5])

# Get unique elements from the sorted array
unique_array = np.unique(sorted_array)

print(unique_array)  # Output: [1 2 3 4 5]
```
