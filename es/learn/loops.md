> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/loops

Hay dos tipos de bucles en Python: bucles `for` y bucles `while`.

El bucle `for` se utiliza para iterar sobre una secuencia (que puede ser una lista, una tupla, un conjunto, un diccionario, una cadena u otro objeto iterable) y ejecutar un bloque de código para cada elemento en la secuencia. El bucle `while` se utiliza para ejecutar un bloque de código repetidamente mientras una condición determinada sea `true`. En el bucle `while`, la condición se verifica al principio de cada iteración, y se sale del bucle cuando la condición se vuelve falsa. Es importante asegurarse de que la condición eventualmente se vuelva falsa, de lo contrario, el bucle seguirá ejecutándose indefinidamente, lo cual se denomina un bucle infinito.

## Sintaxis del bucle `for` en Python

Un ejemplo de cómo usar el `for` para iterar a través de una lista en Python:

```python3
cars = ["bmw", "audi", "renault"]
for car in cars:
    print(car)
```

En este ejemplo, tenemos una lista de coches, y queremos imprimir cada coche en una nueva línea. Utilizamos el bucle `for` para iterar sobre cada elemento en la lista, y para cada elemento, lo imprimimos en la consola usando la función `print`.

### Bucle `for` en Línea

En este ejemplo, tenemos una lista de números, y queremos crear una nueva lista que contenga el cuadrado de cada número. En lugar de usar un bucle `for` tradicional, utilizamos una comprensión de lista, que es una forma más concisa de lograr el mismo resultado.

```python3
numbers = [1, 2, 3, 4, 5]
squares = [x**2 for x in numbers]
print(squares)
```

En este caso, la expresión es `x**2`, que es el cuadrado del número actual en la iteración, y el iterable es la lista de números. El resultado de la comprensión de lista es una nueva lista que contiene el cuadrado de cada número: `[1, 4, 9, 16, 25]`.

### Bucle `for` con Índice

En este ejemplo, el `bucle` itera sobre la lista `cars` e imprime el índice y valor de cada elemento:

```python3
cars = ["bmw", "audi", "renault"]
for i in range(len(cars)):
    print(i, cars[i])
```

### Función de Potencia en Python Usando un Bucle

```python3
def power(a, b):
    pow = 1
    for i in range(b):
        pow *= a
    return pow

a = 2
b = 3
print(power(a, b))
```

## Bucles `while` en Python

Aquí tienes un ejemplo del bucle `while` que cuenta de `1` a `10`:

```python3
count = 1
while count <= 10:
    print(count)
    count += 1
```

En este ejemplo, el bucle comienza con count igual a `1`. La condición count `<= 10` es `verdadera`, por lo que el código dentro del bucle se ejecuta. Este código imprime el valor de count (que actualmente es `1`) y luego incrementa count en `1` usando el operador `+=`. Luego, el bucle verifica de nuevo la condición, que sigue siendo `verdadera` porque count ahora es `2`. Este proceso se repite hasta que count alcanza `11`, momento en el cual la condición se vuelve `falsa` y el bucle termina.

> Nota: Python no tiene un bucle `do-while` como otros lenguajes de programación. Sin embargo, puedes lograr una funcionalidad similar usando una combinación de un bucle `while` y una verificación inicial.

## Declaraciones `break` y `continue`

En Python, `break` y `continue` son palabras clave reservadas utilizadas para modificar el comportamiento de los bucles. Te permiten controlar cuándo un bucle debe terminar o saltar ciertas iteraciones basado en una condición.

### Ejemplo: Cómo `break` un bucle `for`

```python3
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        # end for loop
        break
    print(num)
```

En este ejemplo, el bucle itera sobre la lista `numbers` e imprime cada número. Sin embargo, cuando el valor de `num` es igual a `3`, la instrucción `break` termina el bucle `for`. La salida sería: `1 2`.

### Cómo usar `continue` en un bucle `for`

El `continue`, por otro lado, se utiliza para **saltarse una iteración del bucle** basándose en una condición. Cuando se encuentra, hace que la iteración actual del bucle termine y continúa con la siguiente iteración. Aquí tienes un ejemplo de cómo saltarse una iteración en el bucle `for` en Python:

```python3
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        continue
    print(num)
```

En este ejemplo, el bucle itera sobre la lista `numbers` e imprime cada número. Sin embargo, cuando el valor de `num` es igual a `3`, se ejecuta la declaración `continue`, lo que causa que la iteración actual del bucle termine y continúe con la siguiente iteración. La salida sería: `1 2 4 5`.

### Ejemplo de `continue` en un bucle `while`

Usar `continue` en un bucle `while` en Python es una forma de omitir ciertas iteraciones del bucle y proceder a la siguiente iteración. Esto puede ser útil cuando necesitas saltarte ciertos valores o condiciones en tu bucle.

```python3
i = 0
while i < 10:
    i += 1
    if i % 2 == 0:
        continue
    print(i)
```

En este ejemplo, el bucle itera sobre los números del 1 al 10. Sin embargo, cuando el valor de `i` es par, se activa la instrucción `continue`, lo que hace que el bucle salte a la siguiente iteración sin ejecutar más código en la iteración actual.

```python3
my_list = [1, 2, 3, 4, 5]
while my_list:
    val = my_list.pop()
    if val == 3:
        continue
    print(val)
```

En este ejemplo, el bucle itera sobre los valores en `my_list`. Cuando el valor de `val` es igual a 3, la sentencia `continue` hace que el bucle salte a la próxima iteración sin imprimir el valor.

## Cómo `break` un bucle `while`

Para romper un bucle `while` en Python, puedes usar la sentencia `break`. Esta sentencia es responsable de detener el bucle para que no itere más, tan pronto como se cumple una cierta condición. La sintaxis para usar `break` en un bucle `while` es la siguiente:

```python
while <condition>:
    ### statements to be executed inside the loop

    if <break-condition>:
        break
```

Aquí, `<condition>` es la condición del bucle que inicialmente decide si el bucle debe ejecutarse o no, y `<break-condition>` es una declaración condicional adicional que define la(s) condición(es) para detener el bucle. Una vez que se cumple esta condición, el bucle se termina automáticamente y el control se transfiere a la siguiente declaración después del bucle.

```python3
n = 1
while n <= 10:
    print(n)
    if n == 5:
        break
    n += 1
print("Loop Ended")

# Output:
# 
# 1
# 2
# 3
# 4
# 5
# Loop Ended
```

En este ejemplo, el bucle while va a `print` números del 1 al 5, y luego `stop` en cuanto `n == 5`. Se utiliza la instrucción `break` para lograr esto, y la salida muestra que el bucle terminó después de completar la ejecución de la condición deseada.

### Cómo Detener un Bucle Infinito en Python

```python3
while True:
    value = input("Enter a number: ")
    if value == "stop":
        break
    print(int(value) ** 2)
print("Loop Ended")

# Output:
# Enter a number: 2
# 4
# Enter a number: 5
# 25
# Enter a number: 3
# 9
# Enter a number: stop
# Loop Ended
```

En este ejemplo, el bucle `while` seguirá pidiéndole al usuario que ingrese un `number`, y calculará su cuadrado si el `input` es un `number`. Si el `input` es 'stop', el bucle se romperá y el control se transferirá a la declaración después del bucle.

Este enfoque ayuda a evitar bucles infinitos en Python, y a controlar el flujo de ejecución basado en ciertos criterios.

## Un Conteo en un Bucle `for`

Para contar en un bucle `for` en Python, puedes usar una variable contador de bucle. Esta variable lleva un registro del número de veces que se ha ejecutado el bucle `for`. Aquí hay dos ejemplos:

```python3
count = 0
for i in range(10):
    count += 1
print("The loop executed", count, "times.")
```

En este ejemplo, creamos una variable `count` y establecemos su valor inicial en 0. Luego usamos un bucle `for` para iterar 10 veces, incrementando la variable `count` en 1 cada vez. Finalmente, hacemos un `print` del número total de veces que se ejecutó el bucle.

```python3
fruits = ['apple', 'banana', 'cherry']
for i, fruit in enumerate(fruits, 1):
    print(i, fruit)
```

En este ejemplo, usamos la función incorporada `enumerate()` para iterar sobre una lista de `fruits` y sus índices. Comenzamos el índice en 1 pasando el segundo argumento a `enumerate()`. Dentro del bucle, `print` el índice y el nombre del `fruit`.

Al usar una variable de contador de bucle, puedes llevar fácilmente la cuenta de la cantidad de veces que un bucle `for` se ha ejecutado en Python. Esto puede ser útil para depurar, probar y analizar el rendimiento.

## Bucles Anidados

Los bucles anidados son bucles que se colocan dentro de otro bucle. En Python, los bucles anidados se utilizan principalmente para iterar sobre matrices, matrices y listas multidimensionales. Son útiles para resolver problemas que involucran repetir una tarea para cada elemento de una estructura anidada.

### Bucles `for` Anidados en Python

El tipo más común de bucle anidado en Python es el bucle for anidado. Este bucle se utiliza para iterar sobre elementos en una estructura anidada usando dos o más declaraciones `for`.

#### Ejemplo Simple de Bucles `for` Anidados

```python3
numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

for row in numbers:
    for num in row:
        print(num)
```

En este ejemplo, tenemos una matriz de 3 por 3 que está representada por una lista multidimensional. El bucle anidado for itera sobre los elementos de la matriz e imprime cada número en una nueva línea.

### Bucles `while` Anidados en Python

Los bucles `while` anidados en Python utilizan uno o más bucles internos que repiten el mismo proceso varias veces. Se utilizan para iterar sobre elementos de una estructura de datos anidada hasta que se cumpla una cierta condición.

#### Ejemplo de Bucles `while` Anidados

```python3
x = 1
y = 1

while x <= 5:
    y = 1
    while y <= x:
        print(y, end="")
        y += 1
    print()
    x += 1
```

En este ejemplo, utilizamos dos bucles `while` anidados para `print` un triángulo de `numbers`. El bucle `while` externo itera sobre cada `row` del triángulo, `while` el bucle `while` interno itera sobre cada número en esa fila.

En general, los bucles anidados son un concepto importante en la programación de Python, y pueden ayudarte a resolver problemas complejos iterando sobre estructuras de datos anidadas. Al incorporar bucles `for` y `while` anidados en tu código, puedes escribir programas más eficientes, legibles y potentes.

## Cómo Usar un Bucle `for` con una Declaración `range`

La declaración `range` en Python es una función integrada que se puede utilizar para generar una secuencia de números. A menudo se usa en bucles `for` para repetir una tarea un cierto número de veces. Aquí hay dos ejemplos de cómo usar la declaración `range` en Python:

```python3
for i in range(5):
    print(i)

for i in range(0, 10, 2):
    print(i)
```

En el primer ejemplo, el bucle `for` se utiliza para iterar a través de un rango de números del 0 al 4. En el segundo ejemplo, la función `range` se llama con tres argumentos: el número inicial (0), el número final (10) y el paso (2). Esto generará una secuencia de números del 0 al 10 (sin incluir el 10) con un paso de 2. Luego, el bucle `for` itera a través de esta secuencia e imprime cada número.

### Un Bucle `for` Inverso

```python3
for i in range(5, 0, -1):
    print(i)
# Output:
# 5
# 4
# 3
# 2
# 1
```

```python3
a = ['1', '2', '3', '4', '5']

for i in reversed(a):
    print(i)
# Output:
# 5
# 4
# 3
# 2
# 1
```

Usar la instrucción `range` en Python es una forma eficiente de recorrer una secuencia de números y realizar una tarea. Es una técnica comúnmente utilizada en la programación y es fácil de implementar con el bucle `for` en Python.

## Bucle `for` en Una Línea

La comprensión de listas facilita escribir un bucle for en una línea en Python. Usar un bucle de una sola línea puede ayudar a simplificar el código y hacerlo más conciso.

```python3
squares = [x**2 for x in range(10)]
print(squares)
```

Salida:

```python
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
```

```python3
even_numbers = [num for num in range(20) if num % 2 == 0]
print(even_numbers)

# Output:
# 
# [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
```

En ambos ejemplos, el bucle `for` se condensa en una sola línea usando comprensión de listas. El bucle itera sobre un `range` de valores y aplica una condición al `range` dado. Esto resulta en una lista con la salida deseada.

Usar un bucle for de una línea en Python es una herramienta poderosa que puede optimizar tu código y hacerlo más eficiente.
