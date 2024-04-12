> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/dictionary/convert

En Python, los diccionarios son una de las estructuras de datos más utilizadas, ya que permiten realizar búsquedas rápidas y eficientes de valores basados en claves. Aunque los diccionarios se suelen crear manualmente en código Python, a menudo es útil convertir datos de otros formatos, como listas o JSON, en diccionarios. Repasemos los ejemplos de conversión

## Creación de diccionarios usando variables

Veamos el ejemplo de cómo convertir variables en un diccionario en Python:

```python3
# define variables
name = "John"
age = 25
gender = "male"

# create dictionary
my_dict = {
    "name": name,
    "age": age,
    "gender": gender
}

# print dictionary
print(my_dict)
```

En este ejemplo, definimos tres variables: `name`, `age` y `gender`. Luego, creamos un diccionario llamado `my_dict` y asignamos cada variable a una clave en el diccionario. Finalmente, imprimimos el diccionario para verificar que contiene los pares clave-valor correctos. La salida debería ser:

```python
{'name': 'John', 'age': 25, 'gender': 'male'}
```

## Conversión de Lista a Diccionario

Para convertir una lista en un diccionario en Python, puedes usar la función constructora `dict()`. La lista debe contener tuplas donde cada tupla contenga un par clave-valor. Aquí hay un ejemplo:

```python3
my_list = [('a', 1), ('b', 2), ('c', 3)]
my_dict = dict(my_list)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

En este ejemplo, la lista "mi_lista" contiene tres tuplas, cada una de las cuales representa un par clave-valor. La función constructora `dict()` se utiliza para convertir la lista en un diccionario, y el diccionario resultante se almacena en la variable `my_dict`. La salida muestra el contenido del diccionario resultante.

## Conversión de cadena a diccionario

Puede convertir una cadena en un diccionario en Python usando el módulo `json`, que está incorporado en Python.

He aquí un ejemplo:

```python3
import json

# Sample string
string = '{"name": "John", "age": 30, "city": "New York"}'

# Convert string to dictionary
dictionary = json.loads(string)

# Print the dictionary
print(dictionary)
```

Salida:

```python
{'name': 'John', 'age': 30, 'city': 'New York'}
```

En este ejemplo, se utiliza el método `json.loads()` para convertir la cadena en un diccionario. El diccionario resultante se almacena en la variable `dictionary` y luego se imprime.

## Conversión de tupla a diccionario

En Python, puedes convertir una tupla en un diccionario usando la función `dict()` que mencionamos antes. Aquí tienes un ejemplo:

```python3
# Define a tuple
my_tuple = ('apple', 'pineapple', 'cherry')

# Convert the tuple to a dictionary
my_dict = dict(zip(range(len(my_tuple)), my_tuple))

# Print the dictionary
print(my_dict)
```

Salida:

```python
{0: 'apple', 1: 'pineapple', 2: 'cherry'}
```

En este ejemplo, la función `zip()` se utiliza para combinar los elementos de la tupla con los índices de cada elemento. Luego, la función `dict()` se utiliza para convertir el objeto comprimido en un diccionario.
