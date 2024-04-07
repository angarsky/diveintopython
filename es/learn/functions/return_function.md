> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/functions/return-function

Devolver una función desde otra función significa que se crea una función y se devuelve como salida de otra función. Esto es posible en Python porque las funciones son objetos de primera clase, lo que significa que se pueden pasar como cualquier otro objeto tal como enteros, cadenas o listas.

## Devolver Función en Python

En los siguientes ejemplos, se utilizan funciones de Python para devolver otras funciones, permitiendo un comportamiento dinámico basado en los parámetros de entrada.

### Ejemplo 1: Uso Básico de la Devolución de Función

Considere `function1`, que devuelve otra función, `function2`. Esta función interna `function2` multiplica su argumento por un valor especificado, `a`. Cuando se llama a `function1(5)`, devuelve `function2` con `a` establecido en `5`. La función resultante se asigna a la variable `multiply_by_5`. Posteriormente, llamar a `multiply_by_5(3)` produce `15`.

```python3
def function1(a):
    def function2(b):
        return a * b
    return function2

multiply_by_5 = function1(5)
result = multiply_by_5(3)
print(result)  # Output: 15
```

### Ejemplo 2: Retorno Condicional de Funciones

En este escenario, `function3` determina qué función retornar basado en el valor del parámetro `operation`. Contiene dos funciones internas: `add_numbers` y `multiply_numbers`, realizando respectivamente operaciones de adición y multiplicación.

Al pasar `add` o `multiply` a `function3`, retorna la función interna correspondiente. Por ejemplo, si `operation_type` está establecido en `add`, la función `add_numbers` se asigna a la variable `math_function`. Invocar `math_function(3, 5)` sumará los dos números, resultando en una salida de `8`.

```python3
def function3(operation):
    def add_numbers(a, b):
        return a + b
    
    def multiply_numbers(a, b):
        return a * b
    
    if operation == "add":
        return add_numbers
    elif operation == "multiply":
        return multiply_numbers

operation_type = "add"
math_function = function3(operation_type)
result = math_function(3, 5)
print(result)  # Output: 8
```

En resumen, estos ejemplos ilustran cómo las funciones de Python pueden utilizarse para devolver otras funciones de manera dinámica, proporcionando versatilidad en el manejo de operaciones basadas en condiciones de entrada.

## Explorando el Concepto de Funciones Anidadas y Devolución de Funciones  

En Python, las funciones pueden anidarse, lo que significa que puedes definir una función dentro de otra función. También puedes devolver una función desde otra función en Python. Este concepto de funciones anidadas y devolución de funciones permite una mayor flexibilidad y es una herramienta poderosa en la programación.

### Ejemplo 1: Devolver una Función desde una Función

```python3
def create_adder(num):
    def adder(x):
        return num + x
    return adder

add5 = create_adder(5)
print(add5(3))    # Output: 8
```

En este ejemplo, definimos una función `create_adder` que toma un parámetro `num`. Dentro de `create_adder`, definimos otra función `adder` que toma un parámetro `x` y retorna la suma de `num` y `x`. Finalmente, `create_adder` retorna `adder`.

Luego creamos una nueva función `add5` llamando a `create_adder(5)`. Esto significa que `add5` es ahora una referencia a `adder` con `num` configurado a 5. Cuando llamamos a `add5(3)`, pasamos el parámetro `x` como `3`, lo que resulta en la salida `8`.

### Ejemplo 2: Funciones Anidadas

```python3 
def outer_function(num):
    def inner_function(x):
        return num + x
    return inner_function

add3 = outer_function(3)
add5 = outer_function(5)

print(add3(10))    # Output: 13
print(add5(10))    # Output: 15
```

En este ejemplo, definimos una función `outer_function` que toma un parámetro `num`. Dentro de `outer_function`, definimos otra función `inner_function` que toma un parámetro `x` y devuelve la suma de `num` y `x`. Finalmente, `outer_function` devuelve `inner_function`.

Luego creamos dos nuevas funciones `add3` y `add5` llamando a `outer_function(3)` y `outer_function(5)` respectivamente. Esto significa que `add3` es ahora una referencia a `inner_function` con `num` establecido en 3, y `add5` es una referencia a `inner_function` con `num` establecido en 5. Cuando llamamos a `add3(10)` y `add5(10)`, pasamos el parámetro `x` como `10`, lo que resulta en la salida `13` y `15` respectivamente.

## Entendiendo las Ventajas de Devolver una Función desde Otra Función

Uno de los beneficios significativos de devolver una función desde otra función en Python es que proporciona flexibilidad. Al devolver una función, el programador puede crear una función más específica y personalizada basada en los inputs pasados a la función original. También permite una reutilización de código eficiente.

Otra ventaja de devolver una función desde otra función es que puede simplificar la complejidad del código, lo que conduce a una estructura de código más legible. El código se vuelve más organizado y comprensible, mejorando así sus procesos de mantenimiento y depuración.

Aquí hay dos ejemplos de devolver una función desde una función en Python:

### Ejemplo 1: Devolver una Función que Multiplica Cualquier Número Por un Factor Dado:

```python
def multiply(factor):
    def inner(num):
        return num * factor
    return inner

double = multiply(2)
triple = multiply(3)

print(double(5)) #output: 10
print(triple(5)) #output: 15
```

Al llamar a `multiply(2)` y `multiply(3)`, creamos dos nuevas funciones `double` y `triple`, respectivamente, que pueden ser utilizadas para multiplicar cualquier número por `2` o `3`.

### Ejemplo 2: Devolviendo una Función que Realiza Operaciones Matemáticas:

```python3
def operate(operation):
    def inner(num1, num2):
        if operation == 'add':
            return num1 + num2
        elif operation == 'subtract':
            return num1 - num2
        elif operation == 'multiply':
            return num1 * num2
        elif operation == 'divide':
            return num1 / num2
    return inner

add_func = operate('add')
subtract_func = operate('subtract')

print(add_func(10, 5)) #output: 15
print(subtract_func(10, 5)) #output: 5
```

Al llamar a `operate('add')` y `operate('subtract')`, creamos dos nuevas funciones `add_func` y `subtract_func`, respectivamente, que pueden usarse para realizar operaciones de suma y resta en cualquier par de números.

## Entendiendo las Diferentes Maneras de Definir y Devolver Funciones en Python

Devolver una función desde otra función puede ser útil en situaciones donde necesitamos crear funciones dinámicamente basadas en ciertas condiciones.

```python
def create_adder(num):
    def adder(x):
        return x + num
    return adder

add5 = create_adder(5)
print(add5(10)) # Output: 15
```

En este ejemplo, definimos una función llamada `create_adder` que toma un parámetro `num`. Dentro de la función `create_adder`, definimos otra función llamada `adder` que toma un parámetro `x` y devuelve la suma de `num` y `x`. Finalmente, devolvemos la función `adder` como salida.

Luego asignamos la salida de `create_adder(5)` a una variable llamada `add5`. Esto significa que `add5` es ahora una función que toma un parámetro `x` y devuelve la suma de `5` y `x`. Cuando llamamos a `add5(10)`, devuelve `15`.

## Explorando el Uso de Argumentos en Funciones Devueltas

```python
def power(base):
    def exponent(exp):
        return base ** exp
    return exponent

square = power(2)
cube = power(3)

print(square(5)) # Output: 25
print(cube(3)) # Output: 27
```

En este ejemplo, una función anidada `exponent` se define dentro de la función `power`. La función `exponent` calcula un número elevado a una potencia. La función `power` devuelve la función `exponent`. Dos variables `square` y `cube` se asignan llamando a la función `power` con diferentes valores base. Las dos últimas instrucciones de impresión llaman a `square` y `cube` con diferentes valores de exponente.

```python3
def operation(operator):
    def calculate(num1, num2):
        if operator == '+':
            return num1 + num2
        elif operator == '-':
            return num1 - num2
        elif operator == '*':
            return num1 * num2
        elif operator == '/':
            return num1 / num2
        else:
            return "Invalid operator"
    return calculate

addition = operation('+')
subtraction = operation('-')
multiplication = operation('*')
division = operation('/')

print(addition(5, 3)) # Output: 8
print(subtraction(5, 3)) # Output: 2
print(multiplication(5, 3)) # Output: 15
print(division(5, 3)) # Output: 1.6666666666666667
print(operation('%')(5, 3)) # Output: Invalid operator
```

En este ejemplo, la función `operation` toma un parámetro `operator` y devuelve la función `calculate`. La función `calculate` realiza la operación aritmética especificada por el parámetro `operator` en dos argumentos numéricos. Cuatro variables `addition`, `subtraction`, `multiplication` y `division` se asignan llamando a la función `operation` con diferentes valores de operador. La instrucción de impresión final muestra lo que ocurre cuando se utiliza un operador inválido como argumento.
