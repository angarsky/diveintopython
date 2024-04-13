> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/tuple/basic-operations

Aunque las tuplas son inmutables, admiten varias operaciones como indexación, segmentación y concatenación que se pueden realizar en ellas. En este artículo, exploraremos las diferentes operaciones que se pueden realizar en las tuplas en Python y su sintaxis.

## Ordenando Lista de Tuplas en Python

Las tuplas se pueden ordenar utilizando la función incorporada `sorted()` o el método `sort()`. Aquí hay un ejemplo de ordenación de tuplas basado en el primer elemento:

```python3
tuples = [(3, 'apple'), (1, 'orange'), (2, 'banana')]
sorted_tuples = sorted(tuples, key=lambda x: x[0])
print(sorted_tuples)  # Output: [(1, 'orange'), (2, 'banana'), (3, 'apple')]
```

Alternativamente, puedes usar el método `sort()` en la lista de tuplas, así:

```python3
tuples = [(3, 'apple'), (1, 'orange'), (2, 'banana')]
tuples.sort(key=lambda x: x[0])
print(tuples)  # Output: [(1, 'orange'), (2, 'banana'), (3, 'apple')]
```

El método `sort()` funciona de manera similar a `sorted()`, pero ordena la lista in situ en lugar de devolver una nueva lista ordenada.

## Comparación de Tuplas

Para comparar tuplas en Python, puedes comparar sus elementos uno por uno de forma pareada hasta encontrar una diferencia, o hasta que todos los elementos hayan sido comparados con éxito.

Aquí tienes un código de ejemplo que compara dos tuplas:

```python3
tuple1 = (1, 2, 3)
tuple2 = (1, 2, 4)

if tuple1 == tuple2:
    print("The two tuples are equal")
else:
    print("The two tuples are not equal")
```

## Indexación de Tuplas en Python

Las tuplas pueden ser indexadas usando corchetes [] y un número de índice. El número de índice comienza desde 0 para el primer elemento y aumenta en 1 para cada elemento subsiguiente. Por ejemplo, considere la siguiente tupla:

```python
my_tuple = (10, 20, 30, 40, 50)
```

Para acceder al primer elemento de la tupla, usarías el índice 0 de esta manera:

```python
print(my_tuple[0])   # Output: 10
```

Para acceder al tercer elemento de la tupla, usarías el índice 2 de esta manera:

```python
print(my_tuple[2])   # Output: 30
```

## Segmentación de Tuplas

Una tupla es una colección ordenada e inmutable de elementos, y puedes usar la segmentación para extraer una porción de la tupla.

La segmentación de tuplas usa la sintaxis `tuple[start:end:step]` para especificar un rango de elementos a ser extraídos de la tupla. El parámetro start es el índice del primer elemento a incluir en el segmento (inclusivo), end es el índice del último elemento a incluir en el segmento (exclusivo) y step es el incremento entre los índices.

Aquí hay un ejemplo:

```python3
my_tuple = (1, 2, 3, 4, 5)
print(my_tuple[1:4])  # Output: (2, 3, 4)
```

También puedes usar indexación negativa para cortar una tupla desde el final. Por ejemplo:

```python
my_tuple = (1, 2, 3, 4, 5)
print(my_tuple[-3:-1])  # Output: (3, 4)
```

Si no especificas ninguno de los parámetros, Python utiliza los valores predeterminados: `start=0`, `end=len(tuple)`, y `step=1`. Por ejemplo:

```python
my_tuple = (1, 2, 3, 4, 5)
print(my_tuple[:3])  # Output: (1, 2, 3)
```

## Devolviendo una Tupla

Puedes usar una tupla para devolver múltiples valores de una función.

Aquí tienes un ejemplo de una función que devuelve una tupla:

```python
def calculate_statistics(numbers):
    total = sum(numbers)
    count = len(numbers)
    average = total / count
    return total, count, average
```

## Comprensión de Tuplas en Python

La comprensión de tuplas es una característica en Python que te permite crear una nueva tupla a partir de un iterable existente, aplicando una transformación a cada elemento del iterable.

La sintaxis para la comprensión de tuplas es similar a la comprensión de listas, excepto que el resultado se encierra entre paréntesis en lugar de corchetes. Aquí hay un ejemplo:

```python3
numbers = (1, 2, 3, 4, 5)
squares = tuple(x ** 2 for x in numbers)
print(squares)  # Output: (1, 4, 9, 16, 25)
```

La comprensión de tuplas también puede incluir expresiones condicionales, lo que te permite filtrar elementos en base a alguna condición. Aquí hay un ejemplo:

```python3
numbers = (1, 2, 3, 4, 5)
even_squares = tuple(x ** 2 for x in numbers if x % 2 == 0)
print(even_squares)  # Output: (4, 16)
```

## Longitud de una tupla en Python

Puedes encontrar la longitud de una tupla utilizando la función integrada `len()`.

Por ejemplo, supongamos que tienes una tupla llamada `my_tuple`:

```python
my_tuple = (1, 2, 3, 4, 5)
print(len(my_tuple)) # Output: 5
```

## Iterando a través de una tupla

Para iterar a través de una tupla en Python, puedes usar un bucle `for`. Aquí hay un ejemplo:

```python
my_tuple = (1, 2, 3, 4, 5)
for item in my_tuple:
    print(item)
```

Si también necesitas el índice de cada elemento en la tupla, puedes usar la función `enumerate()`:

```python3
my_tuple = (1, 2, 3, 4, 5)
for index, item in enumerate(my_tuple):
    print(index, item)
```
