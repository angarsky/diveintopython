> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/array/convert

En Python, convertir entre listas y arrays es una tarea común cuando se trata de datos numéricos. El proceso de convertir de una lista a un array nos permite aprovechar cálculos y operaciones numéricas eficientes proporcionados por bibliotecas como NumPy. Por otro lado, en algunos casos necesitamos hacer un array 2d a partir de un array 1d. Así que revisemos los temas más comunes sobre conversiones relacionadas con arrays.

## Conversión Entre Listas y Arrays de NumPy

Las conversiones entre listas y arrays de NumPy proporcionan flexibilidad en la manipulación de datos y facilitan la integración fluida con otras bibliotecas de computación numérica en Python.

### Cómo Convertir un Array de NumPy a Lista de Python

Para convertir un array de NumPy a una lista de Python, puedes usar el método `tolist()` proporcionado por la biblioteca NumPy. Este método convierte un array de NumPy en una lista anidada de Python. Aquí tienes un ejemplo:

```python3
import numpy as np

numpy_array = np.array([1, 2, 3, 4, 5])
python_list = numpy_array.tolist()
print(python_list) # Output: [1, 2, 3, 4, 5]
```

De manera similar, si tienes un arreglo multidimensional de NumPy, el método `tolist()` lo convertirá en una estructura de lista anidada de Python:

```python3
import numpy as np

numpy_array = np.array([[1, 2, 3], [4, 5, 6]])
python_list = numpy_array.tolist()
print(python_list) # Output: [[1, 2, 3], [4, 5, 6]]
```

En este ejemplo, numpy_array es un arreglo 2D de NumPy con dos filas y tres columnas. El método `tolist()` lo convierte en una lista anidada de Python con la misma estructura.

### Conversión de Lista a Arreglo en Python

Para convertir una lista de Python en un arreglo, puedes usar la función `array()` proporcionada por la biblioteca NumPy. La función `array()` crea un nuevo arreglo de NumPy a partir de los elementos de la lista dada. Aquí hay un ejemplo de cómo convertir una lista en arreglo:

```python3
import numpy as np

my_list = [1, 2, 3, 4, 5]
my_array = np.array(my_list)
print(my_array) # Output: [1 2 3 4 5]
```

Los arrays de NumPy son homogéneos, lo que significa que solo pueden contener elementos del mismo tipo de datos. Si los elementos de la lista son de diferentes tipos, NumPy automáticamente convertirá los elementos a un tipo de datos común.

Por ejemplo:

```python3
import numpy as np

my_list = [1, 2.5, 'three', True]
my_array = np.array(my_list)
print(my_array) # Output: ['1' '2.5' 'three' 'True']
```

En este caso, los elementos de la lista tienen diferentes tipos de datos (`int`, `float`, `str`, y `bool`). NumPy convierte todos los elementos al tipo de dato común, que en este caso es `str`. El arreglo resultante contiene cadenas que representan los elementos de la lista.

## Conversión Entre Cadena y Arreglo

La conversión entre cadenas y arreglos en Python puede ser útil al trabajar con datos textuales o al manipular caracteres individuales.

### Conversión de Cadena de Python a Arreglo

Para convertir una cadena de Python en un arreglo de caracteres individuales, puedes iterar sobre la cadena y crear una lista de caracteres. Aquí hay un ejemplo:

```python3
string = "Hello, world!"
array = [char for char in string]
print(array) # Output: ['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!']
```

En el ejemplo anterior, iteramos sobre cada carácter en la cadena utilizando una comprensión de lista. Cada carácter se añade a la lista, resultando en un arreglo donde cada elemento representa un carácter individual de la cadena.

Si quieres dividir la cadena en un arreglo de palabras en lugar de caracteres, puedes utilizar el método `split()`. Por defecto, el método `split()` divide la cadena basándose en caracteres de espacio en blanco (espacios, tabulaciones, saltos de línea). Aquí hay un ejemplo:

```python
string = "Hello, world! How are you?"
array = string.split()
print(array) # Output: ['Hello,', 'world!', 'How', 'are', 'you?']
```

En este ejemplo, el método `split()` divide la cadena en una lista de subcadenas basadas en caracteres de espacio blanco, lo que resulta en un arreglo donde cada elemento representa una palabra de la cadena.

### Conversión de Arreglo a Cadena

Para convertir un arreglo (o lista) en una cadena en Python, puedes usar el método `join()`. El método `join()` concatena los elementos de un iterable en una sola cadena, utilizando un delimitador especificado. Aquí hay un ejemplo:

```python3
array = ['Hello', 'world', 'How', 'are', 'you?']
string = ' '.join(array)
print(string) # Output: Hello world How are you?
```

Al cambiar el delimitador pasado al método `join()`, puedes modificar la forma en que los elementos se separan en la cadena resultante. Por ejemplo, utilizando una coma (',') como el delimitador:

```python3
array = ['apple', 'banana', 'orange']
string = ', '.join(array)
print(string) # Output: apple, banana, orange
```
