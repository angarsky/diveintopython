> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/statements/if

En Python, la sentencia `if` se utiliza para la ejecución condicional de código. Te permite especificar una condición y ejecutar un bloque de código solo si esa condición se evalúa como `True`.

## Cómo usar la sentencia `if` en Python

Las sentencias `if` en Python son declaraciones condicionales utilizadas para ejecutar un bloque de código basado en ciertas condiciones. La sintaxis básica de una sentencia `if` es:

```python
if 1 > 2:
   ##### Execute block of code if the condition is true
    pass

```

Una declaración `if` también puede combinarse con una declaración `else` para ejecutar diferentes bloques de código basados en si la `condition` es verdadera o falsa. La sintaxis para una declaración if-else es:

```python3
if 2 > 1:
   ##### Execute block of code if the condition is true
    print('True')
else:
   ### Execute block of code if the condition is false
    print('False')

```

### Números Pares

```python3
num = 4
if num % 2 == 0:
    print("Even")
else:
    print("Odd")
```

### Máximo de Dos Números

```python3
num1 = 10
num2 = 20
if num1 > num2:
    print("num1 is greater than num2")
else:
    print("num2 is greater than num1")

```

Utiliza declaraciones `if` en Python para controlar el flujo de tu programa y tomar decisiones basadas en condiciones específicas.

## Operador Ternario

Las declaraciones ternarias proporcionan una forma concisa de escribir una declaracion `if` en una línea. Es una declaración `if` inline que consta de tres operandos: una condición, una expresión a ejecutar si la condición es verdadera y una expresión a ejecutar si la condición es falsa.

### Sintaxis de la Declaración Ternaria `if`

```python
<expression_if_true> if <condition> else <expression_if_false>
```

### Verifica si un número es impar o par

```python3
num = 7
result = "Even" if num % 2 == 0 else "Odd"
print(result)  # Output: Odd
```

En el ejemplo anterior, la declaración ternaria verifica si el número es par o impar con **operador ternario** `if`. Si el número es divisible por 2 (es decir, el resto de la división es cero), la variable `result` será asignada con la cadena `'Even'`, y si no es divisible por 2 (es decir, el resto es uno), la variable `result` será asignada con la cadena `'Odd'`.

### Comprobar si una lista está vacía o no

```python3
my_list = [1, 2, 3]
result = "Not Empty" if my_list else "Empty"
print(result)  # Output: Not Empty
```

En el ejemplo anterior, la declaración ternaria verifica si la variable `my_list` está vacía o no. Si `my_list` no está vacía, la variable `result` será asignada con la cadena `Not Empty`, y si está vacía, la variable `result` será asignada con la cadena `Empty`.

En general, las declaraciones ternarias proporcionan una manera limpia y eficiente de escribir declaraciones condicionales en Python.

## La declaración `if` entre dos números

Para verificar si un número está entre dos números en Python, puedes usar una declaración `if` con operadores lógicos. Aquí hay dos ejemplos:

```python3
x = 5
if 2 <= x <= 8:
    print("x is between 2 and 8")
else:
    print("x is not between 2 and 8")
```

En este ejemplo, la sentencia `if` verifica si `x` está entre `2` y `8` (inclusive). Si `x` está entre `2` y `8`, se ejecutará la sentencia `print(`x is between 2 and 8`)`, de lo contrario, se ejecutará `print(`x is not between 2 and 8`)`.

```python3
y = 10
if not (y < 2 or y > 8):
    print("y is between 2 and 8")
else:
    print("y is not between 2 and 8")
```

En este ejemplo, la sentencia `if` verifica si `y` **no** es menor que `2` o **no** es mayor que `8`. Si `y` está entre `2` y `8`, la sentencia `print(y is between 2 and 8)` se ejecutará, de lo contrario, `print(y is not between 2 and 8)` se ejecutará.

Usa estos ejemplos para verificar si tu número está entre dos números en Python.

## La sentencia `if` en una Comprensión de Listas

En Python, una sentencia `if` se puede usar en la comprensión de listas para filtrar solo los valores que cumplen con una condición específica. Esto es extremadamente útil para crear una nueva lista que contiene solo los valores deseados sin necesidad de escribir un bucle.

```python3
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
even_numbers = [num for num in numbers if num % 2 == 0]
print(even_numbers)
```

Este código crea una nueva lista llamada `even_numbers` que contiene solo los números pares de la lista original `numbers`.

```python3
words = ["apple", "banana", "cherry", "date"]
short_words = [word for word in words if len(word) < 6]
print(short_words)
```

Este ejemplo utiliza la comprensión de listas para crear una nueva lista llamada `short_words` que solo contiene palabras con menos de seis caracteres de la lista original `words`.

Al usar la instrucción `if` en la comprensión de listas, podemos reducir drásticamente la cantidad de código necesario para crear una nueva lista filtrada. Esto puede resultar en un código más legible y conciso que es más fácil de mantener.

## Sentencias `if` Anidadas  

Las sentencias If anidadas se usan en la programación de Python cuando se necesitan verificar dos o más condiciones simultáneamente. Es una declaración condicional dentro de otra, creando una estructura jerárquica de toma de decisiones.

```python3
age = 18
if age >= 18:
    print("You are legally an adult")
    if age == 18:
        print("Congratulations on turning 18!")
else:
    print("You are not yet an adult")
```

En este ejemplo, la primera sentencia `if` verifica si la `age` es mayor o igual a 18. Si es `True`, la segunda sentencia `if` verifica si `age` es igual a 18. Si ambas condiciones son `True`, imprime el mensaje de felicitaciones. Si no, solo imprime el mensaje de ser legalmente adulto.

```python3
x = 5
y = 10
z = 15
if x > y:
    if x > z:
        print("x is the largest")
    else:
        print("z is the largest")
else:
    if y > z:
        print("y is the largest")
    else:
        print("z is the largest")
```

En este ejemplo, hay tres variables, y los `if` anidados comprueban cuál de ellas es la mayor. Si `x` es mayor que `y`, entonces verifica si `x` es mayor que `z`. Si es `True`, imprime `x es el mayor`. Si la primera condición es `False`, entonces verifica si `z` es mayor que `y`. Si es `True`, imprime `z es el mayor`. Si ninguna de estas condiciones es `True`, entonces `y` debe ser el mayor, e imprime `y es el mayor`.

Estos son solo ejemplos simples para ilustrar el concepto de sentencias If anidadas en Python y cómo se pueden utilizar en la programación.

## La sentencia `elif` en Python

La sentencia `elif` en Python es una sentencia condicional que te ayuda a verificar múltiples condiciones en un programa. Se utiliza en conjunto con las sentencias `if` y `else`.

### Sintaxis

```python
if condition:
    statement(s)
elif condition:
    statement(s)
else:
    statement(s)
```

Aquí, `condition` es una expresión booleana que se evalúa en `True` o `False`. Si `condition` es `True`, entonces se ejecutan las instrucciones dentro del bloque `if`. Si `condition` es `False`, entonces se ejecutan las instrucciones dentro del bloque `elif`. Si ninguna de las condiciones es `True`, entonces se ejecutan las instrucciones dentro del bloque `else`.

```python3
age = 25

if age < 18:
    print("You are a minor")
elif age >= 18 and age <= 65:
    print("You are an adult")
else:
    print("You are a senior citizen")
```

En este ejemplo, estamos verificando la `age` de una persona. Si la `age` es menor de 18, imprime `You are a minor`. Si la `age` está entre 18 y 65, imprime `You are an adult`. Si la `age` es mayor de 65, imprime `You are a senior citizen`.

```python3
score = 80

if score >= 90:
    print("You have secured an A grade")
elif score >= 80 and score < 90:
    print("You have secured a B grade")
elif score >= 70 and score < 80:
    print("You have secured a C grade")
elif score >= 60 and score < 70:
    print("You have secured a D grade")
else:
    print("You have failed the exam")
```

En este ejemplo, estamos verificando el `score` de un estudiante. Dependiendo del `score`, imprime diferentes mensajes. Si el `score` es mayor o igual a 90, imprime `You have secured an A grade`. Si el `score` está entre 80 y 89, imprime `You have secured a B grade`. Si el `score` está entre 70 y 79, imprime `You have secured a C grade`. Si el `score` está entre 60 y 69, imprime `You have secured a D grade`. Si el `score` es menos de 60, imprime `You have failed the exam`.

## Múltiples declaraciones `if`

En Python, se pueden utilizar múltiples declaraciones `if` para verificar múltiples condiciones en un solo bloque de ejecución. Hay dos maneras de escribir múltiples declaraciones `if` en Python: usando múltiples declaraciones `if` y utilizando una declaración `if` multilínea.

### Ejemplo de Múltiples Declaraciones `if`

La sintaxis para usar múltiples declaraciones `if` es la siguiente:

```python
if condition1:
    # do something
if condition2:
    # do something else
if condition3:
    # do something else again
```

Aquí, cada sentencia `if` verifica una condición separada y ejecuta el bloque de código correspondiente si la condición es verdadera.

```python3
x = 5
y = 8

if x > 0:
    print("x is a positive number")

if y < 10:
    print("y is less than 10")

# Output:
# 
# x is a positive number
# y is less than 10
```

### Otro ejemplo de la sentencia `if` multilínea

La sintaxis para usar una sentencia `if` multilínea es la siguiente:

```python
if condition1 and \
   condition2 and \
   condition3:
   # do something
```

Aquí, las barras invertidas (`\`) indican que la declaración `if` continúa en la línea siguiente.

```python3
x = 5
y = 8

if x > 0 and \
   y < 10:
    print("x is a positive number and y is less than 10")

# Output:
# 
# x is a positive number and y is less than 10
```

En general, ambos métodos son útiles para verificar múltiples condiciones en Python, pero las declaraciones `if` en múltiples líneas pueden hacer que el código sea más legible y fácil de manejar.
