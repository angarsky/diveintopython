> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/tuple/convert

A veces es necesario convertir una tupla a un tipo de dato diferente, como una lista o una cadena, para realizar ciertas operaciones. En algunos casos, necesitamos convertir algunos tipos de datos a tupla. Python proporciona funciones integradas para la conversión de tuplas, que se pueden utilizar para manipular y procesar datos almacenados en tuplas. Exploremos las diversas maneras de conversión y los casos más comunes.

## Tupla vs Lista en Python

En Python, tanto las tuplas como las listas se utilizan para almacenar colecciones de ítems, pero hay algunas diferencias clave entre ellas. Aquí están algunas de las principales diferencias:

- **Mutabilidad**: Las listas son mutables, lo que significa que su contenido puede cambiarse, agregarse o eliminarse después de que se crean. Las tuplas, por otro lado, son inmutables, lo que significa que su contenido no se puede cambiar una vez que se crean.
- **Sintaxis**: Las listas se crean usando corchetes [] y las tuplas se crean usando paréntesis ().
- **Uso**: Las listas se utilizan típicamente para colecciones de ítems relacionados que necesitan ser cambiados o actualizados con el tiempo, mientras que las tuplas se utilizan a menudo para colecciones de ítems relacionados que se supone deben ser solo de lectura o son estáticos.
- **Rendimiento**: Las tuplas generalmente son más rápidas que las listas, ya que son más pequeñas y su inmutabilidad permite algunas optimizaciones en el uso de memoria y rendimiento.

## Conversión de Tupla a Lista en Python

Convertir una tupla en una lista es una operación común en Python, especialmente cuando queremos modificar o añadir nuevos elementos a la secuencia. Como ya mencionamos, las tuplas son inmutables, lo que significa que no podemos cambiar su contenido una vez que se crean. Sin embargo, las listas son mutables, y podemos modificar su contenido agregando, eliminando o cambiando elementos. Para convertir una tupla en una lista, podemos usar la función integrada `list()`.

Aquí hay un ejemplo:

```python3
# Define a tuple
my_tuple = (1, 2, 3, 4, 5)

# Convert the tuple to a list
my_list = list(my_tuple)

# Print the result
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Conversión de Lista a Tupla

Podemos convertir una lista de vuelta a una tupla utilizando la función incorporada `tuple()`. Esto puede ser útil cuando necesitamos convertir una lista mutable de vuelta a una tupla inmutable.

Aquí hay un ejemplo:

```python3
# Define a list
my_list = [1, 2, 3, 4, 5]

# Convert the list to a tuple
my_tuple = tuple(my_list)

# Print the result
print(my_tuple) # Output: (1, 2, 3, 4, 5)
```

## Conversión de Tupla a Cadena en Python

Puedes convertir una tupla de Python en una cadena utilizando el método `join()`. Aquí tienes un ejemplo:

```python3
my_tuple = ('apple', 'banana', 'cherry')
my_string = ', '.join(my_tuple)
print(my_string) # Output: apple, banana, cherry
```

> Nota: el método `join()` solo funciona con cadenas. Si la tupla contiene elementos que no son cadenas, primero necesitas convertirlos a cadenas usando la función `str()`.

## Conversión de Cadena a Tupla

Para convertir una cadena de vuelta a una tupla en Python, puedes usar el método `split()`. Aquí tienes un ejemplo:

```python3
my_string = 'apple, banana, cherry'
my_tuple = tuple(my_string.split(', '))
print(my_tuple) # Output: ('apple', 'banana', 'cherry')
```

> Nota: el método `split()` devuelve una lista de cadenas. Si la tupla original contenía elementos que no son cadenas, necesitas convertirlos de nuevo a sus tipos de datos originales después de crear la tupla.

## Conversión de Tupla a Diccionario en Python

Para convertir una tupla de Python a un diccionario, puedes usar la función constructora `dict()`. Aquí tienes un ejemplo:

```python3
my_tuple = ('a', 1), ('b', 2), ('c', 3)
my_dict = dict(my_tuple)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

## Conversión de Diccionario a Tupla

Para convertir un diccionario de Python de nuevo a una tupla, puedes usar el método `items()` del objeto diccionario para obtener una lista de pares (clave, valor), y luego convertir esa lista a una tupla utilizando la función constructora `tuple()`. Aquí tienes un ejemplo:

```python3
my_dict = {'a': 1, 'b': 2, 'c': 3}
my_tuple = tuple(my_dict.items())
print(my_tuple) # Output: (('a', 1), ('b', 2), ('c', 3))
```
