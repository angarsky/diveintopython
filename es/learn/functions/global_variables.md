> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/functions/global-variables

En Python, las variables se utilizan para almacenar valores que pueden ser accedidos y manipulados dentro de un programa. Sin embargo, el ámbito de una variable puede diferir dependiendo de si es una variable global o una variable local. Las variables globales en Python pueden ser accedidas desde cualquier parte del programa, mientras que las variables locales están limitadas a la función o bloque en el que están definidas. Comprender las diferencias entre los ámbitos de las variables es importante para desarrollar código Python eficiente y efectivo.
  
## Ámbito de las Variables Globales en Python

**Las variables globales** en Python son las variables que se definen fuera de cualquier función en un programa. Pueden ser accedidas y modificadas por cualquier función o módulo en el programa.

El ámbito de una variable en Python define su accesibilidad. Hay dos tipos de ámbitos en Python: **Global** y **Local**. Un ámbito global significa que una variable es accesible en todo el programa, mientras que un ámbito local significa que una variable es accesible solo dentro de la función donde está definida.

### Ejemplo 1: Cómo Definir una Variable Global en Python

```python
# Define a global variable
global_var = 10
```

En Python, las variables globales pueden ser accedidas y modificadas desde cualquier función o módulo en el programa. Sin embargo, asignar un valor a una variable global dentro de una función crea una nueva variable local dentro de esa función.

Aquí hay algunos ejemplos de cómo funciona el ámbito de las variables globales en Python:

### Ejemplo 2: Acceder a una Variable Global Dentro de una Función

```python3
x = 5    #global variable
def func():
  print(x)   #accessing a global variable inside a function

func()   #calling the function
# Output: 5
```

En este ejemplo, la función `func` está accediendo a la variable global `x` que se define fuera de cualquier función.

### Ejemplo 3: Accediendo a la Variable Global Fuera de la Función

```python3
x = 5   #global variable
def func():
  x = 10   #creating a new local variable
  print(x)   #accessing the local variable inside the function

func()
print(x)    #accessing the global variable outside the function
# Output: 10 5
```

En este ejemplo, la función `func` está creando una nueva variable local `x` al asignarle un valor de `10`. Por lo tanto, la instrucción `print` dentro de la función se refiere a la variable local y no a la variable global. Sin embargo, cuando la instrucción `print` se llama fuera de la función, se refiere a la variable global `x`.

## Cómo funcionan las Variables Globales en Python

Las **variables globales** son variables a las cuales se puede acceder y modificar a lo largo del código, sin importar dónde se declaren. Los **alcances de las variables** en Python determinan la accesibilidad de las variables en diferentes partes del código. Python soporta tres alcances de variables - **local, global y no local**. Las **variables locales** son variables que se declaran y utilizan dentro de una función o bloque de código en particular, y su alcance está limitado a esa función o bloque de código en particular.

### Cómo Cambiar una Variable Global en Función

```python3
# declaring and initializing a global variable
global_var = "I am a global variable."

def func():
    # accessing and modifying the global variable within the function
    global global_var
    global_var = "I have been modified."

# calling the function to modify the global variable
func()

# printing the modified value of the global variable
print(global_var)    # Output: "I have been modified."
```

En Python, para establecer una variable global, necesitas declarar e inicializar una variable fuera de cualquier función o bloque. En el código anterior, una **variable global** llamada `global_var` es declarada e inicializada fuera de la función. La función `func()` accede y modifica el valor de `global_var` utilizando la palabra clave `global`. Finalmente, se imprime el valor modificado de la variable global.

### El Intento de Acceder a una Variable Local Más Allá de su Función

```python3
def func():
    # declaring and initializing a local variable
    local_var = "I am a local variable."
    print(local_var)
    
# calling the function that uses the local variable
func()

# trying to access the local variable outside the function
# Output: NameError: name 'local_var' is not defined
# print(local_var)    
```

En el código anterior, `local_var` es una **variable local** declarada e inicializada dentro de la función `func()`. El alcance de esta variable se limita solo a la función. Cuando se llama a la función, se imprime el valor de `local_var`. Sin embargo, cuando intentamos acceder a esta variable fuera de la función, obtenemos un `NameError` ya que la variable no está definida en ese alcance.

## El Papel de las Variables No Locales en Python

Las variables globales son variables que se pueden acceder y modificar desde cualquier lugar en el programa, mientras que las variables locales solo son accesibles dentro de una función específica o bloque de código. El alcance de una variable se refiere al área en la cual se puede acceder.

Las variables no locales en Python son variables que se definen en una función externa pero pueden ser accedidas en una función interna. La palabra clave `nonlocal` se utiliza para declarar una variable no local en Python.

```python3
count = 0  # global variable

def increment():
    global count
    count += 1
    print(count)

increment()  # output: 1
increment()  # output: 2
```

En este ejemplo, `count` es una variable global que puede ser accesada y modificada desde cualquier parte del programa. La palabra clave `global` se utiliza dentro de la función `increment` para indicar que estamos modificando la variable global `count`.

```python3
def outer():
    x = "local"  # local variable
    
    def inner():
        nonlocal x  # non-local variable
        x = "nonlocal"
        print("inner:", x)
        
    inner()
    print("outer:", x)

outer()  # output: inner: nonlocal, outer: nonlocal
```

En este ejemplo, `x` es una variable local en la función `outer`. La función `inner` tiene acceso a esta variable usando la palabra clave `nonlocal`, así que podemos modificar su valor. Cuando llamamos a la función `outer`, se ejecuta la función `inner` y el valor de `x` cambia a `nonlocal`. Este cambio se refleja en la función `outer` cuando `print` el valor de `x` después de que se ejecuta la función `inner`.

## La palabra clave `global` - Variables Globales en Python en Función

Revisemos cómo usar variables globales en funciones en Python.
Las variables globales son variables que pueden ser accedidas y modificadas desde cualquier parte del programa. En Python, el alcance de una variable determina dónde se puede acceder. La mejor práctica para el uso de variables globales en Python es minimizar su uso, ya que demasiadas variables globales pueden hacer que el programa sea difícil de entender, depurar y mantener.

Un ejemplo de una variable global es la función de potencia en Python. Podemos usar un bucle para calcular la potencia de un número. Aquí hay un ejemplo:

```python3
power = 1

def calculate_power(num, exponent):
    global power
    power = 1
    for i in range(exponent):
        power *= num
    return power

print("Power of 2^3 is", calculate_power(2, 3))
print("Power of 5^4 is", calculate_power(5, 4))
```

En este ejemplo, declaramos una variable global `power` fuera de la función `calculate_power()`. Dentro de la función, utilizamos esta variable global para almacenar la potencia del número. Reiniciamos el valor de la variable `power` a 1 para cada nuevo cálculo.

### Programa para Contar el Número de Veces que se Llama a una Función

```python3
count = 0

def my_function():
    global count
    count += 1
    print("This function has been called", count, "times.")

my_function()
my_function()
my_function()
```

En este ejemplo, declaramos la variable global `count` fuera de la función `my_function()`. Dentro de la función, incrementamos el valor de la variable `count` cada vez que la función es llamada. Luego imprimimos el valor de `count`.

En general, es mejor evitar las variables globales a favor de variables locales con un alcance más limitado. Sin embargo, en algunos casos, las variables globales pueden ser necesarias o útiles, y podemos usarlas cuidadosamente con la palabra clave `global` para acceder a ellas dentro de las funciones.

## Consejos Avanzados para Ámbitos de Variables en Python y Convenciones de Nomenclatura  

Los consejos avanzados para ámbitos de variables en Python incluyen evitar las variables globales tanto como sea posible para prevenir conflictos de nombres y comportamientos inesperados. También se recomienda usar nombres de variables descriptivos que sigan las [convenciones de nomenclatura de PEP 8](https://peps.python.org/pep-0008/#naming-conventions), como usar letras minúsculas y guiones bajos para separar palabras.

Las convenciones de nomenclatura de funciones en Python siguen las mismas [pautas de PEP 8](https://peps.python.org/pep-0008/#function-and-variable-names), utilizando letras minúsculas y guiones bajos para separar palabras. Los nombres de las funciones también deben ser descriptivos y transmitir el propósito de la función.

```python3
# Local variable
def greet(name):
    message = "Hello, " + name + "!"
    return message
    
print(greet("Alice"))   # Output: Hello, Alice!
```

En este ejemplo, declaramos una variable local `message` dentro de la función `greet()`. Esta variable solo es accesible dentro de la función y no se puede acceder desde fuera. La función toma un parámetro `name` y devuelve un mensaje de saludo con el nombre incluido.
