> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/set/convert

La conversión de conjuntos en Python es el proceso de transformar un tipo de conjunto en otro, como convertir una lista en un conjunto o viceversa. Entender cómo realizar conversiones de conjuntos puede ser útil en varios escenarios, incluidos el análisis de datos, filtrado y ordenamiento.

## Lista vs Conjunto en Python

En Python, tanto las listas como los conjuntos se utilizan para almacenar colecciones de elementos, pero tienen diferentes características que los hacen útiles para diferentes situaciones.

Una lista es una colección ordenada de elementos que se pueden acceder por su índice. Las listas permiten elementos duplicados, y los elementos pueden ser agregados, eliminados y modificados en cualquier posición. Las listas se definen usando corchetes [].

Ejemplo:

```python
my_list = [1, 2, 3, 4, 5]
```

Un conjunto, por otro lado, es una colección desordenada de elementos únicos. Los conjuntos no permiten elementos duplicados, y se pueden añadir y eliminar elementos, pero no modificarlos. Los conjuntos se definen usando llaves {}.

Ejemplo:

```python
my_set = {1, 2, 3, 4, 5}
```

Los conjuntos son útiles cuando necesitas comprobar rápidamente si un elemento está en la colección o no. También son útiles cuando necesitas realizar operaciones de conjuntos como unión, intersección y diferencia.

Las listas, por otro lado, son útiles cuando necesitas mantener el orden de los elementos y cuando necesitas acceder a los elementos por su índice.

En resumen, usa una lista cuando necesites mantener el orden de los elementos y permitir duplicados, y usa un conjunto cuando necesites almacenar elementos únicos y comprobar rápidamente si un elemento está en la colección o no.

## Conversión de Conjunto a Lista en Python

Convertir un conjunto en una lista puede ayudar a preservar el orden de los elementos y hacerlos accesibles por índice.

En Python, la conversión de un conjunto a una lista se puede hacer utilizando la función incorporada `list()`. Aquí tienes un ejemplo de cómo obtener una lista a partir de un conjunto:

```python3
# Define a set
my_set = {1, 2, 3, 4, 5}

# Convert set to list
my_list = list(my_set)

# Print the list
print(my_list) # Output: [1, 2, 3, 4, 5]
```

Tenga en cuenta que el orden de los elementos en el conjunto original se conserva en la lista resultante. Si el orden de los elementos no es importante, también puede convertir un conjunto en una lista utilizando directamente la función `list()` sobre el propio conjunto, de la siguiente manera:

```python3
# Define a set
my_set = {1, 2, 3, 4, 5}

# Convert set to list directly
my_list = list({1, 2, 3, 4, 5})

# Print the list
print(my_list)
```

Esto producirá la misma salida que el ejemplo anterior.

## Conversión de Lista a Conjunto en Python

En Python, la conversión de lista a conjunto se puede realizar utilizando la función incorporada `set()`. Aquí hay un ejemplo de cómo obtener un conjunto a partir de una lista:

```python
my_list = [1, 2, 3, 3, 4, 5]
my_set = set(my_list)
print(my_set) # Output: {1, 2, 3, 4, 5}
```

Como puedes ver, es bastante fácil convertir una lista en un conjunto en Python.

## Conjunto de Listas en Python

En Python, puedes crear un conjunto de listas utilizando la función integrada `set()`. Sin embargo, ten en cuenta que los conjuntos son colecciones desordenadas de elementos únicos, por lo que el orden de las listas dentro del conjunto no se puede garantizar.

Aquí hay un ejemplo de cómo crear un conjunto de listas:

```python3
set_of_lists = set()

list1 = [1, 2, 3]
list2 = [4, 5, 6]
list3 = [1, 2, 3] # a duplicate of list1

set_of_lists.add(tuple(list1))
set_of_lists.add(tuple(list2))
set_of_lists.add(tuple(list3)) # won't add to set since it's a duplicate of list1

print(set_of_lists) # {(1, 2, 3), (4, 5, 6)}
```

## Adición de Lista a Conjunto

Para agregar una lista a un conjunto en Python, puedes usar el método `update()` o el operador `|`.

Aquí hay un ejemplo usando el método `update()`:

```python3
my_set = {1, 2, 3}
my_list = [4, 5, 6]
my_set.update(my_list)
print(my_set)  # output: {1, 2, 3, 4, 5, 6}
```

Y aquí tienes un ejemplo usando el operador `|`:

```python3
my_set = {1, 2, 3}
my_list = [4, 5, 6]
my_set |= set(my_list)
print(my_set)  # output: {1, 2, 3, 4, 5, 6}
```
