> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/dictionary/key-value-operations

Con bastante frecuencia nos enfrentamos a situaciones en las que necesitamos operar con llaves o valores de un diccionario. Afortunadamente, los diccionarios ofrecen una variedad de operaciones para trabajar con llaves y valores.

## Obtener Llaves de Diccionario

Para obtener las llaves de un diccionario en Python, puedes usar el método `keys()`. Aquí tienes un ejemplo de obtención de un conjunto de llaves:

```python3
# Creating a dictionary
my_dict = {"name": "Sam", "age": 35, "city": "Boston"}

# Getting the keys of the dictionary
keys = my_dict.keys()

# Printing the keys
print(keys) # Output: dict_keys(['name', 'age', 'city'])
```

Tenga en cuenta que `keys()` devuelve un objeto de vista, que es una vista dinámica de las claves del diccionario. Esto significa que si el diccionario se modifica, el objeto de vista reflejará esos cambios. Si necesita trabajar con las claves como una lista, puede convertir el objeto de vista en una lista.

## Convirtiendo Claves de Diccionario a Lista

Para convertir las claves de un diccionario a lista en Python, puede usar el método `keys()` y la función `list()`. Aquí hay un ejemplo:

```python3
my_dict = {'a': 1, 'b': 2, 'c': 3}
keys_list = list(my_dict.keys())
print(keys_list)  # Output: ['a', 'b', 'c']
```

En el código anterior, `my_dict.keys()` devuelve un objeto `dict_keys` que contiene las claves de `my_dict`. La función `list()` se utiliza para convertir este objeto en una lista, la cual se asigna a la variable `keys_list`. Finalmente, `keys_list` se imprime en la consola.

## Comprobando la Presencia de la Clave

En Python, el método `has_key()` no está disponible para los diccionarios. En su lugar, puedes usar el operador `in` para comprobar si un diccionario tiene una clave. Veamos cómo comprobar si una clave existe en un diccionario en Python:

```python3
# Creating a dictionary
my_dict = {"name": "Sam", "age": 35, "city": "Boston"}

# Checking if a key is present in the dictionary
if "name" in my_dict:
    print("The key 'name' is present in the dictionary")
else:
    print("The key 'name' is not present in the dictionary")

if "country" in my_dict:
    print("The key 'country' is present in the dictionary")
else:
    print("The key 'country' is not present in the dictionary")
```

Esto mostrará:

```python
The key 'name' is present in the dictionary
The key 'country' is not present in the dictionary
```

Tenga en cuenta que el operador `in` verifica si la clave está presente en el diccionario, no si el valor de la clave es `None`. Si necesita verificar la presencia del valor de una clave en un diccionario, puede usar el método `get()`.

## Eliminando una Clave del Diccionario

En Python, puede eliminar una clave de un diccionario usando la sentencia del o el método pop().

Aquí hay un ejemplo usando la sentencia del para eliminar una clave de un diccionario:

```python
my_dict = {"a": 1, "b": 2, "c": 3}

del my_dict["b"]

print(my_dict)  # Output: {"a": 1, "c": 3}
```

En el ejemplo anterior, la clave `"b"` es eliminada del diccionario `my_dict` usando la instrucción `del`.

Aquí hay un ejemplo usando el método `pop()` para eliminar una clave de un diccionario:

```python
my_dict = {"a": 1, "b": 2, "c": 3}

my_dict.pop("b")

print(my_dict)  # Output: {"a": 1, "c": 3}
```

En el ejemplo anterior, la clave `"b"` es eliminada del diccionario `my_dict` usando el método `pop()`. El método `pop()` también retorna el valor asociado con la clave eliminada, lo cual puede ser útil si necesitas realizar algún procesamiento adicional basado en ese valor.

## Conversión de los Valores del Diccionario a Lista

Puedes usar el método `values()` de un diccionario de Python para obtener una lista de sus valores.

Aquí hay un ejemplo:

```python3
my_dict = {'a': 1, 'b': 2, 'c': 3}
values_list = list(my_dict.values())
print(values_list) # Output: [1, 2, 3]
```

En el código anterior, creamos un diccionario `my_dict` con tres pares clave-valor. Luego llamamos al método `values()` en el diccionario para obtener un objeto de vista de sus valores, y lo convertimos en una lista usando el constructor `list()`. Finalmente, imprimimos la lista resultante de valores.

> Tenga en cuenta que el orden de los valores en la lista no está garantizado que sea el mismo que el orden de las claves en el diccionario, dado que los diccionarios son desordenados en Python.
