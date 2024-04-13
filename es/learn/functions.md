> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/functions

Las funciones en Python juegan un papel crucial en la programación ya que sirven como bloques reutilizables de código que pueden realizar tareas específicas. Una vez definidas, puedes llamar a una función en Python usando su nombre y pasando argumentos (opcionales) entre paréntesis. Te permite crear múltiples funciones, cada una con su funcionalidad específica, facilitando la organización y estructuración de tu código. La tipificación de funciones y la documentación de funciones son elementos esenciales que pueden hacer que tu código sea más legible y fácil de depurar, especialmente cuando se trabaja con proyectos más grandes. A partir de este artículo aprenderemos qué es una función en Python y cómo llamar a una función.

## Programación Funcional

Python admite múltiples paradigmas de programación, uno de los cuales es la programación funcional. La programación funcional es un paradigma de programación que se centra en el uso de funciones puras, evitando el estado compartido, los datos mutables y los efectos secundarios. En Python, este paradigma se utiliza típicamente mediante el uso de funciones de orden superior y expresiones `lambda`.

### Ejemplo de Función de Orden Superior

```python3
def apply_twice(f):
    def wrapper(x):
        return f(f(x))
    return wrapper
 
def add_two(x):
    return x + 2
 
### Using apply_twice to add two to a number four times

applied_four_times = apply_twice(apply_twice(add_two))
result = applied_four_times(10) 
print(result) ### Result will be 18
```

### Ejemplo de Expresión Lambda

```python
numbers = [1, 2, 3, 4, 5]
squared_numbers = list(map(lambda x: x**2, numbers))
### squared_numbers will be [1, 4, 9, 16, 25]

```

En resumen, Python soporta los paradigmas de programación funcional a través de funciones de orden superior y expresiones `lambda`.

## Cómo Escribir una Función en Python

En Python, una función se define usando la palabra clave `def`, seguida del nombre de la función, y un conjunto de paréntesis que pueden contener parámetros. El bloque de código que realiza la tarea está indentado bajo la declaración `def`.

Para llamar a una función en Python, simplemente usa el nombre de la función, seguido de los paréntesis que contienen los argumentos necesarios si los hay.

### Ejemplo de Función Básica

```python3
def greet(name):
    print("Hello, " + name)

greet("John") # Output: Hello, John
```

### Ejemplo de Función con Valor de Retorno

```python3
def square(number):
    return number * number

result = square(4)
print(result) # Output: 16
```

Cuando una función tiene una sentencia `return`, puede devolver un único valor o varios valores separados por comas. Estos valores pueden luego ser asignados a una variable o usados directamente.

Cuando creas una función en Python, es una buena práctica especificar el **tipado de función** añadiendo indicaciones de tipo para los parámetros y valores de retorno. Esto facilita a otros desarrolladores entender la entrada y salida esperadas de la función.

```python
def sum_numbers(num1: int, num2: int) -> int:
    return num1 + num2

print(sum_numbers(2, 3)) # Output: 5
```

La **documentación** de funciones se puede agregar usando cadenas de documentación, las cuales describen qué hace la función, sus parámetros y su valor de retorno. Esta información se puede acceder utilizando una función `help`.

```python
def greet(name):
    """Print a greeting message to the person with the given name."""
    print("Hello, " + name)

help(greet)
```

En Python, los **parámetros de función** pueden tener valores predeterminados que se utilizan si no se proporciona ningún valor cuando se llama a la función.

```python3
def greet(name="there"):
    print("Hello, " + name)

greet() # Output: Hello, there
greet("John") # Output: Hello, John
```

La **función principal** es una convención en Python, donde el código a ejecutar directamente se coloca dentro de un bloque `if __name__ == '__main__':`, asegurando que solo se ejecute cuando el archivo se ejecuta directamente, y no se importa como módulo.

```python3
def main():
    print("Hello World")

if __name__ == "__main__":
    main()
```

## Tipado de Funciones en Python: Tipos de Argumentos y Valores de Retorno

El tipado de funciones especifica los tipos de argumentos y el valor de retorno esperado de una función. Python soporta argumentos posicionales, de palabra clave, predeterminados y de longitud variable para una función. Los argumentos de la función se refieren a los valores que se pasan a una función, y los valores de retorno son los resultados del código ejecutado.

Aquí hay algunos ejemplos de funciones en Python:

```python
# Example of a function that returns a value

def calculate_area(width, height):
    area = width * height
    return area

# Example of a function that returns multiple values 

def get_student_details(name, age, student_id):
    return name, age, student_id
```

En Python, los argumentos de función de longitud variable se denotan usando el símbolo `*`. Aquí hay un ejemplo de una función de Python que acepta argumentos de longitud variable:

```python
def calculate_sum(*numbers):
    total = 0
    for num in numbers:
        total += num
    return total
# Here's how you can call the calculate_sum function with different numbers of arguments:
sum1 = calculate_sum(1, 2, 3)   # sum1 is 6
sum2 = calculate_sum(10, 20)    # sum2 is 30
sum3 = calculate_sum(5)         # sum3 is 5
```

En este ejemplo, la sintaxis de números `*` en la definición de la función le indica a Python que permita cualquier número de argumentos para ser pasados a la función. La función luego utiliza un bucle para iterar sobre todos los argumentos y calcular su suma.

Como puedes ver, puedes pasar cualquier número de argumentos a la función `calculate_sum`, y funcionará correctamente.

## Cómo Nombrar Adecuadamente una Función en Python

1. Los nombres de las funciones deben **empezar con una letra o un guión bajo** `_`, seguido por cualquier combinación de letras, números o guiones bajos.
Ejemplo: `def my_function():`

2. Los nombres de las funciones deben ser **descriptivos** y transmitir el propósito de la función.
Ejemplo: `def calculate_total():`

3. Los nombres de las funciones son **sensibles a mayúsculas y minúsculas**, lo que significa que `my_function` y `My_Function` son nombres diferentes.
Ejemplo: `def my_function():` y `def My_Function():` son dos funciones diferentes.

4. Los nombres de las funciones no deben ser iguales a una **palabra clave de Python**, como `print` o `if`.
Ejemplo: `def print():` no es un nombre válido para una función.

5. Los nombres de las funciones deben seguir la convención de nomenclatura de **"snake_case"**, donde las palabras están separadas por guiones bajos. Esta convención hace que los nombres de las funciones sean más legibles y fáciles de entender.
Ejemplo: `def calculate_total_with_discount():`

En general, se recomienda elegir un nombre de función que sea **descriptivo**, **fácil de entender**, y siga las convenciones de nomenclatura para funciones en Python.

## Cómo Devolver Múltiples Valores Desde una Función

En Python, una función solo puede devolver directamente un único valor. Sin embargo, puedes devolver múltiples valores empaquetándolos en una estructura de datos como una tupla, lista o diccionario. Aquí hay un ejemplo de una función que devuelve múltiples valores utilizando una tupla:

```python3
def get_user_info():
    name = "John Doe"
    age = 30
    email = "johndoe@example.com"
    return name, age, email

# Call the function and unpack the returned values
user_name, user_age, user_email = get_user_info()

print("Name:", user_name)
print("Age:", user_age)
print("Email:", user_email)

# Output:
# Name: John Doe
# Age: 30
# Email: johndoe@example.com
```

Esta función `get_user_info()` devuelve el `name`, `age` y `email` de un usuario. Al separar las variables con comas en la sentencia de retorno, Python crea automáticamente una tupla que contiene estos valores. Luego, podemos desempaquetar la tupla en variables separadas durante la llamada a la función.
