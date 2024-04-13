> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/dictionary/basic-operations

Los diccionarios son una estructura de datos poderosa y flexible que te permite almacenar y manipular pares clave-valor. Revisemos algunas operaciones y métodos comunes que puedes realizar en los diccionarios en Python.

## Agregando un Elemento a un Diccionario

Hay varias formas de agregar un elemento a un diccionario.

### Asignación de Valor

Para agregar un par clave-valor a un diccionario de Python, puedes utilizar la siguiente sintaxis:

```python
my_dict[key] = value
```

Aquí, `my_dict` es el diccionario al que quieres añadir un elemento, `key` es la clave del nuevo elemento, y `value` es el valor del nuevo elemento.

Por ejemplo, si tienes un diccionario vacío y quieres añadir un nuevo ítem con la clave `"name"` y el valor `"John"`, puedes hacer lo siguiente:

```python3
my_dict = {}
my_dict["name"] = "John"
print(my_dict) # Output: {'name': 'John'}.
```

Si la clave ya existe en el diccionario, su valor se actualizará al nuevo valor. Si la clave no existe, un nuevo par clave-valor se agregará al diccionario.

### El método `update()`

El método `update()` toma otro diccionario como argumento y añade sus pares de clave-valor al diccionario original. Si una clave ya existe en el diccionario original, su valor se actualizará al valor del nuevo diccionario.

Aquí hay un ejemplo:

```python
my_dict = {'a': 1, 'b': 2}
new_dict = {'c': 3, 'd': 4}

my_dict.update(new_dict)

print(my_dict)  # Output: {'a': 1, 'b': 2, 'c': 3, 'd': 4}
```

> Nota: No existe un método incorporado `append()` para diccionarios, ya que los diccionarios no tienen un orden inherente. Por lo tanto, no puedes añadir un elemento usando el método `append()`.

## Eliminando un Elemento de un Diccionario

Para eliminar un ítem de un diccionario en Python, puedes usar la palabra clave `del` junto con la clave del diccionario.

Aquí tienes un ejemplo de cómo eliminar una clave de un diccionario junto con su valor:

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# delete an element with key 'b'
del my_dict['b']

# print the updated dictionary
print(my_dict) # Output: {'a': 1, 'c': 3}
```

En el ejemplo anterior, la palabra clave `del` se utiliza para eliminar el par clave-valor con la clave `'b'` del diccionario `my_dict`. El diccionario resultante solo contiene los elementos con las claves `'a'` y `'c'`.

## Iteración o bucle en un diccionario en Python

Te mostraremos cómo iterar sobre un diccionario en Python utilizando un bucle `for`. Aquí hay algunas formas de iterar:

- Iterar sobre las claves:

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the keys and print them
for key in my_dict:
    print(key)
```

Salida:

```python
a
b
c
```

- Iterar sobre los valores:

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the values and print them
for value in my_dict.values():
    print(value)
```

Salida:

```python
1
2
3
```

- Iterar sobre los pares clave-valor:

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the key-value pairs and print them
for key, value in my_dict.items():
    print(key, value)
```

Salida:

```python
a 1
b 2
c 3
```

En el tercer ejemplo, utilizamos el método `items()` del diccionario para obtener una lista de los pares clave-valor. Luego utilizamos la desempaquetación de tuplas para extraer la clave y el valor de cada par y los imprimimos.

Usamos `for` en nuestros ejemplos, pero, por supuesto, también puedes usar `while` para iterar a través de un diccionario en Python.

## Fusionando Diccionarios en Python

Puedes fusionar dos diccionarios utilizando el método `update()` que mencionamos anteriormente. El método `update()` añade los pares clave-valor de un diccionario en otro diccionario. Si una clave ya existe en el diccionario de destino, el valor correspondiente se actualizará con el nuevo valor.

Aquí tienes un ejemplo:

```python
dict1 = {'a': 1, 'b': 2}
dict2 = {'b': 3, 'c': 4}

dict1.update(dict2)

print(dict1) # Output: {'a': 1, 'b': 3, 'c': 4}
```

En este ejemplo, tenemos dos diccionarios `dict1` y `dict2`. Utilizamos el método `update()` para fusionar `dict2` en `dict1`. El diccionario resultante es `{'a': 1, 'b': 3, 'c': 4}`.

> Nota: cuando se llama al método `update()`, modifica el diccionario sobre el que se llama. Si no quieres modificar el diccionario original, puedes crear un nuevo diccionario y usar el método `update()` para fusionar los dos diccionarios.

## Diccionario Ordenado o Clasificado

En Python 3.7 y versiones posteriores, se garantiza que los diccionarios mantendrán el orden de sus elementos tal como fueron añadidos. Esto significa que los elementos en un diccionario se iterarán en el mismo orden en que se insertaron.

Antes de Python 3.7, los diccionarios no preservaban el orden de sus elementos, e iterar sobre un diccionario devolvería sus elementos en un orden arbitrario.

Puedes obtener un diccionario ordenado por sus claves o valores. La ordenación del diccionario se puede realizar utilizando la función integrada `sorted()`, que devuelve una lista de las claves o valores del diccionario en orden clasificado. Por ejemplo:

```python
my_dict = {'c': 3, 'a': 1, 'b': 2}

# sort by keys
sorted_dict_by_keys = {k: my_dict[k] for k in sorted(my_dict)}

# sort by values
sorted_dict_by_values = {k: v for k, v in sorted(my_dict.items(), key=lambda item: item[1])}
```

Tenga en cuenta que en el ejemplo anterior, el diccionario original `my_dict` no se modifica, y en su lugar se crean dos nuevos diccionarios `sorted_dict_by_keys` y `sorted_dict_by_values`.

## Imprimir un Diccionario

Para imprimir un diccionario en Python, puede usar la función incorporada `print()`. Hay diferentes maneras de imprimir un diccionario dependiendo de cómo quiera formatear la salida.

Aquí hay un ejemplo de cómo imprimir un diccionario:

```python
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# Print the dictionary using the print() function
print(my_dict)
```

Esto mostrará lo siguiente:

```python
{'apple': 1, 'pineapple': 2, 'orange': 3}
```

Si quieres imprimir cada par clave-valor del diccionario en una línea separada, puedes utilizar un bucle `for` para iterar sobre el diccionario e imprimir cada elemento:

```python
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# Print each key-value pair on a separate line
for key, value in my_dict.items():
    print(key, ":", value)
```

Esto mostrará lo siguiente:

```python
apple : 1
pineapple : 2
orange : 3
```

## Conversión de diccionario a JSON en Python

Puede utilizar el módulo `json` incorporado en Python para convertir un diccionario a formato JSON.

He aquí un fragmento de código de ejemplo:

```python3
import json

# sample dictionary
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# convert dictionary to JSON
json_obj = json.dumps(my_dict)

# print the JSON object
print(json_obj)
```

En este ejemplo, la función `json.dumps()` se utiliza para convertir el diccionario `my_dict` en un objeto JSON `json_obj`. La función `print()` se utiliza para mostrar el objeto JSON en la consola.

Salida:

```python
{"name": "John", "age": 30, "city": "New York"}
```

También puede guardar el objeto JSON en un archivo utilizando la función `json.dump()`. He aquí un ejemplo:

```python
import json

# sample dictionary
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# save dictionary to a JSON file
with open('data.json', 'w') as f:
    json.dump(my_dict, f)
```

En este ejemplo, la función `json.dump()` se utiliza para guardar el diccionario `my_dict` en un archivo llamado `data.json`. El archivo se abre en modo de escritura utilizando la sentencia with.
