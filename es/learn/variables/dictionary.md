> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/dictionary

Python proporciona varios tipos de colecciones integradas para almacenar y manipular datos. Algunos de los tipos de colecciones comúnmente utilizados en Python son:

* Listas
* Tuplas
* Conjuntos
* Diccionarios
* Arreglos
* Deques

También existen otros tipos de colecciones menos comúnmente usados en Python, como namedtuples, diccionarios predeterminados y montículos, que son versiones especializadas de los tipos básicos de colecciones listados arriba.

## Definición de Diccionario

Un diccionario en Python es una colección de pares clave-valor, donde cada clave está asociada con un valor. Es una estructura de datos no ordenada, y cada clave en el diccionario debe ser única.

Aquí hay un ejemplo de diccionario en Python:

```python
# Define a dictionary with key-value pairs
student = {
    "name": "Alice",
    "id": 12345,
    "courses": ["Math", "Physics", "Chemistry"],
    "grades": {"Math": 90, "Physics": 85, "Chemistry": 95}
}
```

## Cómo Crear un Diccionario en Python

Veamos cómo crear o inicializar un diccionario en Python. Puedes hacerlo utilizando llaves `{}` o mediante la función `dict()`. Aquí tienes algunos ejemplos:

- Utilizando llaves:

```python
# Create an empty dictionary
empty_dict = {}

# Create a dictionary with key-value pairs
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# Create a dictionary with mixed data types
mixed_dict = {'name': 'John', 'age': 30, 'scores': [85, 90, 95]}
```

- Usando la función `dict()`:

```python
# Create an empty dictionary
empty_dict = dict()

# Create a dictionary with key-value pairs
my_dict = dict(name='John', age=30, city='New York')

# Create a dictionary with mixed data types
mixed_dict = dict(name='John', age=30, scores=[85, 90, 95])
```

En ambos casos, el diccionario se crea con un conjunto de pares clave-valor. Las claves deben ser únicas y de tipos de datos inmutables (como cadenas, números o tuplas), mientras que los valores pueden ser de cualquier tipo de dato, incluyendo listas, diccionarios y otros objetos.

## Eliminando un Diccionario

En Python, puedes eliminar un diccionario utilizando la palabra clave `del` seguida del nombre de la variable del diccionario. Aquí hay un ejemplo:

```python
my_dict = {'key1': 'value1', 'key2': 'value2'}
del my_dict
```

En el ejemplo anterior, creamos un diccionario `my_dict` con dos pares clave-valor. La palabra clave `del` se utiliza para eliminar el diccionario especificando el nombre de la variable `my_dict`.

Después de ejecutar la instrucción `del`, el diccionario `my_dict` será completamente eliminado de la memoria, y cualquier intento de acceder a él resultará en un `NameError` porque la variable ya no existe.

## Acceso a Diccionarios en Python

Puedes obtener el valor del diccionario usando sus claves. Aquí hay un ejemplo:

```python3
# Creating a dictionary
my_dict = {'apple': 3, 'banana': 5, 'orange': 2}

# Accessing a value using its key
print(my_dict['apple'])  # Output: 3
print(my_dict['banana']) # Output: 5
```

También puedes obtener el valor asociado con una clave en un diccionario usando el método `get()`. Aquí hay un ejemplo:

```python3
# create a dictionary
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# get the value associated with the 'apple' key
apple_value = my_dict.get('apple')

# print the value
print(apple_value) # Output: 1
```

Si la clave no se encuentra en el diccionario, `get()` devuelve None por defecto.

## Diccionario de Diccionarios

Puedes anidar un diccionario dentro de otro simplemente usando un diccionario como valor en otro diccionario. Aquí hay un ejemplo:

```python3
# create a dictionary of dictionaries
my_dict = {
    'person1': {'name': 'John', 'age': 28},
    'person2': {'name': 'Jane', 'age': 32}
}

# accessing values in the dictionary of dictionaries
print(my_dict['person1']['name']) # output: 'John'
print(my_dict['person2']['age']) # output: 32
```

Para acceder a los valores en los diccionarios anidados, usamos dos conjuntos de corchetes. El primer conjunto de corchetes se utiliza para acceder al diccionario externo, y el segundo conjunto de corchetes se utiliza para acceder al diccionario interno.

También puedes añadir nuevos diccionarios al diccionario anidado, de esta manera:

```python
# adding a new person to the dictionary of dictionaries
my_dict['person3'] = {'name': 'Alex', 'age': 25}

# accessing the new person's information
print(my_dict['person3']['name']) # output: 'Alex'
```

De manera similar, puedes actualizar valores en los diccionarios anidados:

```python3
# create a dictionary of dictionaries
my_dict = {
    'person1': {'name': 'John', 'age': 28},
    'person2': {'name': 'Jane', 'age': 32}
}

# updating a person's age in the dictionary of dictionaries
my_dict['person1']['age'] = 30

# accessing the updated age
print(my_dict['person1']['age']) # output: 30
```

En general, combinar diccionarios en Python es una forma simple y poderosa de almacenar y acceder a estructuras de datos jerárquicas.

## Diccionario de Objetos en Python

Este tema es bastante similar a los diccionarios anidados: puedes crear un diccionario de objetos utilizando las instancias de objetos como valores y usando claves únicas para acceder a los objetos. Aquí hay un ejemplo:

```python3
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

# create objects
person1 = Person("Alice", 25)
person2 = Person("Bob", 30)
person3 = Person("Charlie", 35)

# create dictionary of objects
people = {
    "person1": person1,
    "person2": person2,
    "person3": person3
}

# access objects using keys
print(people["person1"].name)   # outputs "Alice"
print(people["person2"].age)    # outputs 30
```

## Inversión de Claves y Valores en un Diccionario

Revisemos un ejemplo de cómo invertir claves y valores en un diccionario en Python. Para este propósito puedes usar una comprensión de diccionario y cambiar las claves por los valores en cada par clave-valor:

```python3
my_dict = {'a': 1, 'b': 2, 'c': 3}

reversed_dict = {value: key for key, value in my_dict.items()}

print(reversed_dict) # Output: {1: 'a', 2: 'b', 3: 'c'}
```

En el código anterior, primero definimos un diccionario `my_dict` con algunos pares clave-valor. Luego creamos un nuevo diccionario `reversed_dict` mediante el uso de una comprensión de diccionario. En la comprensión, iteramos sobre el diccionario `my_dict` usando el método `items()`, que devuelve una lista de pares (clave, valor). Para cada par clave-valor, intercambiamos las posiciones de la clave y el valor, y agregamos el nuevo par (valor, clave) al `reversed_dict`.
