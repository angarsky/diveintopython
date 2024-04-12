> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables

Las variables juegan un papel crucial en Python, ya que proporcionan una forma de almacenar y manipular datos a lo largo de un programa. Al asignar valores a las variables, podemos referirnos fácilmente y actualizar los datos según sea necesario, haciendo nuestro código más eficiente y legible. En general, las variables son un concepto fundamental en la programación de Python y son esenciales para cualquier tipo de manipulación y análisis de datos. Revisemos este tema en detalle.

## Definición de Variable

Definamos qué es una variable en Python. Es una ubicación nombrada en la memoria del ordenador que almacena un valor. Es como un contenedor que puede contener diferentes tipos de datos, como números, cadenas o booleanos.

Para crear una variable en Python, necesitas darle un nombre y asignarle un valor utilizando el operador de asignación `=`.

## Convención de Nombramiento de Variables

En Python, los nombres de las variables distinguen entre mayúsculas y minúsculas y pueden ser cualquier combinación de letras, números y guiones bajos. Sin embargo, hay pautas y convenciones de nombramiento de variables en Python que hacen que tu código sea más legible y mantenible:

- Usa letras minúsculas para los nombres de las variables. En Python, es costumbre usar letras minúsculas para los nombres de las variables.
- Usa guiones bajos para separar palabras en los nombres de las variables. Si un nombre de variable consta de más de una palabra, utiliza guiones bajos para separarlas. Por ejemplo, `first_name` es un mejor nombre de variable que `firstname`
- Evita usar palabras reservadas. Python tiene palabras reservadas que tienen un significado especial en el lenguaje, como `if`, `else`, `while` y `for`. Evita usar estas palabras reservadas como nombres de variables.
- Usa nombres descriptivos para las variables. Elige nombres descriptivos que reflejen el propósito de la variable. Por ejemplo, `count` es un mejor nombre de variable que `c`
- Usa sustantivos singulares para los nombres de las variables. Por ejemplo, `student` es un mejor nombre de variable que `students`.
- Sé consistente con las convenciones de nombramiento dentro de tu código y a través de tu equipo.

Aquí hay algunos ejemplos de buenos nombres de variables en Python:

```python
first_name
last_name
age
is_student
num_of_courses
```

Recuerda que buenas convenciones de nombramiento de variables no solo te ayudan a establecer un nombre válido para la variable, sino que también hacen tu código más legible, mantenible y reducen el riesgo de errores.

## Declaración de Variables

En Python, no necesitas declarar explícitamente una variable antes de usarla. Puedes crear una variable simplemente asignándole un valor.

Sin embargo, es importante notar que las variables en Python son de tipado dinámico, lo que significa que el tipo de datos de una variable se determina en tiempo de ejecución basado en el tipo de valor asignado a ella. Esto significa que la misma variable puede contener diferentes tipos de valores en diferentes momentos. Por ejemplo:

```python
y = 5
y = "hello"

print(y) # Output: hello
```

En este ejemplo, primero creamos una variable llamada `y` y le asignamos el valor `5`. Luego cambiamos el valor de `y` por una cadena `hello`. El programa imprimió el valor de `y`, que es la cadena `hello`.

## Tipos de Datos

Hay nueve tipos de datos en Python:

- Enteros
- Números de punto flotante
- Complejos
- Cadenas
- Booleanos
- Listas
- Tuplas
- Conjuntos
- Diccionarios

Los primeros tres tipos pueden condicionalmente combinarse en un grupo numérico.

### Tipos Numéricos

Los tipos numéricos se utilizan para representar números en Python. Hay tres tipos de datos numéricos en Python:

- **Entero**: Los enteros son números enteros sin ningún punto decimal. Ejemplo: 5, 10, -3.
- **Flotante**: Los flotantes son números con puntos decimales. Ejemplo: 2.5, -0.1, 3.14.
- **Complejo**: Los números complejos son números con una parte real y otra imaginaria. Se denotan añadiendo una `j` al final de la parte imaginaria. Ejemplo: 2 + 3j, -4j.

```python
# integer
a = 5
# float
b = 3.14
# complex
c = 2 + 3j
```

### Tipo Booleano

El tipo booleano es un tipo de dato que solo puede tener dos valores: `True` o `False`.

```python
a = True
b = False
```

### Tipo de Cadena

Las cadenas (también conocidas como literal de cadena) se utilizan para representar datos de texto en Python. Están encerradas entre comillas (simples o dobles) y pueden contener letras, números y caracteres especiales. Veamos qué es una cadena con un ejemplo:

```python
a = "Hello, World!"
b = 'Python is cool'
```

### Tipo de Lista

Las listas se usan para almacenar una colección de elementos. Pueden contener cualquier tipo de dato y se denotan con corchetes.

```python
a = [1, 2, 3, 4, 5]
b = ['mango', 'pineapple', 'orange']
```

### Tipo Tupla

Las tuplas son similares a las listas, pero son inmutables, lo que significa que su contenido no puede ser cambiado. Se denotan con paréntesis.

```python
a = (1, 2, 3)
b = ('red', 'green', 'blue')
```

### Tipo de Conjunto

Los conjuntos se utilizan para almacenar valores únicos. Se denotan mediante llaves.

```python
a = {1, 2, 3, 4, 5}
b = {'mango', 'pineapple', 'orange'}
```

### Tipo de Diccionario

Los diccionarios se utilizan para almacenar pares clave-valor. Cada clave está asociada con un valor, y están denotados por llaves con pares clave-valor separados por dos puntos.

```python
a = {'name': 'John', 'age': 30, 'city': 'New York'}
b = {'mango': 1.99, 'pineapple': 0.99, 'orange': 2.99}
```

### Tipo None

None es un tipo de dato especial en Python que representa la ausencia de un valor.

```python
a = None
```

## Variable de Carácter

En Python, una variable de carácter es un único carácter almacenado en una variable. A diferencia de algunos otros lenguajes de programación, Python no tiene un tipo de datos separado para los caracteres. En cambio, un carácter es simplemente una cadena de longitud 1 en Python.

Para declarar una variable de carácter en Python, puedes asignar un único carácter a una variable usando comillas simples, comillas dobles o comillas triples. Aquí hay algunos ejemplos:

```python
char1 = 'a'
char2 = "b"
char3 = '''c'''
```

En los ejemplos anteriores, `char1`, `char2` y `char3` son todas variables de caracteres que almacenan los caracteres `a`, `b` y `c`, respectivamente.

También puedes usar la indexación para extraer un solo carácter de una variable de cadena. Por ejemplo:

```python
string = "hello"
char = string[0]   # Output: 'h'
```

En el ejemplo anterior, `char` es una variable de carácter que almacena el primer carácter de la cadena `hello`.

## Declarando Tipos de Variables

Como se mencionó anteriormente, Python es un lenguaje de tipado dinámico, lo que significa que no es necesario declarar explícitamente el tipo de una variable. En cambio, el tipo de una variable se determina en tiempo de ejecución en función del valor que se le asigna.

Sin embargo, a partir de Python 3.5, el lenguaje incluye una sintaxis para las anotaciones de tipo, que le permiten especificar el tipo esperado de una variable. Esto puede ser útil para mejorar la legibilidad del código, la documentación y la comprobación de tipos.

Aquí hay un ejemplo de cómo puedes usar las anotaciones de tipo en Python:

```python
# declare a variable with an integer type annotation
my_number: int = 42

# declare a variable with a string type annotation
my_string: str = "Hello, world!"

# declare a function with type annotations for parameters and return value
def add_numbers(a: int, b: int) -> int:
    return a + b
```

Tenga en cuenta que las anotaciones de tipo son opcionales, y Python seguirá funcionando incluso si no las usa. Sin embargo, utilizar anotaciones de tipo puede ayudar a detectar ciertos tipos de errores en tiempo de compilación, en lugar de en tiempo de ejecución.

## Variables y Constantes

En Python, las variables se utilizan para almacenar datos o valores que pueden ser cambiados o actualizados durante el curso del programa. Por otro lado, las variables constantes, como sugiere el nombre, son variables que no pueden ser cambiadas una vez que se les asigna un valor.

En Python, no hay una forma específica de declarar una variable o una variable constante, ya que las variables son de tipado dinámico y su tipo puede cambiar durante la ejecución del programa. Sin embargo, una convención común para diferenciar entre variables y variables constantes es utilizar letras mayúsculas para estas últimas.

Por ejemplo, digamos que queremos declarar una variable para almacenar la edad de una persona y una variable constante para almacenar el valor de pi. Podemos declararlas de la siguiente manera:

```python
# variable to store age
age = 30

# constant variable to store pi value
PI = 3.14159
```

En el ejemplo anterior, `age` es una variable que puede cambiarse, mientras que `PI` es una variable constante que no puede cambiarse una vez se le ha asignado un valor.

Es importante notar que esta convención no hace realmente a la variable constante, y todavía es posible modificar el valor de una variable constante en Python. Sin embargo, seguir esta convención ayuda a distinguir entre variables que se pretende cambiar durante la ejecución del programa y aquellas que se pretende sean constantes.

## Definiendo Variables Globales y Locales

Hay dos tipos de variables en Python: **globales** y **locales**.

Una variable global en Python es una variable que se define fuera de una función y puede ser accedida por cualquier parte del programa, incluyendo funciones. Las variables globales en Python tienen un alcance global, lo que significa que son accesibles desde cualquier lugar en el código.

Aquí hay un ejemplo de cómo establecer una variable global en Python:

```python3
x = 10

def my_function():
    print(x)

my_function() # output: 10
```

En el ejemplo anterior, `x` es una variable global que puede ser accedida por la función `my_function`. Cuando se llama a la función, imprime el valor de `x`.

Ahora veamos qué es una variable local en Python.

Una variable local es una variable que se define dentro de una función y solo puede ser accedida desde esa función. Las variables locales tienen un alcance local, lo que significa que solo son accesibles dentro del bloque de código donde están definidas.

Aquí hay un ejemplo de cómo definir una variable local en Python:

```python3
def my_function():
    y = 5
    print(y)

my_function() # output: 5
```

En el ejemplo anterior, `y` es una variable local que solo se puede acceder dentro de la función `my_function`. Cuando se llama a la función, esta imprime el valor de `y`.

Es importante tener en cuenta que si defines una variable local con el mismo nombre que una variable global, la variable local tendrá prioridad dentro de la función. Aquí hay un ejemplo:

```python
x = 10

def my_function():
    x = 5
    print(x)

my_function() # output: 5
print(x) # output: 10
```

En el ejemplo anterior, `my_function` define una variable local `x` con un valor de `5`. Cuando se llama a la función, imprime el valor de la variable local, que es `5`. Sin embargo, la variable global `x` todavía tiene un valor de `10`, que se imprime cuando se la llama fuera de la función.
