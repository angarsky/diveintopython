> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/loops/range

La declaración `range` es una característica crucial en Python que permite a los desarrolladores definir una secuencia de números dentro de un rango especificado. Se utiliza a menudo en varias aplicaciones de programación para crear bucles e iterar sobre subconjuntos específicos de elementos en una lista o tupla. La declaración de rango es una herramienta simple pero poderosa que puede mejorar la funcionalidad de tu código Python. En este artículo, exploraremos las diferentes aplicaciones y funcionalidades de la declaración de rango y cómo se puede usar para aumentar la eficiencia y efectividad de tus scripts Python.

## ¿Qué es el `range` en Python?

La función `range` en Python genera una secuencia de números dentro de un rango dado. Es una función incorporada en Python que se puede usar para crear un objeto de rango iterable.

La función `range` toma tres parámetros: `start`, `stop` y paso de rango `step`. El parámetro `start` es el principio del rango, `stop` es el final del rango (exclusivo) y `step` es la diferencia entre cada número en la secuencia.

### Ejemplo 1: Imprimir números del 0 al 9

```python
for i in range(10):
    print(i)
```

### Ejemplo 2: Imprimiendo Números Pares del 2 al 10

```python3
for i in range(2, 11, 2):
    print(i)
```

En el segundo ejemplo, el parámetro `start` se establece como 2, el parámetro `stop` se establece como 11 (exclusivo), y el parámetro `step` se establece como 2, lo que crea una secuencia de números pares desde 2 hasta 10 (rango inclusivo).

Usar la función `range` puede ser útil en muchos escenarios de programación, como recorrer un conjunto de números o generar una lista de elementos.

## Cómo utilizar `range` con el bucle `for`

Esta función puede ser utilizada con un bucle `for` para iterar a través de un cierto rango de números.

Aquí hay un ejemplo de uso de `range` con un bucle `for` para imprimir una secuencia de enteros:

```python3
for num in range(1, 10):
    print(num)

# This will output:
# 
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
```

### Cómo usar `range` con números flotantes

También puedes usar `range` para iterar sobre una secuencia de números flotantes.

```python
for i in range(0, 10):
    print(i/10.0)

# This will output:
# 
# 0.0
# 0.1
# 0.2
# 0.3
# 0.4
# 0.5
# 0.6
# 0.7
# 0.8
# 0.9
```

En resumen, `range` es una función de Python útil que puede combinarse con un bucle `for` para iterar sobre una secuencia de números, incluyendo valores flotantes.

## Cómo invertir un `range`

Para invertir un rango en Python, puedes hacer uso de la función `list`. Primero, crea un rango usando la función `range`, y luego pásalo como argumento a la función `list` para convertir `range` en lista. Después de eso, puedes usar la notación de corte `[::-1]` para obtener el **rango hacia atrás**. Alternativamente, también puedes usar la función `reversed` para obtener el rango invertido.

### Usando la Función `list` y la Notación de Corte

```python
my_range = range(1, 6)
reversed_range = list(my_range)[::-1]
print(reversed_range)  ### Output

```

### Usando la función `reversed`

```python
my_range = range(1, 6)
reversed_range = list(reversed(my_range))
print(reversed_range)  ### Output

```

En ambos ejemplos, primero creamos un rango de `1` a `6` usando la función `range`. Luego, lo pasamos como argumento a la función `list` para convertirlo en una lista. Finalmente, utilizamos ya sea la notación de corte o la función `reversed` para obtener el **rango en orden inverso**.

## Range y Xrange

En Python 2, `range()` y `xrange()` se utilizan para generar una secuencia de números entre dos valores. Sin embargo, hay una diferencia entre estos dos métodos.

`range()` devuelve una lista mientras que `xrange()` devuelve un iterador. Esto significa que `range()` genera toda la secuencia y la almacena en memoria mientras que `xrange()` genera los valores sobre la marcha según se necesitan. Por lo tanto, `xrange()` requiere menos memoria y es más eficiente para secuencias grandes.

Aquí hay un ejemplo de uso de `range()`:

```python3
for i in range(5):
    print(i)

# Output:
# 
# 0
# 1
# 2
# 3
# 4
```

Y aquí está el mismo ejemplo usando `xrange()` en Python 2:

```python
for i in xrange(5):
    print(i)

# Output:
# 
# 0
# 1
# 2
# 3
# 4
```

En general, se recomienda `xrange()` para secuencias grandes en Python 2 ya que es más eficiente en memoria.

## Usando `random` con la función `range`

El módulo [random](https://docs.python.org/3/library/random.html) de Python es una herramienta poderosa para generar números aleatorios. Uno de los casos de uso comunes para `random` es generar enteros aleatorios dentro de un rango específico. Esto se puede lograr utilizando la función `range` en conjunto con `random`.

```python3
import random

# Generate a random number in the range 0 to 9
num = random.randint(0, 9)

print(num)
```

En el ejemplo anterior, `importamos` el módulo `random` y utilizamos la función `randint` para generar un entero aleatorio entre 0 y 9 (inclusive).

```python3
import random

# Generate 10 random integers in the range 0 to 9
nums = [random.randint(0, 9) for _ in range(10)]

print(nums)
```

En el ejemplo anterior, utilizamos la comprensión de listas con la función `range` para generar una lista de 10 números enteros aleatorios entre 0 y 9 (inclusive).

Usar `random` con la función `range` en Python es una forma fácil de generar números enteros aleatorios dentro de un rango específico. Esto puede ser útil en una variedad de aplicaciones, desde generar datos de prueba aleatorios hasta simular el juego o procesos estadísticos.
