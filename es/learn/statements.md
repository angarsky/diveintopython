> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/statements

En Python, las declaraciones son instrucciones o comandos que escribes para realizar acciones o tareas específicas. Son los bloques de construcción de un programa de Python.

## ¿Qué es una Declaración en Python?

Una [declaración](https://en.wikipedia.org/wiki/Statement_(computer_science)) es una línea de código que realiza una acción específica. Es la unidad más pequeña de código que puede ser ejecutada por el intérprete de Python.

### Declaración de Asignación

```python
x = 10
```

En este ejemplo, el valor `10` se asigna a la variable `x` utilizando la declaración de asignación.

### Declaración Condicional

```python3
x = 3
if x < 5:
    print("x is less than 5")
else:
    print("x is greater than or equal to 5")
```

En este ejemplo, la declaración if-else se utiliza para verificar el valor de `x` e `imprimir` un mensaje correspondiente.

Al usar declaraciones, los programadores pueden instruir al ordenador para que realice una variedad de tareas, desde operaciones aritméticas simples hasta complejos procesos de toma de decisiones. El uso adecuado de declaraciones es crucial para escribir código Python eficiente y efectivo.

## Conjunto de Declaraciones

Aquí hay una tabla que resume varios tipos de declaraciones en Python:

| Declaración                | Descripción                                                       |
|----------------------------|-------------------------------------------------------------------|
| Declaraciones Multilínea   | Declaraciones que abarcan varias líneas usando continuación de línea o llaves.|
| Declaraciones Compuestas   | Declaraciones que contienen otras declaraciones (por ejemplo, [if](/es/learn/statements/if.md), while, for).   |
| Declaraciones Simples      | Declaraciones básicas independientes que realizan una sola acción.          |
| Declaraciones de Expresión | Declaraciones que evalúan y producen un valor.                      |
| Declaración `pass`           | Una declaración de marcador de posición que no hace nada.                        |
| Declaración `del`            | Se usa para eliminar referencias a objetos.                              |
| Declaración `return`         | Termina una función y devuelve un valor (opcional).              |
| Declaración `import`         | Importa módulos o objetos específicos de módulos.                  |
| Declaraciones `continue` y `break` | Declaraciones de control de flujo utilizadas en bucles (`continue` salta a la próxima iteración, `break` sale del bucle). |

Tenga en cuenta que esta tabla proporciona una breve visión general de cada tipo de declaración, y puede haber detalles y variaciones adicionales para cada declaración.

## Declaraciones Multilínea

Las declaraciones multilínea son una forma conveniente de escribir código largo en Python sin que este se vea desordenado. Te permiten escribir varias líneas de código como una sola declaración, facilitando que los desarrolladores lean y comprendan el código. Aquí hay dos ejemplos de declaraciones multilínea en Python:

1. Usando barra invertida:

```python
total = 10 + \
        20 + \
        30
print(total) ### Output

```

2. Usando paréntesis:

```python
fruit_list = ('Apple',
              'Mango',
              'Banana',
              'Orange')
print(fruit_list) ### Output

```

## Declaraciones Simples

Las declaraciones simples son la unidad más pequeña de ejecución en el lenguaje de programación Python y no contienen expresiones lógicas o condicionales. Por lo general, están compuestas por una sola línea de código y pueden realizar operaciones básicas, como asignar valores a variables, imprimir valores o llamar a funciones.

Ejemplos de declaraciones simples en Python:

```python
### Assigning a value to a variable

x = 5

### Printing out a value

print(x)
```

Las declaraciones simples son esenciales para programar en Python y a menudo se utilizan en combinación con declaraciones más complejas para crear programas y aplicaciones robustas.

## Declaraciones de expresión

Las declaraciones de expresión en Python son líneas de código que evalúan y producen un valor. Se utilizan para asignar valores a variables, llamar funciones y realizar otras operaciones que producen un resultado.

```python
x = 5
y = x + 3
print(y)
```

En este ejemplo, asignamos el valor `5` a la variable `x`, luego sumamos `3` a `x` y asignamos el resultado (`8`) a la variable `y`. Finalmente, hacemos `print` del valor de `y`.

```python3
def square(x):
    return x * x

result = square(5)
print(result)
```

En este ejemplo, definimos una función `square` que toma un argumento (`x`) y devuelve su cuadrado. Luego llamamos a la función con el argumento `5` y asignamos el resultado (`25`) a la variable `result`. Finalmente, hacemos `print` del valor de `result`.

En general, las sentencias de expresión son una parte esencial de la programación en Python y permiten la ejecución de operaciones matemáticas y computacionales.

## La sentencia `assert`

La sentencia `assert` en Python se utiliza para probar condiciones y desencadenar un error si la condición no se cumple. A menudo se utiliza para depuración y propósitos de prueba.

```python
assert condition, message
```

Donde `condition` es la expresión que se prueba, y `message` es el mensaje de error opcional que se muestra cuando la condición no se cumple.

```python
x = 5
assert x == 5, "x should be 5"
```

En este ejemplo, la instrucción `assert` prueba si `x` es igual a `5`. Si se cumple la condición, la instrucción no tiene efecto. Si la condición no se cumple, se generará un error con el mensaje `x should be 5`.

```python
def divide(x, y):
    assert y != 0, "Cannot divide by zero"
    return x / y
```

En este ejemplo, la afirmación `assert` prueba si `y` no es igual a `0` antes de realizar la división. Si se cumple la condición, la división procede con normalidad. Si la condición no se cumple, se generará un error con el mensaje `Cannot divide by zero`.

En general, las afirmaciones `assert` son una herramienta útil en Python para la depuración y pruebas, ya que pueden ayudar a detectar errores desde el principio. También se pueden desactivar fácilmente en el código de producción para evitar cualquier sobrecarga innecesaria.

## La sentencia `try`

La sentencia `try` en Python se utiliza para capturar excepciones que pueden ocurrir durante la ejecución de un bloque de código. Asegura que incluso cuando ocurre un error, el código no deja de ejecutarse.

```python
try:
    # Block of code to be attempted
except ExceptionType:
    # Block of code to be executed if the try block throws an exception
else:
    # Block of code to be executed if no exception was thrown in the try block
finally:
    # Block of code that is always executed regardless of whether an exception was thrown or not
```

### Ejemplos de Procesamiento de Errores

```python3
try:
    x = 1/0
except ZeroDivisionError:
    print("Division by zero is not allowed")

# Output:

# Division by zero is not allowed
```

```python
try:
    f = open("myfile.txt")
    f.write("This is a test file")
except IOError:
    print("Error: File not found or could not be written")
else:
    print("File written successfully")
finally:
    f.close()
# Output:

# Error: File not found or could not be written
```
