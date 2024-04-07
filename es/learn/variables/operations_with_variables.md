> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/operations-with-variables

Python proporciona varias operaciones y métodos para trabajar con datos y realizar diversas tareas. Revisemos las más populares que se relacionan con todos los tipos de variables.

## Definición de Tipo

Hay varias maneras de verificar el tipo de una variable en Python. Veamos cómo comprobar un tipo de variable en Python.

### Función `type()`

Esta función incorporada `type()` devuelve el tipo de datos de una variable, es el equivalente de `typeof` en otros lenguajes de programación.

Veamos cómo imprimir el tipo de variable en Python:

```python3
x = 23
print(type(x))   # Output: <class 'int'>

y = 3.14
print(type(y))   # Output: <class 'float'>

z = "Hello, friend!"
print(type(z))   # Output: <class 'str'>

w = True
print(type(w))   # Output: <class 'bool'>
```

En este ejemplo, la función `type()` se utiliza para determinar el tipo de variables `x`, `y`, `z` y `w`. El resultado muestra la clase de la variable.

### Función `isinstance()`

Esta función incorporada verifica si una variable es una instancia de una clase especificada o no. Con esta función, podemos verificar fácilmente si una variable es `string` o no.

Así que aquí estamos comprobando el tipo de variable en Python:

```python3
x = 5
print(isinstance(x, int))  # Output: True

y = "hello"
print(isinstance(y, str))  # Output: True

z = [1, 2, 3]
print(isinstance(z, list))  # Output: True
```

### Usando el Atributo `__class__`

Este atributo devuelve la clase de un objeto.

Ejemplo:

```python3
x = 17
print(x.__class__)  # Output: <class 'int'>

y = "hello"
print(y.__class__)  # Output: <class 'str'>

z = [1, 2, 3]
print(z.__class__)  # Output: <class 'list'>
```

Este ejemplo muestra cómo imprimir un tipo de una variable en Python.

### Usando la función `type()` con una sentencia `assert`

Esta es una manera de verificar el tipo de una variable y generar un error si el tipo no es el esperado.

Ejemplo:

```python
x = 98
assert type(x) == int

y = "hello"
assert type(y) == str

z = [1, 2, 3]
assert type(z) == list
```

Estas son formas de cómo obtener el tipo de una variable en Python, por ejemplo, puedes verificar si una variable es una lista (ver el ejemplo anterior).

## Eliminando Variables

### Utilizando la sentencia `del`

En Python, la sentencia `del` se utiliza para eliminar una variable o un elemento de una lista, diccionario o cualquier otro objeto de colección. La sintaxis para usar del es:

```python
del object
```

Donde `object` puede ser una variable, un elemento de lista, un elemento de diccionario, o cualquier otro objeto.

Aquí hay algunos ejemplos:

```python
# Delete a variable
x = 5
del x

# Delete an item from a list
my_list = [1, 2, 3, 4, 5]
del my_list[2]

# Delete an item from a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}
del my_dict['b']
```

En el primer ejemplo, la variable `x` se elimina utilizando la instrucción `del`. Después de que se ejecuta la instrucción, la variable `x` ya no existe.

En el segundo ejemplo, el tercer elemento en la lista `my_list` se elimina usando del `my_list[2]`. Después de que se ejecuta la instrucción, `my_list` contiene los elementos `[1, 2, 4, 5]`.

En el tercer ejemplo, el elemento con la clave `'b'` se elimina del diccionario `my_dict` utilizando `del my_dict['b']`. Después de que se ejecuta la instrucción, `my_dict` contiene los elementos `{'a': 1, 'c': 3}`.

Ten en cuenta que `del` solo elimina la referencia al objeto, no el objeto en sí. Si el objeto todavía se referencia en otra parte del código, no se eliminará de la memoria.

### Asignando `None` a la Variable

Otro método para limpiar una variable es asignar el valor `None` a una variable para indicar que no tiene valor. El valor `None` es una constante integrada que representa la ausencia de un valor. Aquí hay un ejemplo:

```python
x = None
print(x)  # Output: None
```

En este ejemplo, asignamos el valor `None` a la variable `x`. Cuando imprimimos el valor de `x`, vemos que produce `None`.

### Utilizando las funciones `locals()` o `globals()`

Puedes usar las funciones `locals()` y `globals()` para acceder al espacio de nombres local y global, respectivamente. Estas funciones devuelven un diccionario que contiene todas las variables y sus valores en el espacio de nombres actual. Puedes usar estas funciones para eliminar variables del espacio de nombres utilizando la instrucción `del`.

Aquí un ejemplo:

```python
def my_function():
    x = 5
    y = 10
    del locals()['y']
    print(x)
    print(y)  # This will raise a NameError

my_function()
```

En este ejemplo, definimos una función `my_function()` que crea dos variables `x` y `y`. Luego utilizamos la sentencia del para eliminar la variable `y` del espacio de nombres local usando `del locals()['y']`. Después de que se ejecuta la sentencia, `y` ya no está definida en el espacio de nombres local, entonces cuando intentamos imprimir su valor, obtenemos un `NameError`.

También puedes utilizar la función `globals()` para eliminar variables del espacio de nombres global. Aquí tienes un ejemplo:

```python
x = 5
y = 10

def my_function():
    del globals()['x']

my_function()

print(x)  # This will raise a NameError
print(y)  # Output: 10
```

En este ejemplo, definimos dos variables `x` y `y` en el espacio de nombres global. Luego definimos una función `my_function()` que usa `del globals()['x']` para eliminar la variable `x` del espacio de nombres global. Después de que se llama a la función, `x` ya no está definida en el espacio de nombres global, por lo que cuando intentamos imprimir su valor, obtenemos un `NameError`. Sin embargo, `y` todavía está definida en el espacio de nombres global, por lo que podemos imprimir su valor sin ningún error.

Además, puedes eliminar todas las variables del espacio de nombres actual utilizando las funciones `globals()` y `locals()`. Aquí te mostramos cómo puedes hacerlo:

```python
# Clear all global variables
for var in globals().copy():
    if var.startswith("__"):
        continue
    del globals()[var]

# Clear all local variables
for var in locals().copy():
    if var.startswith("__"):
        continue
    del locals()[var]
```

El código anterior eliminará todas las variables de los espacios de nombres globales y locales excepto por las variables integradas de Python (que comienzan con `__`). Ten en cuenta que esto puede ser peligroso ya que eliminará todas tus variables y no podrás acceder a ellas más tarde en tu programa. Por lo tanto, asegúrate de usarlo con cautela.

### Usando el método `__del__()`

El método `__del__()` es un método especial que se llama cuando un objeto está a punto de ser destruido o recolectado como basura. Puedes definir este método en tu clase para realizar cualquier tarea de limpieza que sea necesaria antes de que el objeto sea destruido.

El método `__del__()` no toma argumentos y no tiene valor de retorno. Aquí tienes un ejemplo:

```python
class MyClass:
    def __init__(self, name):
        self.name = name
    
    def __del__(self):
        print(f"{self.name} has been deleted")
        
obj1 = MyClass("Object 1")
obj2 = MyClass("Object 2")
del obj1
```

En este ejemplo, definimos una clase `MyClass` con un método `__init__()` que inicializa una variable de instancia llamada name. También definimos un método `__del__()` que imprime un mensaje cuando el objeto se elimina. Creamos dos instancias de la clase `MyClass` y luego eliminamos una de ellas usando la declaración `del`.

Cuando ejecutamos este código, obtenemos la siguiente salida:

```python
Object 1 has been deleted
```

Esta salida indica que el método `__del__()` fue llamado cuando el objeto `obj1` fue eliminado.

Nota que el método `__del__()` no está garantizado que sea llamado en todos los casos. Por ejemplo, si el programa termina abruptamente, el método podría no ser llamado. Por lo tanto, generalmente no es una buena idea confiar en este método para tareas críticas de limpieza. En su lugar, es mejor utilizar otros mecanismos de limpieza, como las declaraciones `with` o los gestores de contexto, cuando sea posible.

## Operaciones con Variables

Ya hemos cubierto la asignación de variables anteriormente. Pero veamos qué más podemos hacer con las variables.

### Copiando una variable

Para copiar una variable en Python puedes usar el operador de asignación `=` o el método `copy()`. Sin embargo, es importante notar que el comportamiento de estos métodos puede ser diferente dependiendo del tipo de la variable.

- Copia superficial: Cuando usas el operador de asignación para copiar una lista, diccionario u otros objetos mutables, creas una copia superficial. Esto significa que la nueva variable se refiere al mismo objeto en memoria que la variable original. Cualquier cambio realizado en la variable original se reflejará en la copia, y viceversa. Por ejemplo:

```python3
original_list = [1, 2, 3]
copy_list = original_list  # Shallow copy
original_list[0] = 4
print(copy_list)  # Output: [4, 2, 3]
```

- Copia profunda: Si deseas crear un nuevo objeto en memoria que sea una copia de la variable original, puedes usar el método `copy()`. Esto crea una copia profunda, lo que significa que cualquier cambio realizado en la variable original no se reflejará en la copia, y viceversa. Por ejemplo:

```python3
import copy

original_list = [1, 2, 3]
copy_list = copy.deepcopy(original_list)  # Deep copy
original_list[0] = 4
print(copy_list)  # Output: [1, 2, 3]
```

Es importante utilizar el método apropiado para copiar variables con el fin de evitar comportamientos inesperados en tu código.

### Verificar si una Variable está Definida o no

Puedes usar el operador `in` para verificar si una variable ha sido definida o no.

Aquí tienes un ejemplo:

```python3
if 'my_variable' in locals() or 'my_variable' in globals():
    print('my_variable is defined')
else:
    print('my_variable is not defined')
```

Este código verifica si la variable `my_variable` está definida en el espacio de nombres local o global. Si está definida, el código imprimirá `'my_variable is defined'`, de lo contrario imprimirá `'my_variable is not defined'`.

Nota que si la variable ha sido definida pero tiene un valor de `None`, este método aún la considerará como definida. Si quieres verificar específicamente por un valor no-`None`, puedes modificar el código de esta manera:

```python3
if 'my_variable' in locals() and locals()['my_variable'] is not None or 'my_variable' in globals() and globals()['my_variable'] is not None:
    print('my_variable is defined and has a non-None value')
else:
    print('my_variable is not defined or has a value of None')
```

Este código verifica tanto que la variable esté definida como que tenga un valor no-`None`. Si se cumplen ambas condiciones, imprimirá `'my_variable is defined and has a non-None value'`, de lo contrario imprimirá `'my_variable is not defined or has a value of None'`.

### Verificar si una Variable está Vacía

En Python, hay varias formas de comprobar si una variable está vacía:

- Usando la sentencia `if` con el nombre de la variable:

```python
if my_variable:
    # do something
    pass
else:
    # the variable is empty
    pass
```

Si `my_variable` está vacía o se evalúa como `False`, el bloque `else` se ejecutará.

- Usando el operador `not` con el nombre de la variable:

```python
if not my_variable:
    # the variable is empty
    pass
else:
    # do something
    pass
```

Si `my_variable` está vacía o se evalúa como `False`, se ejecutará el bloque `if`.

- Usando la función integrada `len()`:

```python
if len(my_variable) == 0:
    # the variable is empty
    pass
else:
    # do something
    pass
```

Si `my_variable` tiene una longitud de 0, se considera vacía.

- Usando el operador `is` con `None`:

```python
if my_variable is None:
    # the variable is empty
    pass
else:
    # do something
    pass
```

Si `my_variable` es igual a `None`, se considera vacía. Sin embargo, es importante notar que `None` es un valor específico en Python y no es lo mismo que una cadena vacía, una lista o otros tipos de datos.

### Obteniendo el Nombre de una Variable

Las variables son simplemente nombres que hacen referencia a objetos en memoria. En Python, puedes obtener el nombre de una variable usando las funciones `locals()` o `globals()`, dependiendo de si la variable está en el espacio de nombres local o global.

Aquí hay un ejemplo:

```python3
x = 42
var_name = [k for k,v in locals().items() if v is x][0]
print(var_name)
```

Este código asigna el valor `42` a la variable `x`. Luego utiliza una comprensión de lista para iterar sobre todos los elementos en el espacio de nombres local y encontrar el nombre de variable que se refiere al objeto con el valor de `x`. Finalmente, imprime ese nombre de variable, que en este caso es `x`.

Cabe destacar que este enfoque asume que la variable tiene un valor único en el espacio de nombres, lo que podría no ser siempre el caso. Además, generalmente no se recomienda depender de los nombres de las variables en la lógica de tu código, ya que puede hacer que tu código sea más frágil y difícil de refactorizar.

### Verificar si una Variable Existe

Puedes verificar si una variable existe en Python usando la palabra clave `in` junto con la función `locals()` o `globals()`. Aquí hay un ejemplo:

```python3
if 'my_variable' in locals():
    print("my_variable exists in the local scope.")

if 'my_variable' in globals():
    print("my_variable exists in the global scope.")
```

En el ejemplo anterior, comprobamos si una variable llamada `my_variable` existe en el ámbito local o global utilizando la palabra clave `in` con la función `locals()` o `globals()`, respectivamente. Si la variable existe, imprimimos un mensaje indicando que existe en el ámbito especificado.

Note que la verificación de la existencia de una variable utilizando la palabra clave `in` y la función `locals()` o `globals()` solo funcionará para variables que ya hayan sido definidas en el programa. Si no está seguro de si una variable ha sido definida o no, puede utilizar un bloque `try`-`except` para capturar una excepción `NameError` que se generaría si la variable no existe. Aquí hay un ejemplo:

```python3
try:
    my_variable
    print("my_variable exists.")
except NameError:
    print("my_variable does not exist.")
```

En este ejemplo, intentamos acceder a la variable `my_variable`, y si no existe, se lanza una excepción `NameError`. Capturamos la excepción usando el bloque except y imprimimos un mensaje indicando que la variable no existe.
