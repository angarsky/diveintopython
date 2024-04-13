> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/set

Python set es una estructura de datos que te permite trabajar con colecciones de elementos únicos. Los conjuntos son útiles para tareas como eliminar duplicados de una lista, probar la membresía de un elemento y realizar operaciones de conjunto como unión e intersección. En Python, los conjuntos son mutables e iterables, lo que los hace versátiles y fáciles de trabajar. Vamos a explorar los conceptos básicos de los conjuntos de Python así como los principales métodos de conjunto de python para ayudarte a aprovechar al máximo esta estructura de datos en tus proyectos de programación.

## ¿Qué es un Conjunto?

Un conjunto es una colección de elementos únicos, muy similar a un conjunto matemático. Un conjunto es una colección desordenada y mutable de elementos distintos encerrados en llaves {}. Los conjuntos pueden contener cualquier elemento que sea `hashable` como enteros, flotantes, cadenas e incluso otros conjuntos.

Por ejemplo, puedes crear un conjunto de enteros de la siguiente manera:

```python
my_set = {1, 2, 3, 4, 5}
```

O, puedes crear un conjunto de cadenas de la siguiente manera:

```python
my_set = {'apple', 'banana', 'orange', 'grape'}
```

Puedes realizar varias operaciones en conjuntos, tales como agregar o eliminar elementos, encontrar la intersección o la unión de conjuntos, o verificar si un elemento es miembro de un conjunto.

Puedes usar las operaciones y métodos de conjuntos de Python para manipular datos. Aquí están algunos de los más comúnmente utilizados:

### Operaciones de Conjuntos

- `union()` o `|`: Devuelve un conjunto que contiene todos los elementos de ambos conjuntos (u otros objetos iterables), con los duplicados eliminados.
Ejemplo: `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.union(set2); print(set3)` devolverá `{1, 2, 3, 4, 5}`.
- `intersection()` o `&`: Devuelve un conjunto que contiene solo los elementos que son comunes a ambos conjuntos.
Ejemplo: `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.intersection(set2); print(set3)` devolverá `{3}`.
- `difference()` o `-`: Devuelve un conjunto que contiene los elementos que están en el primer conjunto pero no en el segundo.
Ejemplo: `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.difference(set2); print(set3)` devolverá `{1, 2}`.
- `symmetric_difference()` o `^`: Devuelve un conjunto que contiene los elementos que están en cualquiera de los conjuntos pero no en ambos.
Ejemplo: `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.symmetric_difference(set2); print(set3)` devolverá `{1, 2, 4, 5}`.
- `issubset()`: Devuelve True si todos los elementos de un conjunto están contenidos en el otro conjunto.
Ejemplo: `set1 = {1, 2, 3}; set2 = {1, 2}; print(set2.issubset(set1))` devolverá `True`.
- `issuperset()`: Devuelve True si un conjunto contiene todos los elementos de otro conjunto.
Ejemplo: `set1 = {1, 2, 3}; set2 = {1, 2}; print(set1.issuperset(set2))` devolverá `True`.

### Métodos de Conjuntos

- `add()`: Añade un elemento al conjunto. Si el elemento ya existe en el conjunto, el conjunto permanece sin cambios.
Ejemplo: `my_set = {1, 2, 3}; my_set.add(4); print(my_set)` devolverá `{1, 2, 3, 4}`.
- `remove()`: Elimina el elemento especificado del conjunto. Lanza un KeyError si el elemento no está en el conjunto.
Ejemplo: `my_set = {1, 2, 3}; my_set.remove(2); print(my_set)` devolverá `{1, 3}`.
- `discard()`: Elimina el elemento especificado del conjunto. No genera un error si el elemento no está en el conjunto.
Ejemplo: `my_set = {1, 2, 3}; my_set.discard(2); print(my_set)` devolverá `{1, 3}`.
- `pop()`: Elimina y devuelve un elemento arbitrario del conjunto. Lanza un KeyError si el conjunto está vacío.
Ejemplo: `my_set = {1, 2, 3}; x = my_set.pop(); print(my_set, x)` devolverá `{2, 3}, 1`.
- `clear()`: Elimina todos los elementos del conjunto.
Ejemplo: `my_set = {1, 2, 3}; my_set.clear(); print(my_set)` devolverá `set()`.

A continuación, veremos los más utilizados en detalle.

## Creando Conjuntos en Python

En Python, se puede crear un conjunto vacío utilizando la función `set()`. He aquí un ejemplo:

```python
empty_set = set()
```

Para inicializar un conjunto con valores, puedes usar un literal de conjunto. Aquí hay un ejemplo de conjunto:

```python
my_set = {1, 2, 3}
```

Como se mencionó anteriormente, puedes crear un conjunto en Python usando un literal de conjunto o la función `set()`.

## Cómo Añadir a un Conjunto en Python

En Python, puedes añadir a un conjunto un elemento utilizando el método `add()`. Aquí tienes un ejemplo de cómo añadir a un conjunto:

```python3
my_set = {1, 2, 3}  # create a set with initial values
my_set.add(4)  # add a new value to the set
print(my_set)  # output: {1, 2, 3, 4}
```

> Nota: los objetos `set` no tienen un método `append()` ya que son colecciones desordenadas de elementos únicos.

## Eliminando un Elemento de un Conjunto

En Python, el tipo de dato `set` representa una colección de elementos únicos. El método `remove` se utiliza para eliminar un elemento específico de un conjunto.

Aquí hay un ejemplo de cómo eliminar de un conjunto:

```python3
# create a set
my_set = {1, 2, 3, 4, 5}

# remove an element from the set
my_set.remove(3)

print(my_set) # Output: {1, 2, 4, 5}
```

Es importante tener en cuenta que si el elemento a eliminar no está en el conjunto, el método `remove` generará una excepción `KeyError`. Si quieres evitar esto, puedes utilizar el método `discard` en su lugar, que elimina un elemento del conjunto si está presente, y no hace nada si el elemento no está en el conjunto.

Aquí tienes un ejemplo de cómo usar el método discard en Python:

```python3
# create a set
my_set = {1, 2, 3, 4, 5}

# discard an element from the set
my_set.discard(3)

print(my_set) # Output: {1, 2, 4, 5}

# try to discard an element that is not in the set
my_set.discard(10)

print(my_set) # Output: {1, 2, 4, 5}
```

## Acceso a los Elementos del Conjunto

Los conjuntos son colecciones desordenadas de elementos únicos. Por lo tanto, no admiten la indexación por valores enteros como las listas o tuplas.

Si necesitas acceder a un elemento específico en un conjunto, puedes usar la palabra clave `in` para verificar si el conjunto de python contiene un elemento, o puedes usar el bucle `for` para iterar sobre los elementos del conjunto.

Aquí hay algunos ejemplos:

```python3
# Creating a set
my_set = {1, 2, 3, 4, 5}

# Checking if an element exists in the set
if 3 in my_set:
    print("3 is in the set")

# Iterating over the elements of the set
for element in my_set:
    print(element)
```

Salida:

```python
3 is in the set
1
2
3
4
5
```

## Longitud del conjunto en Python

En Python, puedes usar la función incorporada `len()` para obtener el número de elementos en un conjunto.

Por ejemplo, considera el siguiente conjunto:

```python3
my_set = {1, 2, 3, 4, 5}
print(len(my_set)) # Output: 5
```

## Ordenando un Conjunto en Python

Los conjuntos son colecciones desordenadas de elementos únicos, lo que significa que el orden de los elementos no se conserva en un conjunto, por lo tanto, el resultado final no puede ser un conjunto ordenado.

En Python, puedes ordenar un conjunto usando la función incorporada `sorted()` o el método `sort()`. Por lo tanto, usando este método convertimos un conjunto en una lista.

Usando la función `sorted()`:

```python3
my_set = {4, 1, 3, 2, 5}
sorted_set = sorted(my_set)
print(sorted_set)   # Output: [1, 2, 3, 4, 5]
```

Cuando se aplica `sorted()` a un conjunto, devuelve una nueva lista ordenada que contiene todos los elementos del conjunto original.

Utilizando el método `sort()`:

```python3
my_set = {4, 1, 3, 2, 5}
sorted_list = list(my_set)
sorted_list.sort()
sorted_set = set(sorted_list)
print(sorted_set)   # Output: {1, 2, 3, 4, 5}
```

> Nota: el método `sort()` solo está disponible para listas y no se puede usar directamente con un conjunto. Por lo tanto, necesitas convertir primero el conjunto a una lista, luego usar el método `sort()`, y después convertirlo de nuevo a un conjunto.

En ambos casos, el conjunto resultante estará ordenado en orden ascendente. Si quieres ordenar en orden descendente de un conjunto, puedes usar el argumento `reverse=True` en la función `sorted()` o el parámetro reverse del método `sort()`.

```python3
my_set = {4, 1, 3, 2, 5}
sorted_set_desc = sorted(my_set, reverse=True)
print(sorted_set_desc)   # Output: [5, 4, 3, 2, 1]

my_set = {4, 1, 3, 2, 5}
sorted_list_desc = list(my_set)
sorted_list_desc.sort(reverse=True)
sorted_set_desc = set(sorted_list_desc)
print(sorted_set_desc)   # Output: {5, 4, 3, 2, 1}
```

## El método `update` para Set en Python

El método `update` de un conjunto te permite añadir varios elementos a un conjunto de una sola vez.

Aquí tienes la sintaxis para usar el método update:

```python
set.update(iterable)
```

El argumento `iterable` puede ser cualquier objeto iterable, como una lista, tupla, conjunto o incluso una cadena. El método `update` agrega todos los elementos en el `iterable` al conjunto, mientras elimina cualquier duplicado.

Aquí hay un ejemplo que demuestra el método update:

```python
>>> s1 = {1, 2, 3}
>>> s2 = {3, 4, 5}
>>> s1.update(s2)
>>> print(s1)
{1, 2, 3, 4, 5}
```

## Intersección de Conjuntos en Python

En Python, la intersección de conjuntos se puede encontrar usando el método `intersection()`.

Veamos cómo obtener la intersección de dos conjuntos en Python:

```python3
set1 = {1, 2, 3, 4}
set2 = {3, 4, 5, 6}
set3 = {4, 5, 6, 7}

intersection_set = set1.intersection(set2, set3)

print(intersection_set)  # Output: {4}
```

## Diferencia de Conjuntos en Python

La diferencia de conjuntos en Python se puede encontrar usando el operador "-" o el método `difference()`. Aquí hay un ejemplo:

```python3
set1 = {1, 2, 3, 4, 5}
set2 = {3, 4, 5, 6, 7}

# Using the "-" operator
diff = set1 - set2
print(diff) # Output: {1, 2}

# Using the `difference()` method
diff = set1.difference(set2)
print(diff) # Output: {1, 2}
```

## Unión de Conjuntos en Python

La unión de conjuntos en Python se puede obtener utilizando el método `union()` o el operador de tubería (`|`).

Aquí hay un ejemplo de cómo usar el método `union()`:

```python3
set1 = {1, 2, 3}
set2 = {2, 3, 4}
set3 = {3, 4, 5}

union_set = set1.union(set2, set3)
print(union_set)  # Output: {1, 2, 3, 4, 5}
```

Alternativamente, podemos usar el operador de tubería (`|`) para obtener el mismo resultado:

```python3
set1 = {1, 2, 3}
set2 = {2, 3, 4}
set3 = {3, 4, 5}

union_set = set1 | set2 | set3
print(union_set)  # Output: {1, 2, 3, 4, 5}
```

## El método `pop()`

El método `pop()` en el tipo de datos set de Python elimina y devuelve un elemento arbitrario del conjunto. Si el conjunto está vacío, se genera un `KeyError`.

Aquí hay un ejemplo de uso:

```python3
my_set = {1, 2, 3, 4}
popped_element = my_set.pop()
print(popped_element)  # output: an arbitrary element from the set, e.g. 1
print(my_set)  # output: the remaining elements in the set, e.g. {2, 3, 4}
```
