> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/functions/generators

**Funciones generadoras** en Python son tipos especiales de funciones que pueden utilizarse para crear **iteradores**. Generan una secuencia de valores sobre la marcha según se requiere, en lugar de devolver un valor de una sola vez como las funciones regulares. Esto las hace más eficientes en memoria y más rápidas que otros métodos para producir iteradores.

## Introducción a los Generadores

Los beneficios de usar funciones generadoras incluyen una mejor eficiencia de rendimiento, una mejor gestión de la memoria y la capacidad para manejar conjuntos de datos grandes e infinitos.

### Ejemplo 1: Función regular de Python

```python3
def power(n):
    result = []
    for i in range(n):
        result.append(2**i)
    return result

print(power(5)) # Output: [1, 2, 4, 8, 16]
```

### Ejemplo 2: Función generadora en Python

```python3
def power(n):
    for i in range(n):
        yield 2**i

print(list(power(5))) # Output: [1, 2, 4, 8, 16]
```

En el segundo ejemplo, la función generadora se usa para crear un **iterador** que genera cada valor sobre la marcha según sea necesario, en lugar de crear y almacenar una lista de valores en memoria como en el primer ejemplo. Esto puede ser una forma mucho más eficiente de trabajar con grandes conjuntos de datos o cálculos que quizás no necesiten almacenarse en memoria de una sola vez.

## Sintaxis y Estructura de las Funciones Generadoras

Utiliza la palabra clave `yield` para devolver un valor y suspender temporalmente la ejecución de la función. La **sintaxis** de una función generadora en Python es **similar** a una función regular, pero con la adición de la declaración `yield`.

Sintaxis de una función generadora en Python:

```python 
def count_up_to(n):
    i = 1
    while i <= n:
        yield i
        i += 1
```

En este ejemplo, la función generadora `count_up_to()` genera una secuencia de números desde `1` hasta un valor dado `n`. Cuando se llama, devuelve un objeto generador sobre el cual se puede iterar para obtener el valor `next` en la secuencia.

Otro ejemplo de una función generadora es la función `string_generator()` que toma una cadena como entrada y devuelve cada carácter de la cadena uno a la vez utilizando la instrucción yield.

```python 
def string_generator(string):
    for char in string:
        yield char
```

La función generadora `string_generator()` crea un nuevo objeto generador que produce un carácter a la vez a partir de la cadena de entrada. La instrucción yield se utiliza para pausar temporalmente la ejecución de la función y devolver el carácter actual antes de reanudar la ejecución.

## Entendiendo la Instrucción `yield` en las Funciones Generadoras

La función generadora en Python es un tipo especial de función de Python que puede devolver un objeto iterador. Estos objetos iteradores se pueden utilizar para generar una secuencia de valores sobre la marcha, en lugar de calcularlos todos a la vez y almacenarlos en una lista. La instrucción yield es una parte crucial de las funciones generadoras y permite que la función produzca un valor y pausar temporalmente su ejecución.

### Ejemplo 1: Función Generadora Simple en Python

```python 
def simple_generator():
    yield 'Hello'
    yield 'World'
    yield '!'
```

En este ejemplo, la función `simple_generator()` tiene tres declaraciones de `yield`, las cuales producirán tres valores: `Hello`, `World`, y `!`. Cuando la función es llamada, no ejecuta inmediatamente su código; en su lugar, devuelve un objeto iterador. Cada vez que se llama al método `__next__()` del iterador, la función ejecutará hasta que alcanza una declaración de `yield`. En ese punto, la función pausará su ejecución y devolverá el valor al llamador. La próxima vez que se llame al método `__next__()` del iterador, la función reanudará la ejecución donde se quedó y continuará hasta que alcance la siguiente declaración de `yield` o el final de la función.

### Ejemplo 2: Función Generadora con Parámetros en Python

```python 
def even_numbers(maximum):
    i = 0
    while i < maximum:
        if i % 2 == 0:
            yield i
        i += 1
```

En este ejemplo, la función generadora `even_numbers()` toma un parámetro `maximum`, indicando el número máximo de números pares a generar. La función utiliza un bucle `while` para iterar desde 0 hasta `maximum` y utiliza una sentencia `if` para verificar si el número actual es par. Si el número es par, la función cede el valor. La función continuará generando números pares hasta que haya alcanzado el límite de `maximum`, o hasta que el método `__next__()` del iterador ya no sea llamado.

En general, las funciones generadoras en Python son una herramienta poderosa para generar una secuencia de valores sobre la marcha, lo que ahorra memoria computacional y ofrece un rendimiento mejorado sobre los métodos tradicionales de generar grandes secuencias de datos.

## Diferencias entre Generadores y Funciones Regulares en Python

Las funciones generadoras en Python son un tipo especial de función que nos permite devolver un objeto iterador. La función generadora devuelve un objeto generador sobre el cual se puede iterar. Las funciones regulares, por otro lado, devuelven un valor y luego salen.

Aquí hay algunas diferencias entre las funciones Python y las funciones generadoras:

1. **Ejecución:** Una función Python regular se ejecuta hasta que alcanza el final o una declaración de retorno. Una función generadora, por otro lado, cede un valor y luego entra en un estado suspendido hasta que se solicita otro valor.

2. **Uso de Memoria:** Las funciones regulares pueden devolver una salida grande, que puede consumir mucha memoria. En contraste, las funciones generadoras usan una cantidad mínima de memoria porque calculan los valores perezosamente según se necesiten.

Aquí hay un ejemplo de una función Python regular:

```python 
def square_numbers(nums):
    result = []
    for i in nums:
        result.append(i * i)
    return result
```

Esta función recibe una lista de números como entrada y devuelve una lista de sus cuadrados.

Aquí hay un ejemplo de una función generadora en Python:

```python
def square_numbers(nums):
    for i in nums:
        yield i * i
```

Esta función generadora también toma una lista de números como entrada y genera sus cuadrados como salida.

En resumen, mientras que las funciones regulares de Python se utilizan para retornar un valor y luego salir, las funciones generadoras están destinadas a producir una secuencia de valores que pueden ser iterados.

## Casos de uso comunes para funciones generadoras

Los casos de uso comunes para funciones generadoras en Python incluyen:

1. **Analizar archivos grandes o conjuntos de datos** - Las funciones generadoras pueden usarse para leer partes de un archivo o conjunto de datos a la vez, en lugar de cargar el archivo entero en memoria de una sola vez.

2. **Generar secuencias infinitas** - Las funciones generadoras se pueden utilizar para generar secuencias infinitas de números, como la secuencia de Fibonacci, sin requerir que el programador cree una lista o arreglo grande.

### Ejemplo: Función para Leer un Archivo Grande por Partes

```python
def read_chunks(file_path, chunk_size=1024):
    with open(file_path, "r") as f:
        while True:
            chunk = f.read(chunk_size)
            if not chunk:
                break
            yield chunk
```

La función `read_chunks()` lee un archivo en bloques de tamaño `chunk_size` y proporciona cada bloque hasta que se alcanza el final del archivo. Esto permite al programador procesar archivos grandes sin cargar el archivo completo en la memoria.

## Técnicas Avanzadas para Trabajar con Funciones Generadoras

Al utilizar las **técnicas avanzadas** discutidas a continuación, puedes **manipular** y **optimizar** la salida de las funciones generadoras en tu código.

### Ejecución Perezosa

Uno de los principales beneficios de las funciones generadoras es la **capacidad de retrasar la ejecución sobre la marcha** hasta que la salida sea realmente necesaria. Esto puede mejorar significativamente el rendimiento de tu código al evitar la necesidad de generar y almacenar toda la salida en la memoria.

```python3
def fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

gen = fibonacci(10) # Does not execute any code.
for num in gen:
    print(num) # Executes code as needed.
```

### Hilos con Generadores

Incluso puedes **combinar generadores con hilos** para ejecutar código **asincrónicamente**, permitiendo que **múltiples procesos** se ejecuten simultáneamente y mejorando aún más el rendimiento de tu código.

```python 
from threading import Thread
import time

def countdown(num):
    print(f"Starting countdown for {num}")
    for i in range(num, 0, -1):
        print(i)
        time.sleep(1)

def generate_counts():
    for i in range(5, 0, -1):
        yield Thread(target=countdown, args=(i,))

threads = list(generate_counts())
for thread in threads:
    thread.start()

for thread in threads:
    thread.join()
```

En este ejemplo, creamos una función generadora que crea múltiples hilos usando el módulo `Thread` en Python. La función `countdown` se ejecuta dentro de cada hilo generado, contando hacia atrás de manera asincrónica desde el valor especificado. Al utilizar funciones generadoras y hilos juntos, podemos crear código más eficiente y performante que aprovecha varios procesadores simultáneamente.

## Mejores Prácticas y Consejos para Escribir Funciones Generadoras Eficientes y Efectivas

1. **Usa una función generadora en lugar de una comprensión de lista o bucle**, cuando generes grandes secuencias de datos. Esto se debe a que una función generadora produce valores sobre la marcha, mientras que una comprensión de lista o bucle crea toda la secuencia en memoria antes de devolverla.

2. **Usa la palabra clave `yield` en lugar de `return` al producir valores** en una función generadora. Esto permite que la función pause la ejecución y devuelva un valor, sin terminar la función. La función puede luego reanudarse desde donde se dejó más adelante.

3. **Usa la función `next()`** para avanzar a través de la secuencia generada por una función generadora. Esta función recupera el siguiente valor producido por la función y mueve hacia adelante el estado de ejecución de la función.

4. **Usa la función `send()`** para enviar un valor de vuelta a una función generadora y reanudar su ejecución. Esta función permite que un código cliente pase valores a una función generadora, que luego puede usar esos valores para producir nuevos valores.

### Ejemplo: Una Función Generadora que Produce Valores en una Secuencia Geométrica

```python3
def geometric_sequence(start, factor):
    value = start
    while True:
        yield value
        value *= factor

# Usage:
g = geometric_sequence(2, 3)
print(next(g))  # Prints 2
print(next(g))  # Prints 6
print(next(g))  # Prints 18
print(next(g))  # Prints 54
print(next(g))  # Prints 162
# ...

```

Por ejemplo, la función generadora produce una secuencia infinita de valores. Sin embargo, la palabra clave `yield` permite que la función **produzca valores a pedido**, y el código cliente puede consumir estos valores uno a la vez, **sin almacenar toda la secuencia en memoria**.
