> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/modules/popular-modules/random

El módulo Random en Python es una biblioteca ampliamente utilizada que permite a los desarrolladores generar números aleatorios, mezclar listas y hacer otras selecciones aleatorias para sus aplicaciones. Proporciona una gama de funciones que se pueden utilizar para crear datos aleatorios y puede ser útil en diversas aplicaciones como juegos, simulaciones, criptografía y otras áreas donde se necesita aleatoriedad. Con este módulo, los desarrolladores tienen la libertad de crear diversidad en la salida de sus aplicaciones, haciéndolas así más intrigantes.

## Ejemplos de Uso del Módulo Random

El módulo [random](https://docs.python.org/3/library/random.html) (`random` library) en Python se utiliza para generar números pseudoaleatorios.

### Obtener Número Aleatorio

```python3
import random

# Generate a random number between 1 and 10 (inclusive)
random_number = random.randint(1, 10)
print(random_number)

# Output:
# 5 (this number will be different each time the code is run)
```

En el ejemplo anterior, la función `random.randint(a, b)` se utiliza para generar un entero aleatorio entre los valores de `a` y `b`, incluyendo ambos extremos. En este caso, el número aleatorio generado estará entre `1` y `10`.

### Selección Aleatoria de una Lista

```python3
import random

# Generate a random choice from a list of options
options = ["rock", "paper", "scissors"]
random_option = random.choice(options)
print(random_option)

# Output:
# "paper" (this option will be different each time the code is run)
```

En este ejemplo, la función `random.choice(seq)` se utiliza para generar una elección aleatoria de una lista de opciones. En este caso, la elección aleatoria generada será una de las tres opciones en la lista `options` - `rock`, `paper` o `scissors`.

## Semilla Aleatoria

La Semilla Aleatoria juega un papel crucial en la generación de números aleatorios en Python. Se utiliza para inicializar el generador de números pseudoaleatorios, el cual es una función que genera una secuencia de números que parecen ser aleatorios, pero en realidad son deterministas.

```python
import random

# Setting the random seed value to 123
random.seed(123)

# Generating 5 random numbers
for i in range(5):
    print(random.random())
```

En este ejemplo, establecemos el valor de semilla aleatoria en `123`, lo que garantiza que se genere la misma secuencia de números aleatorios cada vez que se ejecute el código.

```python3
import random

# Setting different random seed values
random.seed(123)
list_1 = [random.randint(1,10) for i in range(5)]

random.seed(456)
list_2 = [random.randint(1,10) for i in range(5)]

# Printing the lists
print(list_1)
print(list_2)
```

En este ejemplo, establecemos diferentes valores de semilla aleatoria para generar dos listas diferentes. Al hacer esto, nos aseguramos de que las listas sean reproducibles y se puedan generar nuevamente con los mismos valores de semilla `random`.

En general, la semilla `random` es una característica esencial para generar y reproducir números `random` en Python. Al establecer la semilla, podemos asegurar que nuestros resultados sean consistentes y reproducibles.

## Cómo generar una Cadena Aleatoria

Si buscas generar una cadena aleatoria en Python, hay algunos métodos diferentes que puedes usar dependiendo de tus necesidades. Aquí hay dos ejemplos:

```python3
import random
import string

def random_string(length):
    letters = string.ascii_lowercase
    return ''.join(random.choice(letters) for i in range(length))

# Example usage
print(random_string(10))  # Output: 'gjwstqyeqh'
```

En este ejemplo, usamos los módulos incorporados de Python `random` y `string` para generar una cadena de una longitud dada. Primero definimos una **función aleatoria** llamada `random_string` que toma un parámetro `length` que especifica el número de caracteres en la cadena resultante. Luego usamos la constante `string.ascii_lowercase` para obtener todas las `letras` en minúscula del alfabeto, y `random.choice` para seleccionar caracteres al azar de esta cadena por la longitud de nuestra cadena especificada.

```python
import random

# random function

def random_string(chars, length):
    return ''.join(random.choice(chars) for i in range(length))

# Example usage
print(random_string('ABC123', 8))  # Output: '31C1C1CA'
```

Si quieres más control sobre los caracteres en la cadena resultante, puedes especificar un conjunto de caracteres para elegir. En este ejemplo, definimos nuestro propio conjunto de caracteres para elegir al pasar una cadena de posibles caracteres a la **función aleatoria** `random_string`. Luego usamos `random.choice` para seleccionar caracteres aleatoriamente de este conjunto por la longitud de nuestra cadena especificada.

Con estos dos ejemplos, deberías poder generar cadenas aleatorias en Python fácilmente para cualquier propósito que necesites. Recuerda `importar` los módulos necesarios y elegir el método apropiado basado en tus requisitos específicos.

## Muestreo Aleatorio

El muestreo aleatorio es una técnica estadística importante utilizada por analistas de datos y programadores para seleccionar un subconjunto de datos de una población más grande de manera [aleatoria](https://docs.python.org/3/library/random.html). En Python, el muestreo `random` se puede realizar utilizando el módulo integrado `random`. Este artículo discutirá brevemente cómo generar muestras `random` en Python.

### Muestreo Aleatorio en Python

En Python, el módulo `random` proporciona varias funciones para generar datos `random`. Para generar una muestra `random` de una lista, podemos usar la función `random.sample()`. Esta función toma dos argumentos: la lista de la cual queremos generar una muestra `random` y el número de muestras que queremos generar.

```python3
import random

mylist = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Generate a random sample of size 4 from the list
random.sample(mylist, 4)

# Output: [9, 1, 5, 4]
```

```python
import random

# Generate a random floating-point number between 0 and 1
random.random()
# Output: `0.42323281409391506`
```

El muestreo aleatorio es una técnica poderosa que se puede utilizar para seleccionar subconjuntos de datos para análisis y modelado. En Python, el módulo `random` facilita la generación de muestras aleatorias de listas y otras fuentes de datos. Mediante el uso de la función `random.sample()`, podemos generar rápidamente una lista aleatoria de un tamaño especificado.

## Aleatoriedad con el Método `randint()`

El método `randint()` de Python se usa para generar un entero aleatorio entre el rango de valores dado. La función `randint()` es parte del módulo `random` en Python.

Aquí hay un ejemplo de cómo usar `randint()` para generar un `número` aleatorio entre 0 y 9:

```python
import random

number = random.randint(0, 9)
print(number)
```

Este código generará un entero aleatorio entre 0 y 9 (inclusive).

También puedes usar `randint()` para generar un `number` aleatorio dentro de un rango más amplio. Por ejemplo, para generar un `number` aleatorio entre 100 y `200` (inclusive), usarías el siguiente código:

```python
import random

number = random.randint(100, 200)
print(number)
```

En resumen, la función `random.randint()` de Python es una manera simple y eficiente de generar números enteros aleatorios, y es una herramienta útil en muchos proyectos de programación.

## Aleatoriedad con la Función `uniform()`

La función `random.uniform()` es una función de Python que genera números flotantes aleatorios dentro de un rango especificado. Es parte del módulo `random`, el cual se utiliza para generar datos aleatorios.

Usar la función `random.uniform()` en Python es relativamente fácil.

### Generar un Flotante Aleatorio

```python
import random

x = random.uniform(0, 1)
print(x)
```

La función `random.uniform()` genera un número flotante aleatorio dentro del rango especificado. El rango está entre 0 y 1.

Usar la función `random.uniform()` es especialmente útil cuando se necesita generar números flotantes aleatorios que no son enteros. Cuando se combina con otras funciones y módulos, se puede utilizar para simular escenarios del mundo real como la modelización financiera, simulaciones físicas y modelado de sistemas biológicos en biología computacional.
