> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/statements/operators

En este artículo, exploraremos los diferentes tipos de operadores en Python y cómo se utilizan en la programación.

## El operador `in`

El operador `in` en Python se utiliza para verificar si un valor está presente en una secuencia o no. Devuelve un valor Booleano `True` si el valor se encuentra en la secuencia y `False` en caso contrario.

```python3
my_list = [1, 2, 3, 4, 5]
x = 3

if x in my_list:
    print("Element is present in the list")
else:
    print("Element is not present in the list")

# Output:
# 
# Element is present in the list
```

```python3
my_string = "Hello World"
x = "o"

if x in my_string:
    print("Substring is present in the string")
else:
    print("Substring is not present in the string")

# Output:
# 
# Substring is present in the string
```

Con el operador `in`, podemos verificar fácilmente la existencia de elementos en una lista, tupla o cualquier otro tipo de datos de secuencia en python. También ayuda a simplificar el código y hacerlo más legible.

## Cómo Usar el Operador `and` en `if`

El operador `and` en Python se usa en las declaraciones `if` para probar si múltiples condiciones son verdaderas. Devuelve `True` si ambas condiciones son verdaderas, y `False` en caso contrario. Aquí hay dos ejemplos:

```python3
x = 5
y = 10
if x > 0 and y > 0:
    print("Both x and y are positive")
else:
    print("At least one of x and y is not positive")
```

En este ejemplo, el operador `and` se utiliza para determinar si tanto `x` como `y` son positivos. Dado que `x` y `y` son mayores que 0, la instrucción `if` se evalúa como `True` y se imprime `Both x and y are positive`.

```python3
name = "John"
age = 25
if name == "John" and age == 25:
    print("Your name is John and you are 25 years old")
else:
    print("You are not John or you are not 25 years old")
```

En este ejemplo, el operador `and` se utiliza para verificar si el `name` es `John` y si la `age` es 25. Dado que ambas condiciones son verdaderas, la sentencia `if` se evalúa como `True` y se imprime `Tu nombre es John y tienes 25 años`.

En resumen, el operador `and` en Python es una herramienta poderosa en las sentencias `if` que te permite verificar múltiples condiciones a la vez. Puede ser muy útil en programas complejos que requieren una extensa comprobación de condiciones.

## El Operador `or`

El operador `or` en Python es un operador lógico que devuelve `True` si alguno de los dos operandos es `True`, y `False` si ambos operandos son `False`. Se puede utilizar en sentencias condicionales o expresiones booleanas.

### El Operador `or` en una Sentencia Condicional

```python3
age = 25
if age < 18 or age > 60:
    print("You are not eligible for this job")
else:
    print("You are eligible for this job")

# Output: `You are eligible for this job`
```

En este ejemplo, el operador `or` se utiliza para verificar si la variable `age` es menor de 18 o mayor de 60. Si alguna de las condiciones es `True`, imprime un mensaje diciendo que la persona no es elegible para el trabajo. De lo contrario, imprime un mensaje diciendo que la persona es elegible para el trabajo.

### El operador `or` en una Expresión Booleana

```python3
x = 5
y = 10
result = x > 3 or y < 9
print(result)
# Output: `True`
```

En este ejemplo, el operador `or` se utiliza en una expresión Booleana para verificar si `x` es mayor que 3 o `y` es menor que 9. Dado que `x` es mayor que 3, la expresión se evalúa como `True` y el `result` se imprime como `True`.

En general, el operador `or` en Python proporciona una manera simple de verificar si al menos una de las condiciones en una expresión Booleana es `True`.

## El operador `not`

El operador `not` en Python se utiliza para invertir el estado lógico de una expresión Booleana. Devuelve True si la expresión es `False` y `False` si la expresión es True. Aquí hay dos ejemplos:

### Cómo usar el `not` con una variable Booleana

```python
flag = False
print(not flag)

```

### El `not` con un Operador de Comparación

```python
x = 10
y = 5
print(not x > y) ### Output

```

En general, el operador `not` es una herramienta útil en Python para cambiar el valor de verdad de una expresión booleana. Se puede utilizar con variables booleanas o en conjunto con operadores de comparación.

## Operador No Igual

El operador no igual en Python se usa para comparar dos valores y devuelve `True` si no son iguales, y `False` si son iguales. El símbolo utilizado para el operador no igual es `!=`.

```python
value1 != value2
```

```python3
a = 5
b = 3
if a != b:
    print("a is not equal to b")

# Output:
# 
# a is not equal to b
```

```python3
name1 = "John"
name2 = "Mary"
if name1 != name2:
    print("Names are not equal")
# Output:
# 
# Names are not equal
```

Al usar el operador de no igualdad en Python, puedes comparar fácilmente dos valores y obtener el resultado deseado. Este operador es útil en muchas situaciones donde necesitas verificar si dos valores no son iguales.

## División

En Python, hay tres tipos de operadores de división: el operador de barra inclinada simple `/`, el operador de doble barra inclinada `//`, y el operador de porcentaje `%`.

El operador `/` realiza una división regular y devuelve una respuesta en forma de número flotante, mientras que el operador `//` realiza una división entera y devuelve el valor entero del cociente. El operador `%` devuelve el resto de la división. Otro nombre del operador `%` es **operador módulo**

```python3
x = 10
y = 3
result = x / y
print(result)
```

Salida: `3.3333333333333335`

```python3
x = 10
y = 3
floor_division = x // y 
# Use modulo operator
remainder = x % y 
print(floor_division)
print(remainder)

# Output: 
# 
# 3
# 1
```

En general, comprender estos operadores y sus diferencias es importante en la programación de Python al tratar con operaciones matemáticas.

## El operador `:`

El operador `:` en Python se utiliza para segmentar secuencias como listas, tuplas y cadenas. Te permite extraer una porción de una secuencia especificando un índice de inicio y fin separados por dos puntos. También puedes especificar un tamaño de paso. Este operador es muy útil al trabajar con datos en Python.

```python3
### create a list

my_list = [0, 1, 2, 3, 4, 5]

### slice the list from index 2 to index 4

sliced_list = my_list[2:5]

### print the sliced list

print(sliced_list)

# Output:
# 
# [2, 3, 4]
```

```python
### create a string

my_string = "Hello world!"

### slice the string to get characters from index 1 to index 4

sliced_string = my_string[1:5]

### print the sliced string

print(sliced_string)

# Output:
# 
# ello
```

El operador `:` es una herramienta esencial en Python para trabajar con secuencias. ¡Su sintaxis flexible hace que cortar y picar datos sea muy fácil!

## Operador Booleano en Python

Los operadores booleanos en Python se utilizan para evaluar condiciones verdaderas o falsas. Estos operadores incluyen `and`, `or` y `not`. En Python, las operaciones booleanas se crean con las palabras clave `and`, `or` y `not`.

```python3
x = 5
y = 10
z = 15

if x < y and z > y:
    print("Both conditions are true")
# Output: `Both conditions are true`
```

```python3
x = 5
y = 10
z = 15

if x < y or z < y:
    print("At least one condition is true")

# Output: `At least one condition is true`
```

El uso de operadores booleanos en Python proporciona flexibilidad para evaluar múltiples condiciones y tomar decisiones. Mediante el uso de operaciones booleanas, las declaraciones complejas pueden simplificarse y codificarse en menos líneas de código.

## Sobrecarga de Operadores

En Python, la Sobrecarga de Operadores nos permite definir el comportamiento de los operadores de una manera personalizada para una clase o un objeto específico. Esto ayuda a mejorar la claridad y legibilidad del código. Python admite la sobrecarga de operadores para la mayoría de los operadores integrados como `+`, `-`, `/`, `//`, `%`, `&`, `|`, `^`, `>>`, `<<`, `<`, `>`, `<=`, `>=`, `==`, `!=`, y más.

Aquí hay dos ejemplos de código que demuestran la sobrecarga de operadores en Python:

```python
class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width

    def __str__(self):
        return f"Rectangle({self.length}, {self.width})"

    def __add__(self, other):
        return Rectangle(self.length + other.length, self.width + other.width)

r1 = Rectangle(4, 3)
r2 = Rectangle(2, 5)
print(r1 + r2)  ### Output

```

En el código anterior, hemos definido un comportamiento personalizado para el operador '+' para la clase `Rectangle`. Cuando sumamos dos objetos `Rectangle` usando el operador '+', se creará un nuevo objeto `Rectangle` con la suma de la `length` y la `width` de ambos rectángulos.

```python3
class Book:
    def __init__(self, title, author, pages):
        self.title = title
        self.author = author
        self.pages = pages

    def __lt__(self, other):
        return self.pages < other.pages

b1 = Book("Python for Beginners", "John Smith", 300)
b2 = Book("Advanced Python", "David Johnson", 500)
print(b1 < b2)  ### Output

```

En este código, hemos definido un comportamiento personalizado para el operador `<` para la clase `Book`. Compara dos libros basándose en el número de `pages` que tienen. Si el número de `pages` en el objeto `self` es menor que el número de `pages` en el objeto `other`, retornará `True`.

En general, la sobrecarga de operadores en Python te ayuda a escribir código más legible y expresivo. Hace que tu código se vea más limpio y fácil de entender.

## Operadores Matemáticos en Python

Python proporciona una variedad de operadores matemáticos que se pueden usar para realizar operaciones matemáticas en Python. Estos operadores incluyen adición, sustracción, multiplicación, división y módulo.

### Operador de Adición

El operador de adición en Python está representado por un `+`. Se utiliza para sumar dos o más números, como se muestra a continuación:

```python3
# Adding two numbers
num1 = 10
num2 = 20
result = num1 + num2 
print(result)  # Output: 30

# Adding more than two numbers
result = num1 + num2 + 5
print(result)  # Output: 35
```

### Operador de División

El operador de división en Python está representado por un `/`. Se utiliza para dividir un número por otro número y devuelve un valor de punto flotante como resultado:

```python3
# Division of two numbers
num1 = 10
num2 = 2
result = num1 / num2 
print(result)  # Output: 5.0  (float)

# Division with remainder
num1 = 7
num2 = 3
result = num1 / num2 
remainder = num1 % num2
print(result)  # Output: 2.3333333333333335 (float)
print(remainder) # Output: 1 (int)
```

Python ofrece muchos otros operadores matemáticos como la resta, la multiplicación, el módulo y más. Al usar estos operadores, puedes realizar operaciones matemáticas complejas en tus programas de Python.

## Operadores de Bits en Python

Los operadores de bits se usan en Python para realizar operaciones a nivel de bits sobre enteros. Estas operaciones trabajan manipulando bits individuales de la representación binaria de los enteros. Esto es útil en la programación de bajo nivel, como la optimización de código o el trabajo con hardware.

### Cómo usar operadores de bits en Python

Hay seis operadores de bits disponibles en Python. Estos son:

- `&` (AND a nivel de bits): Este operador devuelve un nuevo entero cuyos bits se establecen en 1 solo si ambos bits correspondientes de los operandos son 1.
- `|` (OR a nivel de bits): Este operador devuelve un nuevo entero cuyos bits se establecen en 1 si algún bit correspondiente de los operandos es 1.
- `^` (XOR a nivel de bits): Este operador devuelve un nuevo entero cuyos bits se establecen en 1 solo si uno de los bits correspondientes de los operandos es 1.
- `~` (NOT a nivel de bits): Este operador devuelve el complemento del operando, es decir, invierte todos los bits del operando.
- `<<` (desplazamiento a la izquierda): Este operador desplaza los bits del operando hacia la izquierda por el número especificado de bits. Los bits desplazados se llenan con 0.
- `>>` (desplazamiento a la derecha): Este operador desplaza los bits del operando hacia la derecha por el número especificado de bits. Los bits desplazados se llenan con 0 para números positivos y con 1 para números negativos.

### El Operador `&`

```python
x = 5      

y = 3      

z = x & y  ### in binary

print(z)   ### Output

```

En este ejemplo, utilizamos el operador AND a nivel de bits para encontrar los bits comunes entre `x` y `y`. El resultado es `1`, que es el único bit que está configurado en 1 en ambos `x` y `y`.

### El operador `<<`

```python
x = 7      

y = 2     

z = x << 1 ### in binary

print(z)   ### Output 
```

En este ejemplo, utilizamos el operador de desplazamiento hacia la izquierda para desplazar los bits de `x` hacia la izquierda una posición. El resultado es `14`, que es `1110` en binario. El bit desplazado a la izquierda se rellena con `0`.

En general, las operaciones de bits en Python pueden ser útiles para optimizar el código y trabajar con números a bajo nivel.
  
## Orden de los Operadores  

En Python, al igual que en matemáticas, hay un orden específico en el que se evalúan los operadores. Esto se conoce como el orden de las operaciones. La precedencia de operadores en Python es la siguiente:

1. Paréntesis
2. Exponenciación
3. Multiplicación, División y Módulo (de izquierda a derecha)
4. Suma y Resta (de izquierda a derecha)

Es importante tener en cuenta este orden al escribir expresiones en Python.

```python

result = 5 + 3 * 2 # first 3*2 will be evaluated, then 5 will be added to the result
print(result) # output: 11

result = (5 + 3) * 2 # first 5+3 will be evaluated in the parentheses, then the result will be multiplied by 2
print(result) # output: 16
```

En el primer ejemplo, la operación de multiplicación se evalúa antes que la operación de adición, conforme al orden de operaciones. En el segundo ejemplo, la operación de adición dentro de los paréntesis se evalúa primero, de nuevo conforme al orden de operaciones. Entender el orden de los operadores en Python puede ayudar a evitar errores y producir resultados más precisos.

## Operador Walrus

El Operador Walrus es una nueva característica disponible en Python 3.8 y versiones posteriores. Proporciona una forma concisa y eficiente de asignar valores a variables en ciertos escenarios.

### Entendiendo el Operador Walrus

El Operador Walrus se denota con el símbolo := y se utiliza para asignar valores a variables en una sola expresión. Es particularmente útil en escenarios donde las llamadas repetidas a funciones o métodos son intensivas en recursos, ya que puede ayudar a reducir estas llamadas.

### Operador Walrus con Declaración 'if'

```python

if (a:=2+3) > 4:
    print(f"{a} is greater than 4")
else:
    print(f"{a} is less than or equal to 4")
```

### Operador Walrus con Bucle 'while'

```python
import random

while (num:=random.randint(1,10)) != 3:
     print(num)
```

En ambos ejemplos anteriores, el Operador Morsa se utiliza para asignar valores a la variable en la misma expresión que la declaración condicional. Esto hace que el código sea más conciso y fácil de leer.

## Operador de Exponente

El operador de exponenciación en Python está representado por `**` y se utiliza para elevar un número a una potencia. Es un operador binario que toma dos operandos; el primero siendo la base y el segundo el exponente.

Aquí hay dos ejemplos de código para demostrar el uso del operador de exponenciación en Python:

```python3
num = 2
exp = 3
result = num ** exp
print(result)  

```

```python3
num = 2
exp = 3
num **= exp
print(num)  

```

En ambos ejemplos, el operador `**` se utiliza para calcular el `result` de elevar un número a una potencia. En el segundo ejemplo, el `result` se asigna a la variable `num` utilizando el operador de asignación `**=` para un código más conciso. Al usar el operador de exponenciación, puedes realizar fácilmente operaciones de exponenciación en tu código Python.
