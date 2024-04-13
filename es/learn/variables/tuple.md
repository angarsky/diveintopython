> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/tuple

¿Qué es una tupla en Python? Una tupla en Python es una secuencia inmutable de valores, similar a una lista. Sin embargo, las tuplas no se pueden modificar una vez que se crean, lo que significa que no puedes añadir, eliminar o cambiar elementos en una tupla.

## Creando Tupla en Python

Para crear una tupla, puedes usar paréntesis `()` y separar los elementos con comas `,`.

Aquí tienes un ejemplo de cómo crear una tupla en Python con tres elementos:

```python
my_tuple = (1, "hello", 3.14)
```

También puedes crear una tupla vacía usando paréntesis vacíos `()`:

```python
empty_tuple = ()
```

Si quieres crear una tupla con solo un elemento, necesitas agregar una coma después del elemento, porque sin ella, Python interpretará los paréntesis solo como operadores de agrupación, no como una tupla:

```python
single_tuple = (1,)
```

## Índices de Tuplas

Puedes acceder a los elementos de una tupla en Python utilizando la indexación, igual que en las listas.

Como ya mencionamos, la indexación en Python comienza desde 0. Esto significa que el primer elemento en una tupla tiene un índice de 0, el segundo elemento tiene un índice de 1, y así sucesivamente. La indexación negativa también es compatible, lo que significa que el último elemento en una tupla tiene un índice de -1, el penúltimo elemento tiene un índice de -2, y así sucesivamente.

Aquí hay un ejemplo de acceso a los elementos de una tupla utilizando la indexación:

```python3
my_tuple = ('apple', 'banana', 'cherry')
print(my_tuple[0])   # Output: 'apple'
print(my_tuple[1])   # Output: 'banana'
print(my_tuple[-1])  # Output: 'cherry'
```

## Cómo agregar a una tupla en Python

En Python, las tuplas son inmutables, lo que significa que una vez creadas, sus elementos no pueden cambiarse. Sin embargo, puedes crear una nueva tupla combinando tuplas existentes y otros elementos. Así que para "agregar" o "añadir" un elemento a una tupla, esencialmente crearías una nueva tupla que incluye los elementos existentes junto con el nuevo elemento. Aquí hay un par de formas de lograr esto:

**Usando el operador `+` para crear una nueva tupla**:

```python3
existing_tuple = (1, 2, 3)
new_element = 4

# Concatenate the existing tuple with a new tuple containing the new element
new_tuple = existing_tuple + (new_element,)

print(new_tuple)
```

**Usando el operador de asignación aumentada `+=`**:

```python3
existing_tuple = (1, 2, 3)
new_element = 4

# Use the += operator to concatenate the existing tuple with a new tuple containing the new element
existing_tuple += (new_element,)

print(existing_tuple)
```

Ambos métodos crean una nueva tupla combinando los elementos de la tupla existente con el nuevo elemento, efectivamente "añadiendo" el elemento a la tupla. Recuerda, las tuplas son inmutables, así que en realidad estás creando una nueva tupla en lugar de modificar la original.

## Lista Ordenada de Tuplas

Puedes ordenar una lista de tuplas en Python utilizando la función sorted, y pasando un argumento de clave que especifica cómo comparar los elementos en cada tupla. Aquí hay un ejemplo:

```python3
# define a list of tuples
my_list = [(1, 2), (3, 1), (2, 4)]

# sort the list by the first element in each tuple
sorted_list = sorted(my_list, key=lambda x: x[0])

print(sorted_list) # Output: [(1, 2), (2, 4), (3, 1)]
```

También puedes ordenar la lista de tuplas en orden inverso configurando el argumento `reverse` en True:

```python3
# define a list of tuples
my_list = [(1, 2), (3, 1), (2, 4)]

# sort the list by the second element in each tuple in reverse order
sorted_list = sorted(my_list, key=lambda x: x[1], reverse=True)

print(sorted_list) # Output: [(2, 4), (1, 2), (3, 1)]
```

## Tupla Nombrada en Python

Una tupla nombrada es una subclase del tipo de dato tupla incorporado que permite que los campos sean accedidos por nombre así como por posición de índice.

Las tuplas nombradas se crean usando la función `collections.namedtuple`. Aquí hay un ejemplo:

```python3
from collections import namedtuple

# create a named tuple with two fields: 'x' and 'y'
Point = namedtuple('Point', ['x', 'y'])

# create an instance of the named tuple
p = Point(1, 2)

# access fields by index
print(p[0])  # prints 1

# access fields by name
print(p.x)   # prints 1
print(p.y)   # prints 2
```

Las tuplas nombradas son similares a las tuplas regulares, pero con el beneficio adicional de tener campos nombrados que pueden hacer el código más legible y autodescriptivo. Son inmutables, como las tuplas regulares, por lo que sus campos no pueden cambiar una vez que se crean.

## Tupla Dentro de una Lista en Python

En algunos casos necesitamos hacer una lista de tuplas, por ejemplo para agrupar datos relacionados. Entonces puedes crear una lista que contenga tuplas usando la siguiente sintaxis:

```python
my_list = [(item1, item2), (item3, item4), (item5, item6)]
```

Cada tupla en la lista puede contener múltiples elementos, los cuales pueden ser de cualquier tipo de dato, incluyendo cadenas de texto, números y otras tuplas. Aquí hay un ejemplo de una lista que contiene tuplas con diferentes tipos de datos:

```python
my_list = [("apple", 2), ("orange", 3), ("banana", 4.5), ("grape", ("red", "green"))]
```

Puedes acceder a los elementos en una tupla dentro de una lista utilizando indexación. Por ejemplo, para acceder al segundo elemento en la primera tupla en la lista anterior, puedes usar el siguiente código:

```python
print(my_list[0][1])   # Output: 2
```

## Añadiendo una Tupla

Para añadir una tupla a una lista en Python, puedes usar el método `append()`. Aquí tienes un ejemplo:

```python3
my_list = [(1, 2), (3, 4)]
new_tuple = (5, 6)
my_list.append(new_tuple)
print(my_list) # Output: [(1, 2), (3, 4), (5, 6)]
```
