> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/list

Una lista en Python es una colección de valores o elementos que están ordenados, son modificables y permiten duplicados. Las listas son una de las estructuras de datos más comúnmente utilizadas en Python.

## Creando una Lista

Aquí hay un ejemplo de cómo crear una lista en Python:

```python
my_list = [1, 2, 3, 4, 5]
```

Como puedes ver, la creación de una lista es un proceso bastante simple. Para crear una lista vacía, simplemente puedes usar la siguiente sintaxis:

```python
my_list = []
```

Revisemos algunas operaciones básicas que se pueden realizar en las listas en Python.

## Índices de Lista & Acceso a Elementos

Los índices de una lista son las posiciones numéricas de los elementos dentro de la lista. El índice del primer elemento en una lista es siempre `0`, el índice del segundo elemento es `1`, y así sucesivamente. Puedes acceder al elemento en un índice específico utilizando corchetes y especificando el número de índice.

Aquí hay un ejemplo de uso de indexación:

```python
my_list = ['apple', 'banana', 'orange']
print(my_list[0])  # output: 'apple'
print(my_list[1])  # output: 'banana'
print(my_list[2])  # output: 'orange'
```

Si el índice de la lista está fuera de rango, Python devolverá un error.

## Cambiar o Reemplazar un Elemento de una Lista

```python3
my_list = [1, 2, 3, 4, 5]
my_list[0] = 0
print(my_list) # Output: [0, 2, 3, 4, 5]
```

## Agregando Elementos a la Lista en Python

Hay varios métodos que pueden ayudarte a agregar un elemento a una lista

### El método `insert()`

Aquí tienes un ejemplo que muestra cómo agregar un elemento a una lista usando el método `insert()`:

```python3
my_list = [1, 2, 3, 4]
my_list.insert(2, "hello")
print(my_list)  # [1, 2, 'hello', 3, 4]
```

### El método `append()`

Para insertar un elemento al final de una lista de Python, puedes utilizar el método `append()`. Aquí tienes un ejemplo:

```python3
my_list = [1, 2, 3, 4]
my_list.append(5)
print(my_list)  # [1, 2, 3, 4, 5]
```

El método `insert()` se puede utilizar para agregar un elemento en una lista en un índice especificado. La sintaxis para usar el método `insert()` es la siguiente:

```python
list.insert(index, element)
```

### El método `extend()`

El método `extend()` en Python se utiliza para agregar elementos de un iterable (como una lista, tupla, conjunto o cadena) al final de una lista existente.

He aquí un ejemplo:

```python3
# Create a list
my_list = [1, 2, 3]

# Append elements from another list to my_list using extend()
other_list = [4, 5, 6]
my_list.extend(other_list)

print(my_list)
# Output: [1, 2, 3, 4, 5, 6]
```

Tenga en cuenta que el método `extend()` modifica la lista original en su lugar y devuelve `None`. No crea una nueva lista.

## Eliminando un Elemento de una Lista

Para eliminar un elemento de una lista en Python, puede usar el método `remove()` del objeto de la lista. Aquí hay un ejemplo:

```python
my_list = [1, 2, 3, 4, 5]
my_list.remove(3)
print(my_list) # Output: [1, 2, 4, 5]
```

También está la declaración `del`, que se puede usar para eliminar un elemento de una lista. Aquí tienes un ejemplo de eliminación de un elemento:

```python3
my_list = [1, 2, 3, 4, 5]
del my_list[2]
print(my_list)
```

En este ejemplo, tenemos una lista `my_list` con cinco elementos. Queremos eliminar el elemento con índice 2, que tiene el valor 3. Usamos la declaración `del` y especificamos el índice del elemento que queremos eliminar. Después de eliminar el elemento, imprimimos la lista actualizada.

La salida de este código será:

```python
[1, 2, 4, 5]
```

Entonces, si quieres eliminar el primer elemento de una lista en Python, puedes usar la sentencia `del` que revisamos antes, o el método `pop()`. Aquí hay un ejemplo del método `pop()`:

```python3
my_list = [1, 2, 3, 4, 5]
my_list.pop(0)
print(my_list) # Output: [2, 3, 4, 5]
```

Veamos también en el ejemplo cómo eliminar `None` de la lista en Python usando una comprensión de lista:

```python3
original_list = [1, None, "hello", None, 5.7, None, "world"]
new_list = [item for item in original_list if item is not None]
print(new_list) # Output: [1, 'hello', 5.7, 'world']
```

## Cómo ordenar una lista en Python

Puedes ordenar una lista en Python utilizando el método `sort()`, el cual ordena los elementos de la lista en orden ascendente por defecto. Aquí tienes un ejemplo:

```python
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

my_list.sort()

print(my_list) # Output: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
```

Si quieres ordenar la lista en orden descendente, puedes pasar el argumento `reverse=True` al método `sort()`:

```python3
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

my_list.sort(reverse=True)

print(my_list) # Output: [9, 6, 5, 5, 5, 4, 3, 3, 2, 1, 1]
```

También puedes usar la función incorporada `sorted()` para ordenar una lista, la cual devuelve una nueva lista ordenada y deja la lista original sin cambios:

```python3
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

sorted_list = sorted(my_list)

print(sorted_list) # Output: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
```

## Copia de Listas

Para copiar una lista en Python, puedes utilizar el operador de corte o el método `copy()`. Aquí tienes un ejemplo utilizando ambos métodos:

```python3
# Using the slice operator
original_list = [1, 2, 3, 4, 5]
new_list = original_list[:]
print(new_list)  # Output: [1, 2, 3, 4, 5]

# Using the copy() method
original_list = [1, 2, 3, 4, 5]
new_list = original_list.copy()
print(new_list)  # Output: [1, 2, 3, 4, 5]
```

Ambos métodos crean un nuevo objeto de lista que contiene los mismos elementos que la lista original. Sin embargo, es importante notar que si la lista original contiene objetos mutables (por ejemplo, otras listas o diccionarios), la copia solo será superficial, lo que significa que la nueva lista contendrá referencias a los mismos objetos mutables que la lista original, en lugar de nuevas copias de esos objetos. En tales casos, puede que necesite usar una copia profunda para asegurar que todos los objetos anidados también sean copiados.

## Limpieza de Listas

En Python, `list.clear()` es un método integrado que elimina todos los elementos de una lista.

Aquí hay un ejemplo de cómo limpiar una lista:

```python3
my_list = [1, 2, 3, 4]
my_list.clear()
print(my_list)  # Output: []
```

## Cómo eliminar una lista

En Python, puedes eliminar una lista usando la palabra clave `del`. Aquí tienes un ejemplo:

```python
my_list = [1, 2, 3, 4, 5]
del my_list
```
