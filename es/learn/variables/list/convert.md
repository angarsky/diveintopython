> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/list/convert

En Python, es común convertir datos de y hacia listas, ya que las listas son una estructura de datos versátil que puede contener múltiples elementos de diferentes tipos de datos. En algunos casos, necesitamos cambiar el tipo de datos almacenados en una lista. Revisemos los casos más comunes de conversión.

## Conversión de Lista a Cadena en Python

Para convertir una lista en una cadena en Python, puedes usar el método `join()`. Aquí tienes un ejemplo:

```python3
my_list = ["apple", "pineapple", "cherry"]
my_string = ", ".join(my_list)
print(my_string) # Output: apple, pineapple, cherry
```

## Conversión de Cadena a Lista

Para convertir una cadena de Python en una lista, puedes usar el método `split()`. El método `split()` divide una cadena en una lista de subcadenas basadas en un delimitador especificado.

Aquí tienes un ejemplo de cómo obtener una lista a partir de una cadena:

```python3
my_string = "Hello, World!"
my_list = my_string.split(", ")
print(my_list) Output: ['Hello', 'World!']
```

Para convertir una cadena de Python en una lista de caracteres, puedes usar la función `list()`, la cual toma una secuencia (por ejemplo, una cadena) como argumento y devuelve una lista que contiene los elementos de la secuencia:

Aquí tienes un ejemplo de conversión de cadena en lista de caracteres:

```python3
my_string = "Hello, world!"
my_list = list(my_string)
print(my_list) Output: ['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!']
```

## Conversión de Lista a Diccionario

Puedes convertir una lista en un diccionario en Python usando el constructor `dict()`. La lista debe contener pares clave-valor como tuplas, donde el primer elemento de cada tupla es la clave y el segundo elemento es el valor. Aquí tienes un ejemplo:

```python3
my_list = [("a", 1), ("b", 2), ("c", 3)]
my_dict = dict(my_list)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

## Conversión de Lista a Conjunto

Para convertir una lista a conjunto en Python, puedes usar la función incorporada `set()`. Aquí tienes un ejemplo:

```python3
my_list = [1, 2, 3, 4, 5]
my_set = set(my_list)
print(my_set) # Output: {1, 2, 3, 4, 5}
```

También puedes obtener una lista de valores únicos usando la función `set()`, convirtiendo una lista en un conjunto, y luego convirtiéndola de nuevo en una lista.

## Conversión de Conjunto a Lista

Para convertir un conjunto en una lista en Python, puedes usar la función `list()`. Aquí tienes un ejemplo:

```python3
my_set = {1, 2, 3, 4, 5}
my_list = list(my_set)
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Dividiendo una cadena en una lista

Puedes usar el método `split()` en Python para dividir una cadena en una lista.

Aquí tienes un ejemplo:

```python3
string = "Hello World"
list = string.split()
print(list) # Output: ['Hello', 'World']
```

De forma predeterminada, el método `split()` divide la cadena en caracteres de espacio en blanco (espacios, tabulaciones y saltos de línea). También puedes especificar un delimitador diferente pasándolo como argumento al método `split()`. Por ejemplo, si quieres dividir una cadena en comas, puedes hacer:

```python3
string = "apple,banana,orange"
list = string.split(",")
print(list) # Output: ['apple', 'banana', 'orange']
```

## Conversión de Lista a Tupla

En Python, puedes convertir fácilmente una lista a una tupla usando la función integrada `tuple()`. Aquí hay un ejemplo:

```python3
my_list = [1, 2, 3, 4, 5]
my_tuple = tuple(my_list)
print(my_tuple) # Output: (1, 2, 3, 4, 5)
```

## Conversión de Tupla a Lista

En Python, puedes convertir una tupla a una lista utilizando la función integrada `list()`. He aquí un ejemplo:

```python3
my_tuple = (1, 2, 3, 4, 5)
my_list = list(my_tuple)
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Conversión de Lista de Caracteres a Lista de Enteros en Python

Para convertir una lista de caracteres a una lista de enteros en Python, puedes usar una comprensión de lista junto con la función incorporada `ord()`, que devuelve el punto de código Unicode de un carácter.

Aquí tienes un ejemplo de código:

```python3
char_list = ['a', 'b', 'c', 'd']
int_list = [ord(char) for char in char_list]
print(int_list) # Output: [97, 98, 99, 100]
```
