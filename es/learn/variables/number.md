> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/number

Python admite varios tipos de datos numéricos que se utilizan para diversas operaciones matemáticas en la programación. Estos tipos de datos incluyen enteros, números de punto flotante y números complejos. Comprender estos tipos de datos y sus características es esencial para cualquier programador que quiera trabajar con datos numéricos en Python.

## Tipos de Números en Python

En Python, hay varios tipos de números que se pueden utilizar para diferentes propósitos. Los tipos de números más comunes en Python son:

- **Número entero** (int): Este es un número entero sin ningún punto decimal. Por ejemplo, `1`, `2`, `3`, etc. son enteros.
- **Número flotante**: Este es un número decimal. Por ejemplo, `1.2`, `3.14159`, etc. son flotantes.
- **Número complejo**: Este es un número con una parte real y otra imaginaria. Por ejemplo, `1 + 2j`, `3.14 - 4j`, etc. son números complejos.

Aquí hay algunos ejemplos de cómo definir estos tipos de números en Python:

```python
# Integer
x = 5
print(type(x))  # Output: <class 'int'>

# Float
y = 3.14
print(type(y))  # Output: <class 'float'>

# Complex
z = 2 + 3j
print(type(z))  # Output: <class 'complex'>
```

## La función `isinstance()`

Para verificar si una variable es un número en Python, puedes usar la función `isinstance()` para comprobar si la variable pertenece al tipo de dato int, float o complex. Aquí tienes un ejemplo:

```python3
x = 10
y = 3.14
z = 2 + 3j

print(isinstance(x, (int, float, complex)))  # Output: True
print(isinstance(y, (int, float, complex)))  # Output: True
print(isinstance(z, (int, float, complex)))  # Output: True
print(isinstance('hello', (int, float, complex)))  # Output: False
```

## Redondeando un Número en Python

Puedes redondear un número usando la función integrada `round()`. La función `round()` toma dos argumentos: el número a redondear y el número de decimales a los que redondear.

Aquí hay un ejemplo:

```python3
x = 3.14159
rounded_x = round(x, 2)
print(rounded_x) # Output: 3.14
```

Tenga en cuenta que si el número a redondear termina en 5, la función `round()` redondeará al número par más cercano. Esto es conocido como "redondeo de banqueros". Por ejemplo:

```python
x = 2.5
rounded_x = round(x)
print(rounded_x) # Output: 2
```

## Formato de Números

En Python, hay varias formas de dar formato a los números. Aquí algunos ejemplos:

### Usando la función integrada `format()`

```python3
x = 3.14159
print("{:.2f}".format(x))  # Output: 3.14
```

La cadena `"{:.2f}"` dentro de la función `format()` le indica a Python que formatee el número como un flotante con 2 decimales.

### Usando f-strings (Python 3.6 y superior)

```python
x = 3.14159
print(f"{x:.2f}")  # Output: 3.14
```

La `f` antes de la cadena indica que es una f-cadena, y el `"{x:.2f}"` dentro de la cadena le dice a Python que formatee el valor de `x` como un float con 2 decimales.

### Usando el operador `%`

```python3
x = 3.14159
print("%.2f" % x)  # Output: 3.14
```

El texto `%.2f` dentro del operador `%` le dice a Python que formatee el número como un flotante con 2 decimales.

## Verificando Si una Cadena Es un Número

Puedes verificar si una cadena es un número en Python utilizando varios métodos. Aquí hay algunos ejemplos:

### Usando el método `isnumeric()`

```python
my_string = "123"
if my_string.isnumeric():
    print("String is a number")
else:
    print("String is not a number") # Output: String is a number
```

### Usando el método `isdigit()`

```python
my_string = "456"
if my_string.isdigit():
    print("String is a number")
else:
    print("String is not a number") # Output: String is a number
 ```

### Usando el bloque try-except para convertir una cadena a float

```python
my_string = "789.12"
try:
    float(my_string)
    print("String is a number")
except ValueError:
    print("String is not a number") # Output: String is a number
```

> Tenga en cuenta que si la cadena contiene un carácter no numérico, los primeros dos métodos devolverán `False` y el tercer método generará un `ValueError`.

## Verificar Si un Número es Entero

Puede utilizar el operador de módulo `%` para verificar si un número es entero o no. Si el resultado de dividir el número entre 1 es igual a 0, entonces el número es un número entero.

Aquí hay un ejemplo:

```python
num = 5.0  # the number you want to check

if num % 1 == 0:
    print("The number is whole.")
else:
    print("The number is not whole.") # Output: "The number is whole."
 ```

## Generando un Número Aleatorio

Para obtener un número aleatorio en Python, puedes usar el módulo random. Aquí tienes un ejemplo de cómo generar un entero aleatorio entre 0 y 10:

```python
import random

random_number = random.randint(0, 10)
print(random_number)
```

Esto imprimirá un entero aleatorio entre 0 y 10 (inclusive) cada vez que ejecutes el script. Si quieres generar un número flotante aleatorio, puedes usar la función `random.uniform()` en su lugar:

```python
import random

random_number = random.uniform(0, 1)
print(random_number)
```

## Elevar al Cuadrado un Número en Python

Veamos cómo elevar al cuadrado un número en Python.
El primer método es usando el operador de exponente `**`. Aquí hay un ejemplo:

```python
x = 5
squared = x ** 2
print(squared) # Output: 25
```

Alternativamente, también puedes usar la función `pow()` para calcular el cuadrado de un número. Aquí hay un ejemplo:

```python
x = 5
squared = pow(x, 2)
print(squared)
```

## Negar un Número

Puedes negar un número utilizando el operador `-` (menos).

Aquí hay un ejemplo:

```python
number = 10
negated_number = -number
print(negated_number) # Output: -10
```

## Número Primo

Un número primo es un entero positivo mayor que 1 que no tiene divisores enteros positivos además de 1 y sí mismo. En Python, puedes comprobar si un número es primo probando si es divisible por algún número aparte de 1 y sí mismo.

Aquí hay un ejemplo de una función que verifica si un número es primo o no:

```python
def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True
```

Esta función toma un entero positivo `n` como entrada y devuelve `True` si `n` es primo, y `False` en caso contrario.

La función primero verifica si `n` es menor o igual a 1, lo cual no es un número primo por definición. Si `n` es menor o igual a 1, la función devuelve `False`.

Si `n` es mayor que 1, la función verifica si es divisible por algún número desde 2 hasta la raíz cuadrada de `n`. Si `n` es divisible por algún número en este rango, no es primo y la función devuelve `False`. De lo contrario, `n` es primo y la función devuelve `True`.

Aquí tienes un ejemplo de cómo usar la función `is_prime`:

```python
print(is_prime(7)) # True
print(is_prime(15)) # False
print(is_prime(23)) # True
print(is_prime(1)) # False
```

Salida:

```python
True
False
True
False
```

En este ejemplo, llamamos a la función `is_prime` con diferentes valores de entrada e imprimimos la salida.

## El Número de Euler en Python

El número de Euler, también conocido como la constante matemática `e`, es una constante matemática que es aproximadamente igual a 2.71828. En Python, puedes calcular el número de Euler utilizando el módulo `math`.

Aquí tienes un ejemplo de cómo calcular el número de Euler:

```python3
import math

e = math.e

print(e) # Output: 2.718281828459045
```

## Extrayendo Número de una Cadena

Para extraer un número de una cadena en Python, puedes usar expresiones regulares con el módulo `re`. Aquí hay un ejemplo:

```python3
import re

string = "The price is $12.34"

number = re.findall(r'\d+\.\d+', string)[0]

print(number) # Output: 12.34
```

En este ejemplo, primero importamos el módulo `re`, que proporciona soporte para expresiones regulares. Luego definimos una variable `string` que contiene una oración con un número.

Para extraer el número de la cadena, utilizamos la función `re.findall` con un patrón de expresión regular `\d+\.\d+`. Este patrón coincide con uno o más dígitos `\d+` seguido de un punto `\.` seguido por uno o más dígitos `\d+`. La coincidencia resultante es una cadena que representa el número en la oración.

Dado que `re.findall` devuelve una lista de coincidencias, accedimos al primer elemento `[0]` de la lista para obtener el número como una cadena.

Si necesitas convertir el número extraído de una cadena a un valor numérico, puedes usar la función float o int:

```python
number = float(number)
print(number) # Output: 12.34
```

## Dígitos de un Número

Para encontrar los dígitos de un número en Python, puedes convertir el número a una cadena de texto y luego iterar sobre la cadena para extraer cada dígito. Aquí tienes un ejemplo:

```python3
num = 12345

# Convert number to string
num_str = str(num)

# Iterate over string and print each digit
for digit in num_str:
    print(digit)
```
