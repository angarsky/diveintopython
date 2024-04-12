> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/list/basic-operations

Las listas de Python son estructuras de datos versátiles y comúnmente utilizadas que te permiten almacenar colecciones de elementos, incluyendo números, cadenas y hasta otras listas. Soportan varias operaciones básicas y métodos que te permiten manipular y trabajar fácilmente con los elementos de la lista. Algunas de las operaciones y métodos comúnmente usados para listas incluyen indexación, rebanado, agregar, insertar, eliminar, ordenar y buscar elementos. Revisemos los métodos y funciones básicas de las listas paso a paso.

## Definiendo un Índice de un Elemento

Una lista es una colección ordenada de elementos que pueden ser de cualquier tipo. Cada elemento en una lista tiene un índice único, que representa su posición en la lista. Los índices de las listas comienzan en 0, lo que significa que el primer elemento en una lista tiene un índice de 0, el segundo elemento tiene un índice de 1, y así sucesivamente.

Veamos formas de obtener el índice de un elemento en una lista de Python.

No existe un método directo llamado `indexof()` para encontrar el índice de un elemento en una lista. Sin embargo, puedes usar el método `index()` que está incorporado en Python para obtener el índice de un elemento en la lista.

El método `index()` toma un elemento como argumento y devuelve el índice de la primera ocurrencia de ese elemento en la lista. Por ejemplo, digamos que tienes una lista de cadenas:

```python
my_list = ['apple', 'banana', 'cherry', 'banana', 'date']
```

Puedes encontrar el índice de la primera aparición del elemento 'banana' utilizando el método `index()` de esta manera:

```python
index_of_banana = my_list.index('banana')   # 1
```

El método `index()` genera un `ValueError` si el elemento no se encuentra en la lista.

## Comprensión de listas en Python

Revisemos qué es la comprensión de listas en Python. La comprensión de listas es una manera concisa de crear una nueva lista en Python aplicando una expresión a cada elemento de una lista existente o iterable. La sintaxis básica de una comprensión de lista es:

```python
new_list = [expression(item) for item in iterable if condition]
```

Dónde:

- `expression` es una operación que se aplicará a cada elemento del iterable.
- `item` es la variable que representa a cada elemento del iterable.
- `iterable` es una secuencia de elementos, como una lista o un rango.
- `condition` es una expresión opcional que filtra los elementos basada en una condición.

Por ejemplo, para crear una nueva lista con los cuadrados de los números del `1` al `5`, puedes usar una comprensión de lista así:

```python3
squares = [x**2 for x in range(1, 6)]
print(squares)  # Output: [1, 4, 9, 16, 25]
```

También puedes usar una sentencia `if` para filtrar los elementos basándose en una condición. Por ejemplo, para crear una nueva lista con los números pares del `1` al `10`, puedes usar una comprensión de lista de esta manera:

```python3
evens = [x for x in range(1, 11) if x % 2 == 0]
print(evens)  # Output: [2, 4, 6, 8, 10]
```

## Determinando la Longitud de una Lista

En Python, puedes obtener la longitud de una lista utilizando la función integrada `len()`. Para contar el número de elementos en una lista en Python, también puedes usar la función `len()`.

Aquí hay un ejemplo:

```python3
my_list = [1, 2, 3, 4, 5]
length = len(my_list)
print(length)  # Output: 5
```

> También puedes usar la función `len()` para comprobar si una lista de Python está vacía, ya que no hay un método `isEmpty()` en Python.

Aquí hay un ejemplo usando la comprobación:

```python3
my_list = []
if len(my_list) == 0:
    print("The list is empty")
else:
    print("The list is not empty")
```

## Inversión de Listas

Para invertir una lista en Python, puedes utilizar el método integrado `reverse()` o la notación de rebanada. Aquí hay ejemplos de ambos:

Usando el método `reverse()`:

```python3
my_list = [1, 2, 3, 4, 5]
my_list.reverse()
print(my_list) # Output: [5, 4, 3, 2, 1]
```

Usando la notación de segmentación:

```python3
my_list = [1, 2, 3, 4, 5]
reversed_list = my_list[::-1]
print(reversed_list) # Output: [5, 4, 3, 2, 1]
```

## Filtrado de Listas en Python

En Python, puedes utilizar la función `filter()` para filtrar una lista, es decir, para crear una nueva lista que contenga solo los elementos de una lista existente que satisfacen una cierta condición.

La función `filter()` toma dos argumentos: una función y un iterable. La función debe devolver True o False para cada elemento en el iterable. La función `filter()` entonces devuelve un nuevo iterable que contiene solo los elementos para los cuales la función devolvió True.

Aquí hay un ejemplo que filtra una lista de números para incluir solo los pares:

```python3
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def is_even(num):
    return num % 2 == 0

even_numbers = list(filter(is_even, numbers))
print(even_numbers)  # Output: [2, 4, 6, 8, 10]
```

## Concatenación o Unión de Listas

En Python, puedes concatenar dos o más listas usando el operador `+`. Aquí tienes un ejemplo de cómo unir dos listas:

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]
concatenated_list = list1 + list2
print(concatenated_list) # Output: [1, 2, 3, 4, 5, 6]
```

Una forma más de unir las listas es el método `extend()`:

```python3
list1 = [1, 2, 3]
list2 = [4, 5, 6]
list1.extend(list2)
print(list1) # Output: [1, 2, 3, 4, 5, 6]
```

## Uniendo Elementos de Lista

Para unir una lista de Python en una cadena, puedes usar el método `join()`. Aquí tienes un ejemplo:

```python3
my_list = ['apple', 'banana', 'orange']
my_string = ', '.join(my_list)
print(my_string) # Output: apple, banana, orange
```

Puedes usar cualquier cadena separadora que desees en el método `join()`, incluyendo una cadena vacía si quieres concatenar los elementos juntos sin ningún separador.

## Lista de Listas en Python

En Python, una lista de listas puede ser creada anidando una o más listas dentro de otra lista. Aquí hay un ejemplo de cómo crear listas dentro de una lista:

```python
list_of_lists = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
```

Puedes acceder los elementos de la lista dentro de la lista usando indexación anidada. Por ejemplo, para acceder al segundo elemento de la tercera sub-lista, usarías el siguiente código:

```python
element = list_of_lists[2][1]
```

Esto establecería la variable `element` con el valor 8.

## Iterando a Través de la Lista

Puedes iterar a través de una lista en Python usando un bucle `for`. Aquí tienes un ejemplo de cómo iterar a través de una lista:

```python3
my_list = [1, 2, 3, 4, 5]
for item in my_list:
    print(item)
```

También puedes recorrer una lista de cadenas o cualquier otro tipo de datos. La sintaxis para el bucle `for` es la misma independientemente del tipo de datos en la lista.

## Imprimiendo una Lista en Python

Para imprimir una lista en Python, puedes simplemente usar la función `print` y pasar la lista como argumento. Aquí tienes un ejemplo de cómo imprimir una lista:

```python
my_list = [1, 2, 3, 4, 5]
print(my_list) # Output: [1, 2, 3, 4, 5]
```

Si quieres imprimir cada elemento de la lista en una línea separada, puedes usar un bucle para iterar sobre la lista e imprimir cada elemento uno por uno. Aquí tienes un ejemplo:

```python3
my_list = [1, 2, 3, 4, 5]
for item in my_list:
    print(item)
```

## Suma de Listas en Python

Para encontrar la suma de una lista en Python, puedes usar la función incorporada `sum()`. Aquí tienes un ejemplo de cómo resumir los elementos de una lista:

```python
my_list = [1, 2, 3, 4, 5]
list_sum = sum(my_list)
print(list_sum) # Output: 15
```

## Dividir una Lista en Python

En Python, se puede usar la notación de segmento para extraer una porción de una lista. La sintaxis básica para la división de listas es:

```python
my_list[start:end:step]
```

donde `start` es el índice del primer elemento a incluir, `end` es el índice del primer elemento a excluir y `step` es el número de elementos a omitir entre cada elemento en el segmento (el predeterminado es 1).

Aquí hay algunos ejemplos para ilustrar cómo usar el segmentado de listas:

```python3
my_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# get first three items
print(my_list[:3])  # output: [0, 1, 2]

# get items 3-5
print(my_list[3:6])  # output: [3, 4, 5]

# get every other item starting from the second item
print(my_list[1::2])  # output: [1, 3, 5, 7, 9]

# reverse the list
print(my_list[::-1])  # output: [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
```

También puedes reemplazar múltiples elementos usando el corte. Aquí tienes un ejemplo:

```python
my_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
my_list[3:6] = [0] # Output: [0, 1, 2, 0, 6, 7, 8, 9]
```

## Comparación de Listas

En Python, puedes comparar dos listas utilizando los operadores de comparación (<, <=, >, >=, ==, !=). Aquí tienes un ejemplo de comparación entre dos listas:

```python3
list1 = [1, 2, 3]
list2 = [1, 2, 4]

if list1 == list2:
    print("The two lists are equal")
elif list1 < list2:
    print("list1 is less than list2")
else:
    print("list1 is greater than list2")
```

## Verificando Si una Lista Contiene un Elemento

En Python, el tipo de datos de lista es un tipo incorporado que representa una colección de elementos ordenados. El método `contains` no es un método incorporado para las listas de Python, pero puedes verificar si un elemento está en una lista usando la palabra clave `in` o el método `index`.

La palabra clave `in` devuelve Verdadero si el elemento está en la lista y Falso de lo contrario. Aquí hay un ejemplo:

```python3
my_list = [1, 2, 3, 4, 5]
if 3 in my_list:
    print("3 is in the list")
else:
    print("3 is not in the list") # Output: 3 is in the list
```

El método `index` devuelve el índice de la primera aparición del elemento en la lista. Si el elemento no está en la lista, genera un `ValueError`. Aquí hay un ejemplo:

```python3
my_list = ["apple", "banana", "cherry"]
index = my_list.index("banana")
print(index)  # Output: 1
```

## Mapeo de Listas

En Python, `map()` es una función incorporada que aplica una función a cada elemento de un iterable (como una lista, tupla o conjunto) y devuelve un nuevo iterable con los valores transformados.

Aquí tienes un ejemplo de cómo usar `map()` para aplicar una función a cada elemento de una lista:

```python3
# Define a function to apply to each element of the list
def double(x):
    return x * 2

# Define a list
my_list = [1, 2, 3, 4, 5]

# Use map() to apply the function to each element of the list
new_list = map(double, my_list)

# Convert the result to a list and print it
print(list(new_list))
# Output: [2, 4, 6, 8, 10]
```

## Dividiendo Elementos de una Lista

Puedes dividir una lista en Python usando el método `split()`, el cual está disponible para cadenas pero no para listas. Sin embargo, puedes usar el corte para extraer una porción de una lista y crear una nueva lista con esos elementos.

Aquí hay un ejemplo:

```python3
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
split_index = 5

list_a = my_list[:split_index]
list_b = my_list[split_index:]

print(list_a) # Output: [1, 2, 3, 4, 5]
print(list_b) # Output: [6, 7, 8, 9, 10]
```

## Eliminando Duplicados de una Lista en Python

Para eliminar duplicados de una lista en Python, puedes usar la función integrada `set()`. Aquí tienes un ejemplo:

```python3
my_list = [1, 2, 3, 3, 4, 5, 5, 5, 6]
new_list = list(set(my_list))
print(new_list) # Output: [1, 2, 3, 4, 5, 6]
```
