> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/functions/partial-functions

Python ofrece una gama de funciones a los desarrolladores. Las funciones parciales en Python son una adición emocionante que puede ser extremadamente útil, especialmente cuando se trata de código complejo. Una función parcial es una función que ya tiene algunos de sus argumentos definidos, lo que facilita su llamada. En este artículo, exploramos el concepto de funciones parciales en Python y cómo se pueden utilizar eficazmente en diferentes escenarios de programación.
  
## Entendiendo las funciones parciales de Python: una guía para principiantes sobre la modificación de funciones

Una **función parcial** en Python es una función que se define con algunos de sus argumentos ya establecidos. Esto nos permite crear nuevas funciones a partir de las existentes que tienen algunos de los argumentos preconfigurados. La función resultante se llama función parcial.

Por ejemplo, considera la siguiente función normal que suma dos números. Podemos crear una nueva función parcial a partir de esta función estableciendo uno de los argumentos:

```python3
from functools import partial

def add(a, b):
    return a + b

add_3 = partial(add, 3)

print(add_3(4)) # Output: 7
```

Aquí, hemos creado una nueva función parcial llamada `add_3` que suma 3 a cualquier número que le pasemos. Lo hicimos utilizando la función `partial` del módulo `functools`.

También podemos usar funciones parciales para modificar una función existente pasando un nuevo valor para uno de sus argumentos:

```python3
from functools import partial

mod = partial(pow, 2)

print(mod(3)) # Output: 8
```

En este ejemplo, hemos creado una nueva función parcial llamada `mod` que toma un número y calcula su módulo con 2.

## Cómo usar funciones parciales en Python para simplificar fragmentos de código recurrentes

Las funciones parciales son funciones que están definidas con algunos de sus argumentos ya establecidos, lo que reduce la necesidad de repetir fragmentos de código en Python. Se crean utilizando el método `partial()` del módulo `functools` y se pueden usar para simplificar el código complejo.

Las palabras clave usadas en esta respuesta son función y función parcial.

### Dos ejemplos de uso de funciones parciales en Python

Supongamos que tenemos una función que calcula el área de un rectángulo. Necesitamos calcular el área de varios rectángulos con un `width` fijo de `10`. En lugar de crear una nueva función, podemos crear una función parcial con el argumento de ancho fijo:

```python3
from functools import partial

def calculate_area(length, width):
    return length * width

calculate_area_with_fixed_width = partial(calculate_area, width=10)

area1 = calculate_area_with_fixed_width(5)
area2 = calculate_area_with_fixed_width(7)

print(area1) # 50
print(area2) # 70
```

Supongamos que tenemos una función que genera una URL a partir de una ruta y algunos parámetros de consulta. Necesitamos generar URLs con una ruta fija y algunos parámetros de consulta variables. En lugar de repetir el argumento de ruta cada vez, podemos crear una función parcial con el argumento de ruta fijo:

```python3
from functools import partial

def generate_url(path, params):
    url = "https://example.com" + path + "?"
    for key, value in params.items():
        url += key + "=" + value + "&"
    return url[:-1]

generate_url_with_fixed_path = partial(generate_url, "/search")

url1 = generate_url_with_fixed_path({"q": "Python"})
url2 = generate_url_with_fixed_path({"q": "Java", "sort": "date"})

print(url1) # https://example.com/search?q=Python
print(url2) # https://example.com/search?q=Java&sort=date
```

## Explorando las ventajas de las funciones parciales en Python: un ejemplo práctico

Las funciones parciales en Python son funciones que están parcialmente definidas y contienen valores fijos para ciertos parámetros. Estas funciones ofrecen varias ventajas, como la reutilización mejorada y la reducción de la redundancia de código. Un ejemplo práctico del uso de funciones parciales en Python es la implementación de la función exponencial, donde se puede crear una función parcial para predefinir la base del exponente.

### Ejemplo de Función: Función Exponencial

La función exponencial se utiliza en muchas operaciones matemáticas y se puede implementar fácilmente en Python usando la función `exp` del módulo `math`. Sin embargo, si queremos calcular el valor exponencial de un número con diferentes bases, necesitamos escribir líneas de código separadas para cada operación. Esto puede resultar en redundancia de código y disminución de la legibilidad.

```python
import math

x = 5

exponential_2 = math.exp(2 * x)
exponential_3 = math.exp(3 * x)
exponential_4 = math.exp(4 * x)
```

Para evitar esto y hacer el código más conciso, podemos usar funciones parciales en Python. Podemos definir una función parcial para la función `exp` con un parámetro fijo para la base usando la función `partial` del módulo `functools`. Luego, podemos llamar a la función parcial con el parámetro variable `x`.

```python
import math
from functools import partial

exp_base_2 = partial(math.exp, 2)
exp_base_3 = partial(math.exp, 3)
exp_base_4 = partial(math.exp, 4)

x = 5

exponential_2 = exp_base_2(x)
exponential_3 = exp_base_3(x)
exponential_4 = exp_base_4(x)
```

De esta manera, podemos calcular fácilmente el valor exponencial de una variable `x` para diferentes bases utilizando las funciones parciales definidas sin tener que reescribir el código para cada operación.

### Ejemplo de Función Parcial: Función Multiplicar

Otro ejemplo del uso de funciones parciales en Python es la implementación de la función `multiply`. Supongamos que tenemos una lista de números que queremos multiplicar por un valor fijo `x`. Podemos definir una función parcial usando la función `partial` del módulo `functools` para crear una nueva función que multiplica un número dado por `x`.

```python3
from functools import partial

multiply = partial(lambda x, y: x * y, 2)

result = map(multiply, [1, 2, 3, 4, 5])
print(list(result))    # Output: [2, 4, 6, 8, 10]
```

En este ejemplo, la función `multiply` se define como una función parcial que acepta dos argumentos, `x` e `y`. El primer argumento `x` se fija al valor `2`, y el segundo argumento `y` se pasa como un parámetro variable usando la función `map` para multiplicar cada elemento de la lista por `2` y devolver el resultado. Esto resulta en un código más conciso y legible.

## Cuándo Usar Funciones Parciales vs. Lambdas en Python: Diferencias Clave y Similitudes

Las funciones parciales son funciones que tienen un conjunto fijo de argumentos predefinidos, y el resto de los argumentos se pueden pasar más tarde. Por otro lado, las funciones lambda son funciones anónimas que se pueden definir sobre la marcha.

Usa funciones parciales cuando tengas una función con argumentos fijos y quieras reutilizarla con diferentes valores para los argumentos restantes. Usa lambdas cuando necesites definir rápidamente una función simple sin darle un nombre.

Diferencias clave y similitudes:

- Las funciones parciales se definen usando la función `functools.partial()`, mientras que las funciones lambda se definen usando la palabra clave `lambda`.
- Las funciones parciales pueden tener un conjunto fijo de argumentos predefinidos, mientras que las lambdas pueden tener cualquier número de argumentos.
- Tanto las funciones parciales como las lambdas se pueden usar como argumentos para otras funciones.

### Ejemplo de Uso de una Función Parcial

```python3
import functools

def multiply(x, y):
    return x * y

double = functools.partial(multiply, y=2)

print(double(3))   # Output: 6
```

### Ejemplo de Uso de una Función Lambda

```python
add = lambda x, y: x + y

print(add(2, 3))   # Output: 5
```

## Cómo Crear Funciones Parciales en Python: un Tutorial Paso a Paso  

Para crear una función parcial en Python, necesitas seguir los siguientes pasos:

1. Importar el módulo `functools`.
2. Definir la función original que quieres usar como función parcial.
3. Usar la función `partial()` para crear una nueva función que ya tenga algunos parámetros establecidos.

```python
import functools

def multiply(x, y):
    return x * y

multiply_by_two = functools.partial(multiply, 2)
print(multiply_by_two(5)) # Output: 10
```

En este ejemplo, se crea una función parcial llamada `multiply_by_two` a partir de la función `multiply()`, con el primer parámetro establecido en 2. Cuando se llama a `multiply_by_two()` con el parámetro 5, multiplica 2 por 5 y devuelve 10.

```python3
import functools

def power(base, exponent):
    return base ** exponent

square = functools.partial(power, exponent=2)
cube = functools.partial(power, exponent=3)

print(square(5)) # Output: 25
print(cube(5)) #Output: 125
```

En este ejemplo, las funciones parciales llamadas `square` y `cube` se crean usando la función `power()`, con el parámetro del exponente establecido en 2 y 3, respectivamente. Cuando se llama a `square(5)`, devuelve 25, y cuando se llama a `cube(5)`, devuelve 125.

## Mejorando la Legibilidad del Código con Funciones Parciales en Python: Consejos y Trucos

Una forma de usar funciones parciales es reducir la duplicación de código. Por ejemplo, supongamos que tenemos dos funciones que calculan el `average` de dos números:

```python
def average(a, b): 
    return (a + b) / 2 

def average_three(a, b, c): 
    return (a + b + c) / 3
```

Podemos usar una función parcial para **evitar duplicar** el código para sumar los números:

```python3
from functools import partial 

def add(*args): 
    return sum(args) 

average_two = partial(add, 2) 
average = partial(add, 3) 

print(average_two(4)) # prints 3.0
print(average(1, 2, 3)) # prints 2.0
```

Otra forma de usar funciones `partial` es crear valores predeterminados para parámetros opcionales. Por ejemplo, supongamos que tenemos una función que formatea un número con una cantidad especificada de decimales:

```python
from functools import partial 

def format_number(number, digits): 
    return f"{number:.{digits}f}"

format_two_digits = partial(format_number, digits=2) 

print(format_number(3.14159, 2)) # prints 3.14
print(format_two_digits(3.14159)) # prints 3.14
```

En ambos casos, el uso de funciones parciales hace que el código sea más legible al expresar explícitamente la intención del código de una manera que es más fácil de entender y mantener.
