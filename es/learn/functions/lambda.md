> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/functions/lambda

**Las funciones Lambda** en Python son funciones **anónimas** que pueden ser definidas y declaradas **en línea** con el resto del código.

## Qué es una Función Lambda en Python

En Python, una función lambda es una manera concisa de crear funciones pequeñas y anónimas. A diferencia de las funciones regulares definidas con la palabra clave `def`, las funciones lambda se crean usando la palabra clave `lambda` y generalmente se utilizan para operaciones cortas e inmediatas.

La sintaxis para una función lambda es simple:

```python
lambda arguments: expression
```

Aquí, `lambda` es la palabra clave, `arguments` son los parámetros de entrada de la función, y `expression` es la operación que realiza la función.

Aquí también hay algunos ejemplos de declaración y uso:

### Suma Básica

```python
add = lambda x, y: x + y
print(add(3, 4))  # Output: 7
```

### Uso Dentro de Funciones de Orden Superior

```python3
numbers = [1, 2, 3, 4, 5]
doubled = list(map(lambda x: x * 2, numbers))
print(doubled)  # Output: [2, 4, 6, 8, 10]
```

### Ordenando una Lista de Tuplas

```python3
students = [('Alice', 25), ('Bob', 20), ('Charlie', 30)]
students.sort(key=lambda x: x[1])
print(students)  # Output: [('Bob', 20), ('Alice', 25), ('Charlie', 30)]
```

Las funciones lambda son especialmente útiles cuando se necesita una función pequeña por un breve período. Su simplicidad es beneficiosa en casos donde definir una función regular podría ser excesivo.

Puntos clave para recordar:

- Las funciones lambda son anónimas y no requieren un nombre.
- Pueden manejar operaciones simples en una sola línea.
- A menudo se usan con funciones de orden superior como map, filter y sort.

## Beneficios y Razones para Usar Funciones Lambda en Programación Python

1. **Código conciso**: Las funciones lambda pueden definirse en una sola línea de código, lo que las hace fáciles de usar y leer.

2. Fácil de **usar funciones de otro archivo Python**: Puedes usar funciones `lambda` para definir una función que se puede usar desde otro archivo Python.

3. **Programación funcional**: Las funciones lambda permiten a los programadores de Python utilizar técnicas de programación funcional, facilitando la escritura de código puro y modular.

### Ejemplo de una función lambda

```python3 
x = lambda a : a + 10
print(x(5)) # output: 15
```

En este ejemplo, se define una función `lambda` con el parámetro `a`. La función suma `10` al parámetro y devuelve el resultado. Luego, la función `lambda` se llama con el parámetro `5`, lo que resulta en la salida de `15`.

## Ejemplos y Casos de Uso para Funciones Lambda en Python

1. **Ordenar una lista de tuplas**: Las funciones Lambda pueden usarse como un **argumento clave** en la función `sorted()` para ordenar una lista de tuplas basándose en un elemento específico de la tupla.

```python3 
# Sorting a list of tuples based on the age of a person
people = [('Jane', 23), ('John', 19), ('Adam', 25), ('Kate', 18)]
sorted_people = sorted(people, key=lambda x: x[1])
print(sorted_people)
# Output: [('Kate', 18), ('John', 19), ('Jane', 23), ('Adam', 25)]
```

2. **Filtrando una lista**: Las funciones Lambda pueden usarse con `filter()` para crear una nueva lista que satisface una condición específica.

```python3 
 # Filter a list of numbers greater than 5
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
filtered_numbers = list(filter(lambda x: x > 5, numbers))
print(filtered_numbers)
# Output: [6, 7, 8, 9, 10]
```

## Diferencias entre Lambda y Funciones Regulares en Python

1. **Sintaxis**: Las funciones Lambda se escriben en una sola línea de código y no requieren la palabra clave `def`. Las funciones regulares se definen usando la palabra clave `def` y pueden escribirse en múltiples líneas.

2. **Argumentos**: Las funciones Lambda pueden tener cualquier número de argumentos pero solo pueden tener una expresión. Las funciones regulares pueden tomar cualquier número de argumentos y pueden tener varias expresiones.

3. **Nombre**: Las funciones Lambda son anónimas, lo que significa que no tienen un nombre. Las funciones regulares tienen un nombre que se utiliza para llamar a la función.

4. **Alcance**: Las funciones Lambda están limitadas en términos de alcance y solo pueden acceder a variables globales. Las funciones regulares tienen un alcance más amplio y pueden acceder tanto a variables locales como globales.
  
## Mejores Prácticas para Usar Funciones Lambda en Python  

1. Mantén tus funciones Lambda **cortas y simples**: Las funciones Lambda se utilizan mejor para operaciones pequeñas que se pueden escribir de manera concisa en una sola línea de código. Si tu función es demasiado larga o compleja, podría ser mejor escribir una función Python regular.

2. Usa funciones Lambda con `map()`, `filter()` y `reduce()`: Estas funciones de orden superior requieren un argumento de función, y las funciones Lambda son una excelente manera de crear funciones simples sobre la marcha.

3. **No abuses de las funciones Lambda**: Aunque las funciones Lambda pueden ser útiles para ciertas tareas, también pueden hacer que tu código sea menos legible si se usan en exceso. Si tu expresión Lambda en Python se está haciendo demasiado larga, podría ser mejor escribir una función Python regular en su lugar.

## Conceptos Avanzados de Lambda: `map()`, `reduce()` y `filter()`  

La función `map()` se utiliza para aplicar una función lambda dada **a cada elemento en una colección**. El resultado es una nueva colección con la función lambda aplicada a cada elemento. Aquí hay un ejemplo de uso de la función map para agregar un valor constante a cada elemento en una lista usando una función lambda:

```python3 
numbers = [1, 2, 3, 4, 5]
add_two = lambda x: x + 2
result = map(add_two, numbers)
print(list(result)) # [3, 4, 5, 6, 7]
```

La función `reduce()` se utiliza para aplicar una función lambda dada **a una colección y reducirla** a un único valor. La función lambda debe tomar dos argumentos y devolver un único valor. Aquí hay un ejemplo de cómo usar la función reduce para calcular el producto de todos los números en una lista usando una función lambda:

```python 
from functools import reduce
numbers = [1, 2, 3, 4, 5]
multiply = lambda x, y: x * y
result = reduce(multiply, numbers)
print(result) # 120
```

La función `filter()` se utiliza para **aplicar** una función lambda dada **a cada elemento en una colección** y **filtrar los elementos** que no cumplen con una cierta condición. El resultado es una nueva colección solo con los elementos que cumplen la condición. Aquí hay un ejemplo de cómo usar la función filter para mantener solo los números pares en una lista usando una función lambda:

```python 
numbers = [1, 2, 3, 4, 5]
is_even = lambda x: x % 2 == 0
result = filter(is_even, numbers)
print(list(result)) # [2, 4]
```

## Explorando las Limitaciones y Advertencias del Uso de Funciones Lambda en Código Python

Una limitación de las funciones lambda es que están **restringidas a una única expresión**. Esto significa que operaciones más complejas, como un bucle o múltiples declaraciones, no pueden realizarse dentro de una función lambda. Por ejemplo, si quisiéramos crear una función de potencia en Python usando un bucle, no podemos usar funciones lambda.

Otra limitación de las funciones lambda es que **no se pueden usar para definir funciones recursivas**. La recursión requiere que una función se llame a sí misma, y una función lambda **no puede referirse a sí misma**.

Además, usar funciones lambda puede hacer que el código sea más difícil de leer y entender, especialmente para operaciones complejas. En tales casos, podría ser mejor usar una función regular de Python en su lugar.

Adicionalmente, el uso de funciones lambda en código crítico para el rendimiento **puede incurrir en una pequeña sobrecarga** debido al proceso de creación de la función. En tales casos, podría ser mejor **usar una función de Python pre-definida**, como la función `exp()` de la biblioteca `math`.

```python 
# Example of using the exp() function
import math
x = 2.0
y = math.exp(x)
```
